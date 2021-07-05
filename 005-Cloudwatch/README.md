# thoughtworks-aws-training-CloudWatch

## Question
### CloudWatch 是什么？我们为什么要使用CloudWatch？
> Amazon CloudWatch 是一项针对 AWS 云资源和在 AWS 上运行的应用程序进行监控的服务。
> 
>> 使用 Amazon CloudWatch 可以收集和跟踪各项指标、收集和监控日志文件、设置警报以及自动应对 AWS 资源的更改。Amazon CloudWatch 可以监控各种 AWS 资源，例如 Amazon EC2 实例、Amazon DynamoDB 表、Amazon RDS 数据库实例、应用程序和服务生成的自定义指标以及应用程序生成的所有日志文件。您可通过使用 Amazon CloudWatch 全面地了解资源使用率、应用程序性能和运行状况。使用这些分析结果，您可以及时做出反应，保证应用程序顺畅运行。
> 
>> CloudWatch 为您提供相关数据和切实见解，以监控应用程序、响应系统范围的性能变化、优化资源利用率，并在统一视图中查看运营状况。CloudWatch 以日志、指标和事件的形式收集监控和运营数据，让您能够在统一查看在 AWS 和本地服务器上运行的资源、应用程序和服务。您可以使用 CloudWatch 检测环境中的异常行为、设置警报、并排显示日志和指标、执行自动化操作、排查问题，以及发现可确保应用程序
 
### CloudWatch中的metrics是什么？包括哪些种类？我们可以如何使用metrics？
> https://docs.aws.amazon.com/zh_cn/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
> 
> CloudWatch Events 由三个主要组件所构成：

>> 事件（Event）
>>> 表现为小型的 JSON blob 文件，可以通过四种不同方式生成：
>>>> 
>>>> 当某个服务的状态变更时产生，例如某个服务从挂起状态变更为运行状态。
>>>> 
>>>> 通过 API 调用或控制台的登录，可以由 CloudTrail 生成 CloudWatch Events 中的事件。
>>>> 
>>>> 自定义代码可以向 CloudWatch Events 发布特定于应用程序的事件。
>>>> 
>>>> 通过预定的、类 Cron 风格的作业生成事件。
>>>> 
>> 规则（Rule）
>>> 将对所传入的事件进行评估，以确定是否触及了某个阀值、或是发生了越界的情形。一旦结果为真，该事件就会被路由至某个目标以进行处理。
>>>
>> 目标（Target）
>>> 将对由规则所传入的事件进行处理。一个规则可以调用多个目标，而用于表现某事件的 JSON 也可以在传递给目标之前进行预处理。在 CloudWatch Events 正式发布时，亚马逊将支持四种不同类型的目标：
>>>> 内置目标
>>>> 
>>>> Lambda 函数
>>>> 
>>>> Kinesis 流
>>>> 
>>>> SNS 主题


### 相关概念理解：metrics，periods，namespace，dimensions，statistics。
https://docs.aws.amazon.com/zh_cn/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
