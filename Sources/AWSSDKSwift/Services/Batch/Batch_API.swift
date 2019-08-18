// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Batch enables you to run batch computing workloads on the AWS Cloud. Batch computing is a common way for developers, scientists, and engineers to access large amounts of compute resources, and AWS Batch removes the undifferentiated heavy lifting of configuring and managing the required infrastructure. AWS Batch will be familiar to users of traditional batch computing software. This service can efficiently provision resources in response to jobs submitted in order to eliminate capacity constraints, reduce compute costs, and deliver results quickly. As a fully managed service, AWS Batch enables developers, scientists, and engineers to run batch computing workloads of any scale. AWS Batch automatically provisions compute resources and optimizes the workload distribution based on the quantity and scale of the workloads. With AWS Batch, there is no need to install or manage batch computing software, which allows you to focus on analyzing results and solving problems. AWS Batch reduces operational complexities, saves time, and reduces costs, which makes it easy for developers, scientists, and engineers to run their batch jobs in the AWS Cloud.
*/
public struct Batch {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "batch",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-08-10",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [BatchErrorType.self]
        )
    }

    ///  Cancels a job in an AWS Batch job queue. Jobs that are in the SUBMITTED, PENDING, or RUNNABLE state are cancelled. Jobs that have progressed to STARTING or RUNNING are not cancelled (but the API operation still succeeds, even if no job is cancelled); these jobs must be terminated with the TerminateJob operation.
    public func cancelJob(_ input: CancelJobRequest) throws -> Future<CancelJobResponse> {
        return try client.send(operation: "CancelJob", path: "/v1/canceljob", httpMethod: "POST", input: input)
    }

    ///  Creates an AWS Batch compute environment. You can create MANAGED or UNMANAGED compute environments. In a managed compute environment, AWS Batch manages the capacity and instance types of the compute resources within the environment. This is based on the compute resource specification that you define or the launch template that you specify when you create the compute environment. You can choose to use Amazon EC2 On-Demand Instances or Spot Instances in your managed compute environment. You can optionally set a maximum price so that Spot Instances only launch when the Spot Instance price is below a specified percentage of the On-Demand price.  Multi-node parallel jobs are not supported on Spot Instances.  In an unmanaged compute environment, you can manage your own compute resources. This provides more compute resource configuration options, such as using a custom AMI, but you must ensure that your AMI meets the Amazon ECS container instance AMI specification. For more information, see Container Instance AMIs in the Amazon Elastic Container Service Developer Guide. After you have created your unmanaged compute environment, you can use the DescribeComputeEnvironments operation to find the Amazon ECS cluster that is associated with it. Then, manually launch your container instances into that Amazon ECS cluster. For more information, see Launching an Amazon ECS Container Instance in the Amazon Elastic Container Service Developer Guide.  AWS Batch does not upgrade the AMIs in a compute environment after it is created (for example, when a newer version of the Amazon ECS-optimized AMI is available). You are responsible for the management of the guest operating system (including updates and security patches) and any additional application software or utilities that you install on the compute resources. To use a new AMI for your AWS Batch jobs:   Create a new compute environment with the new AMI.   Add the compute environment to an existing job queue.   Remove the old compute environment from your job queue.   Delete the old compute environment.   
    public func createComputeEnvironment(_ input: CreateComputeEnvironmentRequest) throws -> Future<CreateComputeEnvironmentResponse> {
        return try client.send(operation: "CreateComputeEnvironment", path: "/v1/createcomputeenvironment", httpMethod: "POST", input: input)
    }

    ///  Creates an AWS Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments. You also set a priority to the job queue that determines the order in which the AWS Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.
    public func createJobQueue(_ input: CreateJobQueueRequest) throws -> Future<CreateJobQueueResponse> {
        return try client.send(operation: "CreateJobQueue", path: "/v1/createjobqueue", httpMethod: "POST", input: input)
    }

    ///  Deletes an AWS Batch compute environment. Before you can delete a compute environment, you must set its state to DISABLED with the UpdateComputeEnvironment API operation and disassociate it from any job queues with the UpdateJobQueue API operation.
    public func deleteComputeEnvironment(_ input: DeleteComputeEnvironmentRequest) throws -> Future<DeleteComputeEnvironmentResponse> {
        return try client.send(operation: "DeleteComputeEnvironment", path: "/v1/deletecomputeenvironment", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified job queue. You must first disable submissions for a queue with the UpdateJobQueue operation. All jobs in the queue are terminated when you delete a job queue. It is not necessary to disassociate compute environments from a queue before submitting a DeleteJobQueue request. 
    public func deleteJobQueue(_ input: DeleteJobQueueRequest) throws -> Future<DeleteJobQueueResponse> {
        return try client.send(operation: "DeleteJobQueue", path: "/v1/deletejobqueue", httpMethod: "POST", input: input)
    }

    ///  Deregisters an AWS Batch job definition.
    public func deregisterJobDefinition(_ input: DeregisterJobDefinitionRequest) throws -> Future<DeregisterJobDefinitionResponse> {
        return try client.send(operation: "DeregisterJobDefinition", path: "/v1/deregisterjobdefinition", httpMethod: "POST", input: input)
    }

    ///  Describes one or more of your compute environments. If you are using an unmanaged compute environment, you can use the DescribeComputeEnvironment operation to determine the ecsClusterArn that you should launch your Amazon ECS container instances into.
    public func describeComputeEnvironments(_ input: DescribeComputeEnvironmentsRequest) throws -> Future<DescribeComputeEnvironmentsResponse> {
        return try client.send(operation: "DescribeComputeEnvironments", path: "/v1/describecomputeenvironments", httpMethod: "POST", input: input)
    }

    ///  Describes a list of job definitions. You can specify a status (such as ACTIVE) to only return job definitions that match that status.
    public func describeJobDefinitions(_ input: DescribeJobDefinitionsRequest) throws -> Future<DescribeJobDefinitionsResponse> {
        return try client.send(operation: "DescribeJobDefinitions", path: "/v1/describejobdefinitions", httpMethod: "POST", input: input)
    }

    ///  Describes one or more of your job queues.
    public func describeJobQueues(_ input: DescribeJobQueuesRequest) throws -> Future<DescribeJobQueuesResponse> {
        return try client.send(operation: "DescribeJobQueues", path: "/v1/describejobqueues", httpMethod: "POST", input: input)
    }

    ///  Describes a list of AWS Batch jobs.
    public func describeJobs(_ input: DescribeJobsRequest) throws -> Future<DescribeJobsResponse> {
        return try client.send(operation: "DescribeJobs", path: "/v1/describejobs", httpMethod: "POST", input: input)
    }

    ///  Returns a list of AWS Batch jobs. You must specify only one of the following:   a job queue ID to return a list of jobs in that job queue   a multi-node parallel job ID to return a list of that job's nodes   an array job ID to return a list of that job's children   You can filter the results by job status with the jobStatus parameter. If you do not specify a status, only RUNNING jobs are returned.
    public func listJobs(_ input: ListJobsRequest) throws -> Future<ListJobsResponse> {
        return try client.send(operation: "ListJobs", path: "/v1/listjobs", httpMethod: "POST", input: input)
    }

    ///  Registers an AWS Batch job definition. 
    public func registerJobDefinition(_ input: RegisterJobDefinitionRequest) throws -> Future<RegisterJobDefinitionResponse> {
        return try client.send(operation: "RegisterJobDefinition", path: "/v1/registerjobdefinition", httpMethod: "POST", input: input)
    }

    ///  Submits an AWS Batch job from a job definition. Parameters specified during SubmitJob override parameters defined in the job definition. 
    public func submitJob(_ input: SubmitJobRequest) throws -> Future<SubmitJobResponse> {
        return try client.send(operation: "SubmitJob", path: "/v1/submitjob", httpMethod: "POST", input: input)
    }

    ///  Terminates a job in a job queue. Jobs that are in the STARTING or RUNNING state are terminated, which causes them to transition to FAILED. Jobs that have not progressed to the STARTING state are cancelled.
    public func terminateJob(_ input: TerminateJobRequest) throws -> Future<TerminateJobResponse> {
        return try client.send(operation: "TerminateJob", path: "/v1/terminatejob", httpMethod: "POST", input: input)
    }

    ///  Updates an AWS Batch compute environment.
    public func updateComputeEnvironment(_ input: UpdateComputeEnvironmentRequest) throws -> Future<UpdateComputeEnvironmentResponse> {
        return try client.send(operation: "UpdateComputeEnvironment", path: "/v1/updatecomputeenvironment", httpMethod: "POST", input: input)
    }

    ///  Updates a job queue.
    public func updateJobQueue(_ input: UpdateJobQueueRequest) throws -> Future<UpdateJobQueueResponse> {
        return try client.send(operation: "UpdateJobQueue", path: "/v1/updatejobqueue", httpMethod: "POST", input: input)
    }
}
