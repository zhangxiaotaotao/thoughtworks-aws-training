# thoughtworks-aws-training-Lambda

## Question
### KMS 是什么服务？能解决什么问题？
> AWS KMS 全称为 Key Management Service，中文直译过来为密钥管理服务，核心服务是「密钥管理」。
> 
>> 所以说KMS 就是一个管理密钥的服务。
> 
> 为什么要用KMS呢，通过KMS的能力就可以知道，我们使用KMS来管理自己的密钥。我们不再需要费尽心思的管理自己的密钥，
> 聚焦于业务本身。
 
### 可以对 KMS key 进行哪些操作？
> 创建、查看、启用、禁用、计划删除、取消删除用户主密钥


### How to use

#### create kms key
```shell
aws kms create-key
```
result
```shell
{
    "KeyMetadata": {
        "AWSAccountId": "834146030470",
        "KeyId": "a32d961b-5fd2-428e-b434-2c32236a42d0",
        "Arn": "arn:aws:kms:us-east-2:834146030470:key/a32d961b-5fd2-428e-b434-2c32236a42d0",
        "CreationDate": 1623392001.935,
        "Enabled": true,
        "Description": "",
        "KeyUsage": "ENCRYPT_DECRYPT",
        "KeyState": "Enabled",
        "Origin": "AWS_KMS",
        "KeyManager": "CUSTOMER",
        "CustomerMasterKeySpec": "SYMMETRIC_DEFAULT",
        "EncryptionAlgorithms": [
            "SYMMETRIC_DEFAULT"
        ]
    }
}

```

#### 创建alias,可以作为keyid的替身使用

```shell
aws kms create-alias --alias-name "alias/zjt_test_kms_alias" --target-key-id a32d961b-5fd2-428e-b434-2c32236a42d0
```

#### 使用key去加密文件。加密后的输出为base64编码后的密文，可以进一步解码为二进制文件。
```shell
aws kms encrypt \
    --key-id a32d961b-5fd2-428e-b434-2c32236a42d0 \
    --plaintext fileb://sourceText \
    --output text \
    --query CiphertextBlob | base64 \
    --decode > encryptResult01
```

```shell
aws kms encrypt \
    --key-id a32d961b-5fd2-428e-b434-2c32236a42d0 \
    --plaintext fileb://sourceText \
    --output text \
    --query CiphertextBlob | base64 \
    --decode > encryptResult02
```


#### 
```shell
aws kms decrypt \
    --ciphertext-blob fileb://encryptResult01 \
    --key-id a32d961b-5fd2-428e-b434-2c32236a42d0 \
    --output text \
    --query Plaintext | base64 \
    --decode > decryptResult01
```

```shell
aws kms decrypt \
    --ciphertext-blob fileb://encryptResult01 \
    --key-id a32d961b-5fd2-428e-b434-2c32236a42d0 \
    --output text \
    --query Plaintext | base64 \
    --decode > decryptResult02
```

#### 不带base64加解密
```shell
aws kms encrypt \
    --key-id a32d961b-5fd2-428e-b434-2c32236a42d0 \
    --plaintext fileb://sourceText \
    --output text \
    --query CiphertextBlob > encryptResultNobase64
```

```shell
aws kms decrypt \
    --ciphertext-blob fileb://<(base64 --decode encryptResultNobase64) \
    --key-id a32d961b-5fd2-428e-b434-2c32236a42d0 \
    --output text \
    --query Plaintext > decryptResultNobase64
```

```shell
base64 --decode decryptResultNobase64
```


#### alias
```shell
aws kms encrypt \
    --key-id alias/zjt_test_kms_alias \
    --plaintext fileb://sourceText \
    --output text \
    --query CiphertextBlob | base64 \
    --decode > encryptResult01
```
```shell
aws kms decrypt \
    --ciphertext-blob fileb://encryptResult01 \
    --key-id alias/zjt_test_kms_alias \
    --output text \
    --query Plaintext | base64 \
    --decode > decryptResult01
```


#### cloudformation
```shell
aws kms encrypt \
    --key-id 7fc8243a-0713-41d8-b61f-adedbdfb3466 \
    --plaintext fileb://sourceText \
    --output text \
    --encryption-algorithm RSAES_OAEP_SHA_1 \
    --query CiphertextBlob > encryptResultNobase64
```

```shell
aws kms decrypt \
    --ciphertext-blob fileb://<(base64 --decode encryptResultNobase64) \
    --key-id 7fc8243a-0713-41d8-b61f-adedbdfb3466 \
    --output text \
    --encryption-algorithm RSAES_OAEP_SHA_1 \
    --query Plaintext > decryptResultNobase64
```

```shell
base64 --decode decryptResultNobase64
```

### 如何进行 Key rotation？

### AWS 如何进行自动 Key rotation？

### 自动  Key rotation 之后收费有什么变化？
