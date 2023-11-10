import ballerina/http;
import ballerina/lang.runtime;

configurable decimal sleepTime = ?;

service / on new http:Listener(9091) {

  
    resource function post resourceEndpoint(@http:Payload json jsonPayload) returns json|error {

        runtime:sleep(sleepTime);
        return jsonPayload;
    }
}
