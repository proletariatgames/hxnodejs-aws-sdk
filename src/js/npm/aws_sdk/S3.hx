package js.npm.aws_sdk;
import js.node.events.EventEmitter;
#if haxe4
import js.lib.Error;
#else
import js.Error;
#end

@:jsRequire("aws-sdk","S3")
extern class S3 extends Service {
  /**
    In order to ensure that the AWS object uses this specific API, you can construct the object by passing the
    apiVersion option to the constructor

    Version:
      2006-03-01
   **/
  @:overload(function (options:Dynamic):Void {})
  function new():Void;

  /**
    Aborts a multipart upload.To verify that all parts have been removed, so you don't get charged for the part storage,
    you should call the List Parts operation and ensure the parts list is empty.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function abortMultipartUpload(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Completes a multipart upload by assembling previously uploaded parts.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function completeMultipartUpload(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Creates a copy of an object that is already stored in Amazon S3.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function copyObject(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Creates a new bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function createBucket(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Initiates a multipart upload and returns an upload ID.Note: After you initiate multipart upload and upload one or
    more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the
    uploaded parts.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function createMultipartUpload(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Deletes the bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function deleteBucket(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Deletes the cors configuration information set for the bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function deleteBucketCors(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Deletes the lifecycle configuration from the bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function deleteBucketLifecycle(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Deletes the policy from the bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function deleteBucketPolicy(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Deletes the replication configuration from the bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function deleteBucketReplication(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Deletes the tags from the bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function deleteBucketTagging(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    This operation removes the website configuration from the bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function deleteBucketWebsite(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Removes the null version (if there is one) of an object and inserts a delete marker, which becomes the latest
    version of the object.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function deleteObject(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    This operation enables you to delete multiple objects from a bucket using a single HTTP request.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function deleteObjects(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the accelerate configuration of a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketAccelerateConfiguration(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Gets the access control policy for the bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketAcl(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the cors configuration for the bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketCors(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Deprecated, see the GetBucketLifecycleConfiguration operation.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketLifecycle(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the lifecycle configuration information set on the bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketLifecycleConfiguration(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the region the bucket resides in.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketLocation(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the logging status of a bucket and the permissions users have to view and modify that status.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketLogging(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Deprecated, see the GetBucketNotificationConfiguration operation.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketNotification(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the notification configuration of a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketNotificationConfiguration(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the policy of a specified bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketPolicy(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Deprecated, see the GetBucketReplicationConfiguration operation.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketReplication(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the request payment configuration of a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketRequestPayment(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the tag set associated with the bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketTagging(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the versioning state of a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketVersioning(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the website configuration for a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getBucketWebsite(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Retrieves objects from Amazon S3.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  @:overload(function (params:Dynamic):Request {})
  public function getObject(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns the access control list (ACL) of an object.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getObjectAcl(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Return torrent files from a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function getObjectTorrent(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  // /**
  //   Get a pre-signed URL for a given operation name.
  //  **/
  // @:overload(function ():Request {})
  // @:overload(function (callback:Error->Dynamic->Void):Request {})
  // public function getSignedUrl(params:Dynamic, callback:Error->Dynamic->Void) : String;

  /**
    This operation is useful to determine if a bucket exists and you have permission to access it.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function headBucket(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    The HEAD operation retrieves metadata from an object without returning the object itself.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function headObject(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
   **/
  // public function isValidAccelerateOperation(operation) : void;

  /**
    Returns a list of all buckets owned by the authenticated sender of the request.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function listBuckets(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    This operation lists in-progress multipart uploads.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function listMultipartUploads(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns some or all (up to 1000) of the objects in a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  @:overload(function (params:Dynamic):Request {})
  public function listObjects(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns some or all (up to 1000) of the objects in a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function listObjectsV2(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Returns metadata about all of the versions of objects in a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function listObjectVersions(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Lists the parts that have been uploaded for a specific multipart upload.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function listParts(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
   **/
  // public function noPresignedContentLength(request) : void;

  /**
    Sets the accelerate configuration of an existing bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function putBucketAccelerateConfiguration(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Sets the permissions on a bucket using access control lists (ACL).
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function putBucketAcl(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Sets the cors configuration for a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function putBucketCors(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Deprecated, see the PutBucketLifecycleConfiguration operation.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function putBucketLifecycle(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Sets lifecycle configuration for your bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function putBucketLifecycleConfiguration(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Set the logging parameters for a bucket and to specify permissions for who can view and modify the logging
    parameters.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function putBucketLogging(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Deprecated, see the PutBucketNotificationConfiguraiton operation.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function putBucketNotification(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Enables notifications of specified events for a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function putBucketNotificationConfiguration(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Replaces a policy on a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function putBucketPolicy(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Creates a new replication configuration (or replaces an existing one, if present).
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function putBucketReplication(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Sets the request payment configuration for a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  public function putBucketRequestPayment(params:Dynamic, callback:Error->Dynamic->Void) : Request;

  /**
    Sets the tags for a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function putBucketTagging(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Sets the versioning state of an existing bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function putBucketVersioning(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Set the website configuration for a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function putBucketWebsite(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Adds an object to a bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function putObject(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    uses the acl subresource to set the access control list (ACL) permissions for an object that already exists in a
    bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function putObjectAcl(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Restores an archived copy of an object back into Amazon S3.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function restoreObject(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Uploads an arbitrarily sized buffer, blob, or stream, using intelligent concurrent handling of parts if the payload
    is large enough.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  @:overload(function (params:Dynamic, callback:js.Error->Dynamic->Void):Request {})
  public function upload(params:Dynamic, options:Dynamic, callback:js.Error->Dynamic->Void) : S3ManagedUpload;

  /**
    Uploads a part in a multipart upload.Note: After you initiate multipart upload and upload one or more parts, you
    must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function uploadPart(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Uploads a part by copying data from an existing object as data source.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function uploadPartCopy(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;
}

@:enum abstract ManagedUploadEvent<T : haxe.Constraints.Function>(Event<T>) to Event<T> {
  var HttpUploadProgress : ManagedUploadEvent<Dynamic->Void> = 'httpUploadProgress';
}

extern class S3ManagedUpload extends js.node.events.EventEmitter<S3ManagedUpload> {
  public function new(options:Dynamic);

  static var maxTotalParts(default, null):Float;
  static var minPartsSize(default, null):Float;

  /**
    Aborts a managed upload, including all concurrent upload requests.
   **/
  function abort():Void;

  /**
    Initiates the managed upload for the payload
   **/
  function send(callback:js.Error->Dynamic->Void):Void;
}
