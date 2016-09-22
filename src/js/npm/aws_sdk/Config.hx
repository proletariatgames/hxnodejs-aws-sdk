package js.npm.aws_sdk;
import haxe.extern.EitherType;
import haxe.DynamicAccess;

@:jsRequire("aws-sdk","Config")
extern class Config {
  /**
     whether to compute checksums for payload bodies when the service accepts it (currently supported in S3 only)
   **/
  var computeChecksums:Bool;

  /**
     whether types are converted when parsing response data. Currently only supported for JSON based services. Turning
     this off may improve performance on large response payloads. Defaults to true.
   **/
  var convertResponseTypes:Bool;

  /**
     whether to apply a clock skew correction and retry requests that fail because of an skewed client clock. Defaults
     to false.
   **/
  var correctClockSkew:Bool;

  /**
     the AWS credentials to sign requests with. You can either specify this object, or specify the accessKeyId and
     secretAccessKey options directly.
   **/
  // var credentials:Credentials;

  var httpOptions:{
    /**
      the URL to proxy requests through
     **/
    var proxy:String;

    /**
      the Agent object to perform HTTP requests with. Used for connection pooling. Defaults to the global agent
      (http.globalAgent) for non-SSL connections. Note that for SSL connections, a special Agent object is used in order
      to enable peer certificate verification. This feature is only available in the Node.js environment.
     **/
    var agent:js.node.http.Agent;
    /**
      Sets the socket to timeout after timeout milliseconds of inactivity on the socket. Defaults to two minutes (120000).
     **/
    var timeout:Int;
    /**
      Whether the SDK will send asynchronous HTTP requests. Used in the browser environment only. Set to false to send
      requests synchronously. Defaults to true (async on).
     **/
    var xhrAsync:Bool;
    /**
      Sets the "withCredentials" property of an XMLHttpRequest object. Used in the browser environment only. Defaults to
      false.
     **/
    var xhrWithCredentials:Bool;
  };

  /**
     an object that responds to .write() (like a stream) or .log() (like the console object) in order to log information
     about requests
   **/
  var logger:{
    log:Dynamic->Void,
    write:Dynamic->Void
  };

  /**
     the maximum amount of redirects to follow with a request. See maxRedirects for more information.
   **/
  var maxRedirects:Int;

  /**
     the maximum amount of retries to attempt with a request. See maxRetries for more information.
   **/
  var maxRetries:Int;

  /**
     whether input parameters should be validated against the operation description before sending the request. Defaults
     to true. Pass a map to enable any of the following specific validation features:
   **/
  var paramValidation:EitherType<Bool, {
    /**
      Validates that a value meets the min constraint. This is enabled by default when paramValidation is set to true.
     **/
    var min:Bool;

    /**
      Validates that a value meets the max constraint.
     **/
    @:optional var max:Bool;

    /**
      Validates that a string value matches a regular expression.
     **/
    @:optional var pattern:Bool;

    /**
      Validates that a string value matches one of the allowable enum values.
     **/
    // invalid haxe identifier
    // var enum:Bool;
  }>;

  /**
     A set of options to configure the retry delay on retryable errors. Currently supported options are:
   **/
  var retryDelayOptions:{
    /**
      The base number of milliseconds to use in the exponential backoff for operation retries. Defaults to 100 ms.
     **/
    var base:Int;
    /**
      A custom function that accepts a retry count and returns the amount of time to delay in milliseconds. The base
      option will be ignored if this option is supplied.
     **/
    @:optional var customBackoff:Int->Int;
  };

  /**
     the region to send service requests to. See region for more information.
   **/
  var region:String;

  /**
     whether the provided endpoint addresses an individual bucket (false if it addresses the root API endpoint). Note
     that setting this configuration option requires an endpoint to be provided explicitly to the service constructor.
   **/
  var s3BucketEndpoint:Bool;

  /**
     the signature version to sign requests with (overriding the API configuration). Possible values are: 'v2', 'v3',
     'v4'.
   **/
  var signatureVersion:String;

  /**
     whether the signature to sign requests with (overriding the API configuration) is cached. Only applies to the
     signature version 'v4'. Defaults to true.
   **/
  var signatureCache:Bool;

  /**
     an offset value in milliseconds to apply to all signing times. Use this to compensate for clock skew when your
     system may be out of sync with the service time. Note that this configuration option can only be applied to the
     global AWS.config object and cannot be overridden in service-specific configuration. Defaults to 0 milliseconds.
   **/
  var systemClockOffset:Float;

  /**
     whether to enable SSL for requests.
   **/
  var sslEnabled:Bool;

  /**
     whether to force path style URLs for S3 objects.
   **/
  var s3ForcePathStyle:Bool;

  public function new(config:ConfigObj);

  public function getCredentials(callback:js.Error->Null<Credentials>->Void):Void;
}

