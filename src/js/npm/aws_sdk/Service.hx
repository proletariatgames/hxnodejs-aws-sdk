package js.npm.aws_sdk;
#if haxe4
import js.lib.Error;
#else
import js.Error;
#end

@:jsRequire("aws-sdk","Service")
extern class Service {
  var apiVersions(default, null):Array<String>;

  /**
    Defines a new Service class using a service identifier and list of versions including an optional set of features
    (functions) to apply to the class prototype.
   **/
  function defineService(serviceIdentifier:String, versions:Array<String>, features:Dynamic):Class<Service>;

  /**
    Calls an operation on a service with the given input parameters.
   **/
  function makeRequest(operation:String, params:Dynamic, callback:Error->Dynamic->Void):Void;

  /**
    Calls an operation on a service with the given input parameters, without any authentication data.
   **/
  function makeUnauthenticatedRequest(operation:String, params:Dynamic, callback:Error->Dynamic->Void):Void;

  /**
    Override this method to setup any custom request listeners for each new request to the service.
   **/
  function setupRequestListeners():Void;

  /**
    Waits for a given state.
   **/
  @:overload(function ():Request {})
  @:overload(function (state:String, callback:Error->Dynamic->Void):Request {})
  function waitFor(state:String, params:Dynamic, callback:Error->Dynamic->Void):Request;
}
