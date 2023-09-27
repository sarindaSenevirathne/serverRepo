import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9091) {

  
    resource function post \*(http:Request request) returns json|error {
       return request.getJsonPayload();
    }
}