typedef ConfigObj = {
  /**
     your AWS access key ID.
   **/
  @:optional var accessKeyId:String;

  /**
     your AWS secret access key.
   **/
  @:optional var secretAccessKey:String;

  /**
     the optional AWS session token to sign requests with.
   **/
  @:optional var sessionToken:Credentials;

  /**
     the AWS credentials to sign requests with. You can either specify this object, or specify the accessKeyId and
     secretAccessKey options directly.
   **/
  @:optional var credentials:Credentials;

  /**
     the provider chain used to resolve credentials if no static credentials property is set.
   **/
  // @:optional var credentialProvider:CredentialProviderChain;

  /**
     the region to send service requests to. See region for more information.
   **/
  var region:String;

  /**
     the maximum amount of retries to attempt with a request. See maxRetries for more information.
   **/
  @:optional var maxRetries:Int;

  /**
     the maximum amount of redirects to follow with a request. See maxRedirects for more information.
   **/
  @:optional var maxRedirects:Int;

  /**
     whether to enable SSL for requests.
   **/
  @:optional var sslEnabled:Bool;

  /**
     whether input parameters should be validated against the operation description before sending the request. Defaults
     to true. Pass a map to enable any of the following specific validation features:
   **/
  @:optional var paramValidation:EitherType<Bool, {
    /**
      Validates that a value meets the min constraint. This is enabled by default when paramValidation is set to true.
     **/
    var min:Bool;

    /**
      Validates that a value meets the max constraint.
     **/
    @:optional var max:Bool;

    /**
      Validates that a string value matches a regular expression.
     **/
    @:optional var pattern:Bool;

    /**
      Validates that a string value matches one of the allowable enum values.
     **/
    // invalid haxe identifier
    // var enum:Bool;
  }>;

  /**
     whether to compute checksums for payload bodies when the service accepts it (currently supported in S3 only)
   **/
  @:optional var computeChecksums:Bool;

  /**
     whether types are converted when parsing response data. Currently only supported for JSON based services. Turning
     this off may improve performance on large response payloads. Defaults to true.
   **/
  @:optional var convertResponseTypes:Bool;

  /**
     whether to apply a clock skew correction and retry requests that fail because of an skewed client clock. Defaults
     to false.
   **/
  @:optional var correctClockSkew:Bool;

  /**
     whether to force path style URLs for S3 objects.
   **/
  @:optional var s3ForcePathStyle:Bool;

  /**
     whether the provided endpoint addresses an individual bucket (false if it addresses the root API endpoint). Note
     that setting this configuration option requires an endpoint to be provided explicitly to the service constructor.
   **/
  @:optional var s3BucketEndpoint:Bool;

  /**
     A set of options to configure the retry delay on retryable errors. Currently supported options are:
   **/
  @:optional var retryDelayOptions:{
    /**
      The base number of milliseconds to use in the exponential backoff for operation retries. Defaults to 100 ms.
     **/
    var base:Int;
    /**
      A custom function that accepts a retry count and returns the amount of time to delay in milliseconds. The base
      option will be ignored if this option is supplied.
     **/
    @:optional var customBackoff:Int->Int;
  };

  /**
    A set of options to pass to the low-level HTTP request. Currently supported options are:
   **/
  @:optional var httpOptions:{
    /**
      the URL to proxy requests through
     **/
    var proxy:String;

    /**
      the Agent object to perform HTTP requests with. Used for connection pooling. Defaults to the global agent
      (http.globalAgent) for non-SSL connections. Note that for SSL connections, a special Agent object is used in order
      to enable peer certificate verification. This feature is only available in the Node.js environment.
     **/
    @:optional var agent:js.node.http.Agent;
    /**
      Sets the socket to timeout after timeout milliseconds of inactivity on the socket. Defaults to two minutes (120000).
     **/
    @:optional var timeout:Int;
    /**
      Whether the SDK will send asynchronous HTTP requests. Used in the browser environment only. Set to false to send
      requests synchronously. Defaults to true (async on).
     **/
    @:optional var xhrAsync:Bool;
    /**
      Sets the "withCredentials" property of an XMLHttpRequest object. Used in the browser environment only. Defaults to
      false.
     **/
    @:optional var xhrWithCredentials:Bool;
  };

  /**
     a String in YYYY-MM-DD format (or a date) that represents the latest possible API version that can be used in all
     services (unless overridden by apiVersions). Specify 'latest' to use the latest possible version.
   **/
  @:optional var apiVersion:EitherType<String, Date>;

  /**
     a map of service identifiers (the lowercase service class name) with the API version to use when instantiating a
     service. Specify 'latest' for each individual that can use the latest available version.
   **/
  @:optional var apiVersions:DynamicAccess<EitherType<String,Date>>;

  /**
     an object that responds to .write() (like a stream) or .log() (like the console object) in order to log information
     about requests
   **/
  @:optional var logger:{
    log:Dynamic->Void,
    write:Dynamic->Void
  };

  /**
     an offset value in milliseconds to apply to all signing times. Use this to compensate for clock skew when your
     system may be out of sync with the service time. Note that this configuration option can only be applied to the
     global AWS.config object and cannot be overridden in service-specific configuration. Defaults to 0 milliseconds.
   **/
  @:optional var systemClockOffset:Float;

  /**
     the signature version to sign requests with (overriding the API configuration). Possible values are: 'v2', 'v3',
     'v4'.
   **/
  @:optional var signatureVersion:String;

  /**
     whether the signature to sign requests with (overriding the API configuration) is cached. Only applies to the
     signature version 'v4'. Defaults to true.
   **/
  @:optional var signatureCache:Bool;
}
