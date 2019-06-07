// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Backup
public enum BackupErrorType: AWSErrorType {
    case alreadyExistsException(message: String?)
    case dependencyFailureException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidRequestException(message: String?)
    case limitExceededException(message: String?)
    case missingParameterValueException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
}

extension BackupErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "DependencyFailureException":
            self = .dependencyFailureException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MissingParameterValueException":
            self = .missingParameterValueException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        default:
            return nil
        }
    }
}