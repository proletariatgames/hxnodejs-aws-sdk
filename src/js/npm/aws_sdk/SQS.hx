package js.npm.aws_sdk;
import js.node.events.EventEmitter;

@:jsRequire("aws-sdk","SQS")
extern class SQS extends Service {
  @:overload(function(options:Dynamic):Void {})
  public function new();

  /**
    Adds a permission to a queue for a specific principal.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function addPermission(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Changes the visibility timeout of a specified message in a queue to a new value.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function changeMessageVisibility(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Changes the visibility timeout of multiple messages.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function changeMessageVisibilityBatch(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Creates a new queue, or returns the URL of an existing one.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function createQueue(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Deletes the specified message from the specified queue.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function deleteMessage(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Deletes up to ten messages from the specified queue.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function deleteMessageBatch(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Deletes the queue specified by the queue URL, regardless of whether the queue is empty.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function deleteQueue(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Gets attributes for the specified queue.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function getQueueAttributes(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Returns the URL of an existing queue.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function getQueueUrl(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Returns a list of your queues that have the RedrivePolicy queue attribute configured with a dead letter queue.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function listDeadLetterSourceQueues(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Returns a list of your queues.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function listQueues(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Deletes the messages in a queue specified by the queue URL.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function purgeQueue(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Retrieves one or more messages, with a maximum limit of 10 messages, from the specified queue.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function receiveMessage(params:{
    /**
      The URL of the Amazon SQS queue to take action on.
      Queue URLs are case-sensitive.
     **/
    @:optional var QueueUrl(default, null):String;


    /**
      A list of attributes that need to be returned along with each message. These attributes include:
        All - returns all values.
        ApproximateFirstReceiveTimestamp - returns the time when the message was first received from the queue (epoch
          time in milliseconds).
        ApproximateReceiveCount - returns the number of times a message has been received from the queue but not deleted.
        SenderId - returns the AWS account number (or the IP address, if anonymous access is allowed) of the sender.
        SentTimestamp - returns the time when the message was sent to the queue (epoch time in milliseconds).
        Any other valid special request parameters that are specified (such as ApproximateNumberOfMessages,
          ApproximateNumberOfMessagesDelayed, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, DelaySeconds,
          LastModifiedTimestamp, MaximumMessageSize, MessageRetentionPeriod, Policy, QueueArn,
          ReceiveMessageWaitTimeSeconds, RedrivePolicy, and VisibilityTimeout) will be ignored.
     **/
    @:optional var AttributeNames(default, null):Array<String>;

    /**
      The name of the message attribute, where N is the index. The message attribute name can contain the following
      characters: A-Z, a-z, 0-9, underscore (_), hyphen (-), and period (.). The name must not start or end with a
      period, and it should not have successive periods. The name is case sensitive and must be unique among all
      attribute names for the message. The name can be up to 256 characters long. The name cannot start with "AWS." or
      "Amazon." (or any variations in casing), because these prefixes are reserved for use by Amazon Web Services.

      When using ReceiveMessage, you can send a list of attribute names to receive, or you can return all of the
      attributes by specifying "All" or "." in your request. You can also use "bar." to return all message attributes
      starting with the "bar" prefix.
     **/
    @:optional var MessageAttributeNames(default, null):Array<String>;

    /**
      The maximum number of messages to return. Amazon SQS never returns more messages than this value but may return
      fewer. Values can be from 1 to 10. Default is 1.

      All of the messages are not necessarily returned.
     **/
    @:optional var MaxNumberOfMessages(default, null):Int;

    /**
      The duration (in seconds) that the received messages are hidden from subsequent retrieve requests after being
      retrieved by a ReceiveMessage request.
     **/
    @:optional var VisibilityTimeout(default, null):Int;

    /**
      The duration (in seconds) for which the call will wait for a message to arrive in the queue before returning. If a
      message is available, the call will return sooner than WaitTimeSeconds.
     **/
    @:optional var WaitTimeSeconds(default, null):Int;

  }, callback:js.Error->{ Messages: Array<{
    /**
      A unique identifier for the message. Message IDs are considered unique across all AWS accounts for an extended
      period of time.
     **/
    MessageId:String,

    /**
      An identifier associated with the act of receiving the message. A new receipt handle is returned every time you
      receive a message. When deleting a message, you provide the last received receipt handle to delete the message.
     **/
    ReceiptHandle:String,

    /**
      An MD5 digest of the non-URL-encoded message body string.
     **/
    MD5OfBody:String,

    /**
      The message's contents (not URL-encoded).
     **/
    Body:String,

    /**
      SenderId, SentTimestamp, ApproximateReceiveCount, and/or ApproximateFirstReceiveTimestamp. SentTimestamp and
      ApproximateFirstReceiveTimestamp are each returned as an integer representing the epoch time in milliseconds.
     **/
    Attributes:haxe.DynamicAccess<String>,

    /**
      An MD5 digest of the non-URL-encoded message attribute string. This can be used to verify that Amazon SQS received
      the message correctly. Amazon SQS first URL decodes the message before creating the MD5 digest. For information
      about MD5, go to http://www.faqs.org/rfcs/rfc1321.html.
     **/
    MD5OfMessageAttributes:String,

    /**
      Each message attribute consists of a Name, Type, and Value. For more information, see Message Attribute Items.
     **/
    MessageAttributes:haxe.DynamicAccess<Dynamic>,

    /**
      Strings are Unicode with UTF8 binary encoding. For a list of code values, see
      http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters.
     **/
    StringValue:String,

    /**
      Binary type attributes can store any binary data, for example, compressed data, encrypted data, or images.
     **/
    BinaryValue:js.node.Buffer,

    /**
      Not implemented. Reserved for future use.
     **/
    StringListValues:Array<String>,

    /**
      Not implemented. Reserved for future use.
     **/
    BinaryListValues:Array<js.node.Buffer>,

    /**
      Amazon SQS supports the following logical data types: String, Number, and Binary. For the Number data type, you
      must use StringValue.
      You can also append custom labels. For more information, see Message Attribute Data Types.
     **/
    DataType:String,
  }>}->Void) : Request;

  /**
    Revokes any permissions in the queue policy that matches the specified Label parameter.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function removePermission(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Delivers a message to the specified queue.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function sendMessage(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Delivers up to ten messages to the specified queue.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function sendMessageBatch(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;

  /**
    Sets the value of one or more queue attributes.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  public function setQueueAttributes(params:Dynamic, callback:js.Error->Dynamic->Void) : Request;
}
