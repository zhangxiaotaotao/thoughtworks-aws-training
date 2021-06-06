# thoughtworks-aws-training-Lambda

## Question
### What is serverless
> AWS Lambda 是一种无服务器的计算服务，让您无需预置或管理服务器、创建可感知工作负载的集群扩展逻辑、维护事件集成或管理运行时，即可运行代码。借助 Lambda，您几乎可以为任何类型的应用程序或后端服务运行代码，而且完全无需管理。只需将您的代码以 ZIP 文件或容器映像的形式上传，Lambda 便会自动、精确地分配计算执行能力，并根据传入的请求或事件运行您的代码，以适应任何规模的流量。您可以将您的代码设置为自动从 200 多个 AWS 服务和 SaaS 应用程序触发，或者直接从任何 Web 或移动应用程序调用。您可以使用自己喜欢的语言（Node.js、Python、Go、Java 等）编写 Lambda 函数，并使用无服务器和容器工具（例如 AWS SAM 或 Docker CLI）来构建、测试和部署您的函数。

### How to run
- run `aws configure` and input the
  ```
  AWS Access Key ID [****************OE54]: AKIA4ENX2KODAU5MOE54
  AWS Secret Access Key [****************hIag]: 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
  Default region name [us-east-2]: us-east-2
  Default output format [json]: json
  ```

- deploy cmd
```shell
    ./auto/deploy_stack
```

- undeploy cmd
```shell
    ./auto/deploy_stack
```
