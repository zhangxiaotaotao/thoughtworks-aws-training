# thoughtworks-aws-training-k8s

## 什么是K8S
Kubernetes(k8s)就是按照用户的期望的样子来运行部署应用程序。

## K8S基本概念
 - 在 Kuberneters 中， Service (服务)是分布式集群架构的核心，一个 Service对象拥有如下关键特征。
   - 拥有一个唯一指定的名字 (比如mysql-server)。
   - 拥有一个虚拟IP (ClusterIP、ServiceIP或VIP)和端口号。
   - 能够提供某种远程服务能力。
   - 被映射到了提供这种服务能力的 一组容器应用上。

## K8S架构
![image](https://user-images.githubusercontent.com/25293696/118003404-22bb9480-b37b-11eb-9a60-ad2d7fd07e07.png)
![image](https://user-images.githubusercontent.com/25293696/118003437-2b13cf80-b37b-11eb-8214-eca5b629a981.png)


## Minikube介绍
Minikube 是一种可以让您在本地轻松运行 Kubernetes 的工具。Minikube 在笔记本电脑上的虚拟机（VM）中运行单节点 Kubernetes 集群，供那些希望尝试 Kubernetes 或进行日常开发的用户使用。

### 安装步骤
`brew install kubectl`
![image](https://user-images.githubusercontent.com/25293696/117998074-213b9d80-b376-11eb-9e7b-b2ed75d35434.png)
`minikube dashboard`
![image](https://user-images.githubusercontent.com/25293696/117998466-842d3480-b376-11eb-9444-12302fb450a5.png)
`docker build -t hello-node:v1 .`
`eval $(minikube docker-env)`
`docker build -t hello-node:v1 .`
`kubectl run hello-node --image=hello-node:v1 --port=8080`
![image](https://user-images.githubusercontent.com/25293696/118007157-78de0700-b37e-11eb-895d-16db3397d873.png)
`kubectl get pod`
![image](https://user-images.githubusercontent.com/25293696/118007234-8abfaa00-b37e-11eb-91c0-c1138a7b1f10.png)
`kubectl expose pod hello-node --type=LoadBalancer`
![image](https://user-images.githubusercontent.com/25293696/118007457-bb9fdf00-b37e-11eb-8d4a-acf0cbc49708.png)
` kubectl get services`
![image](https://user-images.githubusercontent.com/25293696/118007507-c8243780-b37e-11eb-83b2-dba0e6807d8f.png)
`minikube service hello-node`
![image](https://user-images.githubusercontent.com/25293696/118007624-e12ce880-b37e-11eb-9960-fba0d5a99de4.png)
![image](https://user-images.githubusercontent.com/25293696/118007667-ec801400-b37e-11eb-85fe-64760c5eafc1.png)
