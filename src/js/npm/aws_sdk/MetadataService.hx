package js.npm.aws_sdk;

@:jsRequire("aws-sdk","MetadataService")
extern class MetadataService extends Service {
  /**
   * Creates a new MetadataService object with a given set of options.
   *
   * @option options host [String] the hostname of the instance metadata
   *   service
   * @option options httpOptions [map] a map of options to pass to the
   *   underlying HTTP request:
   *
   *   * **timeout** (Number) &mdash; a timeout value in milliseconds to wait
   *     before aborting the connection. Set to 0 for no timeout.
   */
  @:overload(function ():Void {})
  function new(options:Dynamic):Void;

  /**
   * Sends a request to the instance metadata service for a given resource.
   *
   * @param path [String] the path of the resource to get
   * @callback callback function(err, data)
   *   Called when a response is available from the service.
   *   @param err [Error, null] if an error occurred, this value will be set
   *   @param data [String, null] if the request was successful, the body of
   *     the response
   */
  @:overload(function (callback:js.Error->Dynamic->Void):Void {})
  function request(path:String, callback:js.Error->Dynamic->Void):Void;
}
