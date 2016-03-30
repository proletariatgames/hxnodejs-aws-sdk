package js.npm.aws_sdk;

@:jsRequire("aws-sdk","DynamoDB")
extern class DynamoDB extends Service {
  /**
    Constructs a service object.
   **/
  @:overload(function ():Void {})
  function new(options:Dynamic):Void;

  /**
    The BatchGetItem operation returns the attributes of one or more items from one or more tables.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function batchGetItem(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    The BatchWriteItem operation puts or deletes multiple items in one or more tables.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function batchWriteItem(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    The CreateTable operation adds a new table to your account.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function createTable(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Deletes a single item in a table by primary key.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function deleteItem(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    The DeleteTable operation deletes a table and all of its items.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function deleteTable(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Returns the current provisioned-capacity limits for your AWS account in a region, both for the region as a whole and for any one DynamoDB table that you create there.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function describeLimits(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Returns information about the table, including the current status of the table, when it was created, the primary key schema, and any indexes on the table.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function describeTable(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    The GetItem operation returns a set of attributes for the item with the given primary key.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function getItem(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Returns an array of table names associated with the current account and endpoint.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function listTables(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Creates a new item, or replaces an old item with a new item.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function putItem(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    A Query operation uses the primary key of a table or a secondary index to directly access items from that table or index.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function query(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    The Scan operation returns one or more items and item attributes by accessing every item in a table or a secondary index.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function scan(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Edits an existing item's attributes, or adds a new item to the table if it does not already exist.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function updateItem(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Modifies the provisioned throughput settings, global secondary indexes, or DynamoDB Streams settings for a given table.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.Error->Dynamic->Void):Request {})
  function updateTable(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

}
