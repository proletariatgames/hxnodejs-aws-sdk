package js.npm.aws_sdk;
import js.node.events.EventEmitter;

@:enum abstract RequestEvent<T:haxe.Constraints.Function>(Event<T>) to Event<T> {
  // Request Building Events

  /**
    Triggered when a request is being validated.
   **/
  var Validate : RequestEvent<Dynamic->Void> = 'validate';
  /**
    Triggered when the request payload is being built.
   **/
  var Build : RequestEvent<Dynamic->Void> = 'build';
  /**
    Triggered when the request is being signed.
   **/
  var Sign : RequestEvent<Dynamic->Void> = 'sign';

  // Request Sending Events

  /**
    Triggered when the request is ready to be sent.
   **/
  var Send : RequestEvent<Dynamic->Void> = 'send';
  /**
    Triggered when a request failed and might need to be retried or redirected.
   **/
  var Retry : RequestEvent<Dynamic->Void> = 'retry';

  // Data Parsing Events

  /**
    Triggered on all non-2xx requests so that listeners can extract error details from the response body.
   **/
  var ExtractError : RequestEvent<Dynamic->Void> = 'extractError';
  /**
    Triggered in successful requests to allow listeners to de-serialize the response body into response.data.
   **/
  var ExtractData : RequestEvent<Dynamic->Void> = 'extractData';

  // Completion Events

  /**
    Triggered when the request completed successfully.
   **/
  var Success : RequestEvent<Dynamic->Void> = 'success';
  /**
    Triggered when an error occurs at any point during the request.
   **/
  var Error : RequestEvent<Dynamic->Void> = 'error';
  /**
    Triggered whenever a request cycle completes.
   **/
  var Complete : RequestEvent<Dynamic->Void> = 'complete';

  // HTTP Events

  /**
    Triggered when headers are sent by the remote server.
   **/
  var HttpHeaders : RequestEvent<Dynamic->Void> = 'httpHeaders';
  /**
    Triggered when data is sent by the remote server.
   **/
  var HttpData : RequestEvent<Dynamic->Void> = 'httpData';
  /**
    Triggered when the HTTP request has uploaded more data.
   **/
  var HttpUploadProgress : RequestEvent<Dynamic->Void> = 'httpUploadProgress';
  /**
    Triggered when the HTTP request has downloaded more data.
   **/
  var HttpDownloadProgress : RequestEvent<Dynamic->Void> = 'httpDownloadProgress';
  /**
    Triggered when the HTTP request failed.
   **/
  var HttpError : RequestEvent<Dynamic->Void> = 'httpError';
  /**
    Triggered when the server is finished sending data.
   **/
  var HttpDone : RequestEvent<Dynamic->Void> = 'httpDone';
}

@:jsRequire("aws-sdk","Request")
extern class Request extends EventEmitter<Request> {
  var startTime(default, null):Date;
  function new(service:Service, operation:String, params:Dynamic):Void;

  /**
    Aborts a request, emitting the error and complete events.
   **/
  function abort():Request;

  /**
    Converts the request object into a readable stream that can be read from or piped into a writable stream.
   **/
  function createReadStream():js.node.stream.Readable.IReadable;

  /**
    Enumerates over individual items of a request, paging the responses if necessary.
   **/
  // function eachItem(callback):Void;

  /**
    Iterates over each page of results given a pageable request, calling the provided callback with each page of data.
   **/
  @:overload(function(callback:js.lib.Error->Dynamic->(Void->Void)->Void):Void {})
  function eachPage(callback:js.lib.Error->Dynamic->Void):Void;

  /**
    Whether the operation can return multiple pages of response data.
   **/
  function isPageable():Bool;

  /**
    Sends the request object.
   **/
  @:overload(function():Void {})
  function send(callback:js.lib.Error->Dynamic->Void):Void;
}
