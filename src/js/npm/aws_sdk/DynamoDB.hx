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

    A single operation can retrieve up to 16 MB of data, which can contain as many as 100 items. BatchGetItem will
    return a partial result if the response size limit is exceeded, the table's provisioned throughput is exceeded,
    or an internal processing failure occurs. If a partial result is returned, the operation returns a value for
    UnprocessedKeys. You can use this value to retry the operation starting with the next item to get.

    Important

    If you request more than 100 items BatchGetItem will return a ValidationException with the message "Too many
    items requested for the BatchGetItem call".

    For example, if you ask to retrieve 100 items, but each individual item is 300 KB in size, the system returns 52
    items (so as not to exceed the 16 MB limit). It also returns an appropriate UnprocessedKeys value so you can get
    the next page of results. If desired, your application can include its own logic to assemble the pages of results
    into one data set.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->BatchGetItemResponse->Void):Request {})
  function batchGetItem(params:BatchGetItemRequest, callback:js.lib.Error->BatchGetItemResponse->Void):Request;

  /**
    The BatchWriteItem operation puts or deletes multiple items in one or more tables.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function batchWriteItem(params:Dynamic, callback:js.lib.Error->Dynamic->Void):Request;

  /**
    The CreateTable operation adds a new table to your account.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function createTable(params:Dynamic, callback:js.lib.Error->Dynamic->Void):Request;

  /**
    Deletes a single item in a table by primary key.

    In addition to deleting an item, you can also return the item's attribute values in the same operation, using the
    ReturnValues parameter.

    Unless you specify conditions, the DeleteItem is an idempotent operation; running it multiple times on the same item
    or attribute does not result in an error response.

    Conditional deletes are useful for deleting items only if specific conditions are met. If those conditions are met,
    DynamoDB performs the delete. Otherwise, the item is not deleted.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function deleteItem(params:DeleteItemRequest, callback:js.lib.Error->DeleteItemResponse->Void):Request;

  /**
    The DeleteTable operation deletes a table and all of its items.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function deleteTable(params:Dynamic, callback:js.lib.Error->Dynamic->Void):Request;

  /**
    Returns the current provisioned-capacity limits for your AWS account in a region, both for the region as a whole and for any one DynamoDB table that you create there.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function describeLimits(params:Dynamic, callback:js.lib.Error->Dynamic->Void):Request;

  /**
    Returns information about the table, including the current status of the table, when it was created, the primary key schema, and any indexes on the table.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function describeTable(params:{ TableName:String }, callback:js.lib.Error->{ Table:TableDescription }->Void):Request;

  /**
    The GetItem operation returns a set of attributes for the item with the given primary key.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function getItem(params:GetItemRequest, callback:js.lib.Error->{
    ConsumedCapacity:ConsumedCapacity,
    Item:Dynamic<AttributeValue>
  }->Void):Request;

  /**
    Returns an array of table names associated with the current account and endpoint.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function listTables(params:Dynamic, callback:js.lib.Error->Dynamic->Void):Request;

  /**
    Creates a new item, or replaces an old item with a new item.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function putItem(params:PutItemRequest, callback:js.lib.Error->{
    Attributes:Dynamic<AttributeValue>,
    ConsumedCapacity:ConsumedCapacity,
    ItemCollectionMetrics:ItemCollectionMetrics
  }->Void):Request;

  /**
    A Query operation uses the primary key of a table or a secondary index to directly access items from that table or index.
    Use the KeyConditionExpression parameter to provide a specific value for the partition key. The Query operation will
    return all of the items from the table or index with that partition key value. You can optionally narrow the scope of
    the Query operation by specifying a sort key value and a comparison operator in KeyConditionExpression. To further
    refine the Query results, you can optionally provide a FilterExpression. A FilterExpression determines which items
    within the results should be returned to you. All of the other results are discarded.

    A Query operation always returns a result set. If no matching items are found, the result set will be empty. Queries
    that do not return results consume the minimum Float of read capacity units for that type of read operation.

      Note
      DynamoDB calculates the Float of read capacity units consumed based on item size, not on the amount of data that is
      returned to an application. The Float of capacity units consumed will be the same whether you request all of the
      attributes (the default behavior) or just some of them (using a projection expression). The Float will also be the
      same whether or not you use a FilterExpression.

    Query results are always sorted by the sort key value. If the data type of the sort key is Number, the results are
    returned in numeric order; otherwise, the results are returned in order of UTF-8 bytes. By default, the sort order is
    ascending. To reverse the order, set the ScanIndexForward parameter to false.

    A single Query operation will read up to the maximum Float of items set (if using the Limit parameter) or a maximum
    of 1 MB of data and then apply any filtering to the results using FilterExpression. If LastEvaluatedKey is present in
    the response, you will need to paginate the result set. For more information, see Paginating the Results in the
    Amazon DynamoDB Developer Guide.

    FilterExpression is applied after a Query finishes, but before the results are returned. A FilterExpression cannot
    contain partition key or sort key attributes. You need to specify those attributes in the KeyConditionExpression.

      Note
      A Query operation can return an empty result set and a LastEvaluatedKey if all the items read for the page of results
      are filtered out.

    You can query a table, a local secondary index, or a global secondary index. For a query on a table or on a local
    secondary index, you can set the ConsistentRead parameter to true and obtain a strongly consistent result. Global
    secondary indexes support eventually consistent reads only, so do not specify ConsistentRead when querying a global
    secondary index.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function query(params:QueryRequest, callback:js.lib.Error->{
    ConsumedCapacity:ConsumedCapacity,
    Count:Int,
    Items:Array<Dynamic<AttributeValue>>,
    LastEvaluatedKey:Dynamic<AttributeValue>,
    ScannedCount:Int
  }->Void):Request;

  /**
    The Scan operation returns one or more items and item attributes by accessing every item in a table or a secondary index.

    If the total number of scanned items exceeds the maximum data set size limit of 1 MB, the scan stops and results
    are returned to the user as a LastEvaluatedKey value to continue the scan in a subsequent operation. The results
    also include the Float of items exceeding the limit. A scan can result in no table data meeting the filter
    criteria.

    A single Scan operation will read up to the maximum Float of items set (if using the Limit parameter) or a
    maximum of 1 MB of data and then apply any filtering to the results using FilterExpression. If LastEvaluatedKey
    is present in the response, you will need to paginate the result set. For more information, see Paginating the
    Results in the Amazon DynamoDB Developer Guide.

    Scan operations proceed sequentially; however, for faster performance on a large table or secondary index,
    applications can request a parallel Scan operation by providing the Segment and TotalSegments parameters. For
    more information, see Parallel Scan in the Amazon DynamoDB Developer Guide.

    Scan uses eventually consistent reads when accessing the data in a table; therefore, the result set might not
    include the changes to data in the table immediately before the operation began. If you need a consistent copy of
    the data, as of the time that the Scan begins, you can set the ConsistentRead parameter to true.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function scan(params:ScanRequest, callback:js.lib.Error->{
    ConsumedCapacity:ConsumedCapacity,
    Count:Int,
    Items:Array<Dynamic<AttributeValue>>,
    LastEvaluatedKey:Dynamic<AttributeValue>,
    ScannedCount:Int,
  }->Void):Request;

  /**
    TransactWriteItems is a synchronous write operation that groups up to 25 action requests. These actions can target
    items in different tables, but not in different AWS accounts or Regions, and no two actions can target the same
    item. For example, you cannot both ConditionCheck and Update the same item. The aggregate size of the items in the
    transaction cannot exceed 4 MB.  All AWS Regions and AWS GovCloud (US) support up to 25 items per transaction with
    up to 4 MB of data, except the following AWS Regions:
      China (Beijing)
      China (Ningxia)
    The China (Beijing) and China (Ningxia) Regions support up to 10 items per transaction with up to 4 MB of data.

    The actions are completed atomically so that either all of them succeed, or all of them fail. They are defined by
    the following objects:
      Put - Initiates a PutItem operation to write a new item. This structure specifies the primary key of the item to
        be written, the name of the table to write it in, an optional condition expression that must be satisfied for
        the write to succeed, a list of the item's attributes, and a field indicating whether to retrieve the item's
        attributes if the condition is not met.
      Update - Initiates an UpdateItem operation to update an existing item. This structure specifies the primary key of
        the item to be updated, the name of the table where it resides, an optional condition expression that must be
        satisfied for the update to succeed, an expression that defines one or more attributes to be updated, and a
        field indicating whether to retrieve the item's attributes if the condition is not met.
      Delete - Initiates a DeleteItem operation to delete an existing item. This structure specifies the primary key of
        the item to be deleted, the name of the table where it resides, an optional condition expression that must be
        satisfied for the deletion to succeed, and a field indicating whether to retrieve the item's attributes if the
        condition is not met.
      ConditionCheck - Applies a condition to an item that is not being modified by the transaction. This structure
        specifies the primary key of the item to be checked, the name of the table where it resides, a condition
        expression that must be satisfied for the transaction to succeed, and a field indicating whether to retrieve the
        item's attributes if the condition is not met.

    DynamoDB rejects the entire TransactWriteItems request if any of the following is true:
      A condition in one of the condition expressions is not met.
      An ongoing operation is in the process of updating the same item.
      There is insufficient provisioned capacity for the transaction to be completed.
      An item size becomes too large (bigger than 400 KB), a local secondary index (LSI) becomes too large, or a similar
        validation error occurs because of changes made by the transaction.
      The aggregate size of the items in the transaction exceeds 4 MB.
      There is a user error, such as an invalid data format.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function transactWriteItems(params:TransactWriteItemsInput, callback:js.lib.Error->{
    ConsumedCapacity:Array<ConsumedCapacity>,
    ItemCollectionMetrics:Dynamic<Array<ItemCollectionMetrics>>
  }->Void):Request;

  /**
    Edits an existing item's attributes, or adds a new item to the table if it does not already exist. You can put,
    delete, or add attribute values. You can also perform a conditional update on an existing item (insert a new
    attribute name-value pair if it doesn't exist, or replace an existing name-value pair if it has certain expected
    attribute values).
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function updateItem(params:UpdateItemRequest, callback:js.lib.Error->{
    Attributes:Dynamic<AttributeValue>,
    ConsumedCapacity:ConsumedCapacity,
    ItemCollectionMetrics:ItemCollectionMetrics
  }->Void):Request;

  /**
    Modifies the provisioned throughput settings, global secondary indexes, or DynamoDB Streams settings for a given table.
  **/
  @:overload(function ():Request {})
  @:overload(function (callback:js.lib.Error->Dynamic->Void):Request {})
  function updateTable(params:Dynamic, callback:js.lib.Error->Dynamic->Void):Request;
}

typedef TransactWriteItemsInput = {
  /**
    An ordered array of up to 25 TransactWriteItem objects, each of which contains a ConditionCheck, Put, Update, or
    Delete object. These can operate on items in different tables, but the tables must reside in the same AWS account
    and Region, and no two of them can operate on the same item.
    */
  var TransactItems: Array<TransactWriteItem>;
  @:optional var ReturnConsumedCapacity: String;
  /**
    Determines whether item collection metrics are returned. If set to SIZE, the response includes statistics about item
    collections (if any), that were modified during the operation and are returned in the response. If set to NONE (the
    default), no statistics are returned.
    */
  @:optional var ReturnItemCollectionMetrics: String;
  /**
    Providing a ClientRequestToken makes the call to TransactWriteItems idempotent, meaning that multiple identical
    calls have the same effect as one single call. Although multiple identical calls using the same client request token
    produce the same result on the server (no side effects), the responses to the calls might not be the same. If the
    ReturnConsumedCapacity&gt; parameter is set, then the initial TransactWriteItems call returns the amount of write
    capacity units consumed in making the changes. Subsequent TransactWriteItems calls with the same client token return
    the number of read capacity units consumed in reading the item. A client request token is valid for 10 minutes after
    the first request that uses it is completed. After 10 minutes, any request with the same client token is treated as
    a new request. Do not resubmit the same request with the same client token for more than 10 minutes, or the result
    might not be idempotent. If you submit a request with the same client token but a change in other parameters within
    the 10-minute idempotency window, DynamoDB returns an IdempotentParameterMismatch exception.
    */
  @:optional var ClientRequestToken: String;
}

typedef TransactWriteItem = {
  /**
    * A request to perform a check item operation.
    */
  @:optional var ConditionCheck: ConditionCheck;
  /**
    * A request to perform a PutItem operation.
    */
  @:optional var Put: Put;
  /**
    * A request to perform a DeleteItem operation.
    */
  @:optional var Delete: Delete;
  /**
    * A request to perform an UpdateItem operation.
    */
  @:optional var Update: Update;
}

typedef ConditionCheck = {
  /**
    * The primary key of the item to be checked. Each element consists of an attribute name and a value for that attribute.
    */
  var Key: Dynamic<AttributeValue>;
  /**
    * Name of the table for the check item request.
    */
  var TableName: String;
  /**
    * A condition that must be satisfied in order for a conditional update to succeed.
    */
  var ConditionExpression: String;
  /**
    * One or more substitution tokens for attribute names in an expression.
    */
  @:optional var ExpressionAttributeNames: Dynamic;
  /**
    * One or more values that can be substituted in an expression.
    */
  @:optional var ExpressionAttributeValues: Dynamic;
  /**
    Use ReturnValuesOnConditionCheckFailure to get the item attributes if the ConditionCheck condition fails. For
    ReturnValuesOnConditionCheckFailure, the valid values are: NONE and ALL_OLD.
    */
  @:optional var ReturnValuesOnConditionCheckFailure: String;
}

typedef Put = {
  /**
    * A map of attribute name to attribute values, representing the primary key of the item to be written by PutItem. All of the table's primary key attributes must be specified, and their data types must match those of the table's key schema. If any attributes are present in the item that are part of an index key schema for the table, their types must match the index key schema.
    */
  var Item: Dynamic<AttributeValue>;
  /**
    * Name of the table in which to write the item.
    */
  var TableName: String;
  /**
    * A condition that must be satisfied in order for a conditional update to succeed.
    */
  @:optional var ConditionExpression: String;
  /**
    * One or more substitution tokens for attribute names in an expression.
    */
  @:optional var ExpressionAttributeNames: Dynamic;
  /**
    * One or more values that can be substituted in an expression.
    */
  @:optional var ExpressionAttributeValues: Dynamic;
  /**
    * Use ReturnValuesOnConditionCheckFailure to get the item attributes if the Put condition fails. For ReturnValuesOnConditionCheckFailure, the valid values are: NONE and ALL_OLD.
    */
  @:optional var ReturnValuesOnConditionCheckFailure: String;
}

typedef Delete = {
  /**
    * The primary key of the item to be deleted. Each element consists of an attribute name and a value for that attribute.
    */
  var Key: Dynamic<AttributeValue>;
  /**
    * Name of the table in which the item to be deleted resides.
    */
  var TableName: String;
  /**
    * A condition that must be satisfied in order for a conditional delete to succeed.
    */
  @:optional var ConditionExpression: String;
  /**
    * One or more substitution tokens for attribute names in an expression.
    */
  @:optional var ExpressionAttributeNames: Dynamic;
  /**
    * One or more values that can be substituted in an expression.
    */
  @:optional var ExpressionAttributeValues: Dynamic;
  /**
    * Use ReturnValuesOnConditionCheckFailure to get the item attributes if the Delete condition fails. For ReturnValuesOnConditionCheckFailure, the valid values are: NONE and ALL_OLD.
    */
  @:optional var ReturnValuesOnConditionCheckFailure: String;
}

typedef Update = {
  /**
    * The primary key of the item to be updated. Each element consists of an attribute name and a value for that attribute.
    */
  var Key: String;
  /**
    * An expression that defines one or more attributes to be updated, the action to be performed on them, and new value(s) for them.
    */
  var UpdateExpression: String;
  /**
    * Name of the table for the UpdateItem request.
    */
  var TableName: String;
  /**
    * A condition that must be satisfied in order for a conditional update to succeed.
    */
  @:optional var ConditionExpression: String;
  /**
    * One or more substitution tokens for attribute names in an expression.
    */
  @:optional var ExpressionAttributeNames: Dynamic;
  /**
    * One or more values that can be substituted in an expression.
    */
  @:optional var ExpressionAttributeValues: Dynamic;
  /**
    * Use ReturnValuesOnConditionCheckFailure to get the item attributes if the Update condition fails. For ReturnValuesOnConditionCheckFailure, the valid values are: NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW.
    */
  @:optional var ReturnValuesOnConditionCheckFailure: String;
}

typedef UpdateItemRequest = {
  > ConditionalRequest,
  > AttributeRequest,
  /**
    The primary key of the item to be updated. Each element consists of an attribute name and a value for that
    attribute.

    For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need
    to provide a value for the partition key. For a composite primary key, you must provide values for both the
    partition key and the sort key.
  **/
  var Key: Dynamic<AttributeValue>;
  /**
    The name of the table containing the item to update.
  **/
  var TableName: String;
  /**
    This is a legacy parameter. Use UpdateExpression instead. For more information, see AttributeUpdates in the
    Amazon DynamoDB Developer Guide.
  **/
  @:optional var AttributeUpdates: Dynamic<{
    var Action: String;
    var Value: AttributeValue;
  }>;
  @:optional var ReturnConsumedCapacity: ReturnConsumedCapacity;
  @:optional var ReturnItemCollectionMetrics: ReturnItemCollectionMetrics;
  @:optional var ReturnValues: ReturnValues;
  /**
    An expression that defines one or more attributes to be updated, the action to be performed on them, and new
    value(s) for them.

    The following action values are available for UpdateExpression.
        SET - Adds one or more attributes and values to an item. If any of these attribute already exist, they are
          replaced by the new values. You can also use SET to add or subtract from an attribute that is of type Number.
          For example: SET myNum = myNum + :val
          SET supports the following functions:
            if_not_exists (path, operand) - if the item does not contain an attribute at the specified path, then
              if_not_exists evaluates to operand; otherwise, it evaluates to path. You can use this function to avoid
              overwriting an attribute that may already be present in the item.
            list_append (operand, operand) - evaluates to a list with a new element added to it. You can append the
              new element to the start or the end of the list by reversing the order of the operands.
        These function names are case-sensitive.
          REMOVE - Removes one or more attributes from an item.
          ADD - Adds the specified value to the item, if the attribute does not already exist. If the attribute does
          exist, then the behavior of ADD depends on the data type of the attribute:
            If the existing attribute is a number, and if Value is also a number, then Value is mathematically added to the existing attribute. If Value is a negative number, then it is subtracted from the existing attribute.

            Note
              If you use ADD to increment or decrement a number value for an item that doesn't exist before the update,
              DynamoDB uses 0 as the initial value.
              Similarly, if you use ADD for an existing item to increment or decrement an attribute value that doesn't
              exist before the update, DynamoDB uses 0 as the initial value. For example, suppose that the item you
              want to update doesn't have an attribute named itemcount, but you decide to ADD the number 3 to this
              attribute anyway. DynamoDB will create the itemcount attribute, set its initial value to 0, and finally
              add 3 to it. The result will be a new itemcount attribute in the item, with a value of 3.

            If the existing data type is a set and if Value is also a set, then Value is added to the existing set.
            For example, if the attribute value is the set [1,2], and the ADD action specified [3], then the final
            attribute value is [1,2,3]. An error occurs if an ADD action is specified for a set attribute and the
            attribute type specified does not match the existing set type.

            Both sets must have the same primitive data type. For example, if the existing data type is a set of
            strings, the Value must also be a set of strings.

        Important

        The ADD action only supports Number and set data types. In addition, ADD can only be used on top-level
        attributes, not nested attributes.

        DELETE - Deletes an element from a set.
          If a set of values is specified, then those values are subtracted from the old set. For example, if the
          attribute value was the set [a,b,c] and the DELETE action specifies [a,c], then the final attribute value is
          [b]. Specifying an empty set is an error.

          Important
          The DELETE action only supports set data types. In addition, DELETE can only be used on top-level attributes,
          not nested attributes.

    You can have many actions in a single expression, such as the following: SET a=:value1, b=:value2 DELETE :value3,
    :value4, :value5

    For more information on update expressions, see Modifying Items and Attributes in the Amazon DynamoDB Developer
    Guide.
  **/
  @:optional var UpdateExpression: String;
}

@:enum abstract ConditionalOperator(String)
{
  var And = "AND";
  var Or = "OR";
}

typedef Condition = {
  var AttributeValueList: Array<AttributeValue>;
  var ComparisonOperator: String;
}

typedef ScanRequest = {
  > ConditionalRequest,
  > AttributeRequest,
  var TableName: String;
  /**
    This is a legacy parameter. Use ProjectionExpression instead. For more information, see AttributesToGet in the
    Amazon DynamoDB Developer Guide.
  **/
  @:optional var AttributesToGet: Array< String >;
  @:optional var ConsistentRead: Bool;
  /**
    The primary key of the first item that this operation will evaluate. Use the value that was returned for
    LastEvaluatedKey in the previous operation.

    The data type for ExclusiveStartKey must be String, Number or Binary. No set data types are allowed.

    In a parallel scan, a Scan request that includes ExclusiveStartKey must specify the same segment whose previous Scan
    returned the corresponding value of LastEvaluatedKey.
  **/
  @:optional var ExclusiveStartKey: Dynamic<AttributeValue>;
  /**
    A string that contains conditions that DynamoDB applies after the Query operation, but before the data is
    returned to you. Items that do not satisfy the FilterExpression criteria are not returned.

    A FilterExpression does not allow key attributes. You cannot define a filter expression based on a partition key or
    a sort key.

    Note

    A FilterExpression is applied after the items have already been read; the process of filtering does not consume any
    additional read capacity units.

    For more information, see Filter Expressions in the Amazon DynamoDB Developer Guide.
  **/
  @:optional var FilterExpression: String;
  /**
    The name of an index to query. This index can be any local secondary index or global secondary index on the
    table. Note that if you use the IndexName parameter, you must also provide TableName.
  **/
  @:optional var IndexName: String;
  /**
    The maximum Float of items to evaluate (not necessarily the Float of matching items). If DynamoDB processes the
    Float of items up to the limit while processing the results, it stops the operation and returns the matching
    values up to that point, and a key in LastEvaluatedKey to apply in a subsequent operation, so that you can pick
    up where you left off. Also, if the processed data set size exceeds 1 MB before DynamoDB reaches this limit, it
    stops the operation and returns the matching values up to the limit, and a key in LastEvaluatedKey to apply in a
    subsequent operation to continue the operation. For more information, see Query and Scan in the Amazon DynamoDB
    Developer Guide.
  **/
  @:optional var Limit: Float;
  @:optional var ReturnConsumedCapacity: ReturnConsumedCapacity;
  /**
    This is a legacy parameter. Use FilterExpression instead. For more information, see ScanFilter in the Amazon
    DynamoDB Developer Guide.
  **/
  @:optional var ScanFilter: Dynamic<Condition>;
  /**
    For a parallel Scan request, Segment identifies an individual segment to be scanned by an application worker.

    Segment IDs are zero-based, so the first segment is always 0. For example, if you want to use four application
    threads to scan a table or an index, then the first thread specifies a Segment value of 0, the second thread
    specifies 1, and so on.

    The value of LastEvaluatedKey returned from a parallel Scan request must be used as ExclusiveStartKey with the same
    segment ID in a subsequent Scan operation.

    The value for Segment must be greater than or equal to 0, and less than the value provided for TotalSegments.

    If you provide Segment, you must also provide TotalSegments.
  **/
  @:optional var Segment: Float;
  @:optional var Select: SelectKind;
  @:optional var TotalSegments: Float;
}

@:enum abstract SelectKind(String)
{
  /**
    Returns all of the item attributes from the specified table or index. If you query a local secondary index, then
    for each matching item in the index DynamoDB will fetch the entire item from the parent table. If the index is
    configured to project all item attributes, then all of the data can be obtained from the local secondary index, and
    no fetching is required.
  **/
  var AllAttributes = "ALL_ATTRIBUTES";

  /**
    Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the
    index is configured to project all attributes, this return value is equivalent to specifying ALL_ATTRIBUTES.
  **/
  var AllProjectedAttributes = "ALL_PROJECTED_ATTRIBUTES";

  /**
    Returns the Float of matching items, rather than the matching items themselves.
  **/
  var Count = "COUNT";

  /**
    Returns only the attributes listed in AttributesToGet. This return value is equivalent to specifying
    AttributesToGet without specifying any value for Select.
    If you query or scan a local secondary index and request only attributes that are projected into that index, the
    operation will read only the index and not the table. If any of the requested attributes are not projected into
    the local secondary index, DynamoDB will fetch each of these attributes from the parent table. This extra
    fetching incurs additional throughput cost and latency.

    If you query or scan a global secondary index, you can only request attributes that are projected into the index.
    Global secondary index queries cannot fetch attributes from the parent table.
  **/
  var SpecificAttributes = "SPECIFIC_ATTRIBUTES";
}

typedef QueryRequest = {
  > ConditionalRequest,
  > AttributeRequest,
  var TableName: String;
  @:optional var AttributesToGet: Array< String >;
  /**
    Determines the read consistency model: If set to true, then the operation uses strongly consistent reads;
    otherwise, the operation uses eventually consistent reads.

    Strongly consistent reads are not supported on global secondary indexes. If you query a global secondary index with
    ConsistentRead set to true, you will receive a ValidationException.
  **/
  @:optional var ConsistentRead: Bool;
  /**
    The primary key of the first item that this operation will evaluate. Use the value that was returned for
    LastEvaluatedKey in the previous operation.

    The data type for ExclusiveStartKey must be String, Number or Binary. No set data types are allowed.
  **/
  @:optional var ExclusiveStartKey: Dynamic<AttributeValue>;
  /**
    A string that contains conditions that DynamoDB applies after the Query operation, but before the data is
    returned to you. Items that do not satisfy the FilterExpression criteria are not returned.

    A FilterExpression does not allow key attributes. You cannot define a filter expression based on a partition key or
    a sort key.

    Note

    A FilterExpression is applied after the items have already been read; the process of filtering does not consume any
    additional read capacity units.

    For more information, see Filter Expressions in the Amazon DynamoDB Developer Guide.
  **/
  @:optional var FilterExpression: String;
  /**
    The name of an index to query. This index can be any local secondary index or global secondary index on the
    table. Note that if you use the IndexName parameter, you must also provide TableName.
  **/
  @:optional var IndexName: String;
  /**
    The condition that specifies the key value(s) for items to be retrieved by the Query action.
    The condition must perform an equality test on a single partition key value.
    The condition can optionally perform one of several comparison tests on a single sort key value. This allows
    Query to retrieve one item with a given partition key value and sort key value, or several items that have the
    same partition key value but different sort key values.
    The partition key equality test is required, and must be specified in the following format:
    partitionKeyName = :partitionkeyval
    If you also want to provide a condition for the sort key, it must be combined using AND with the condition for
    the sort key. Following is an example, using the = comparison operator for the sort key:
    partitionKeyName = :partitionkeyval AND sortKeyName = :sortkeyval

    Valid comparisons for the sort key condition are as follows:
        sortKeyName = :sortkeyval - true if the sort key value is equal to :sortkeyval.
        sortKeyName < :sortkeyval - true if the sort key value is less than :sortkeyval.
        sortKeyName <= :sortkeyval - true if the sort key value is less than or equal to :sortkeyval.
        sortKeyName > :sortkeyval - true if the sort key value is greater than :sortkeyval.
        sortKeyName >= :sortkeyval - true if the sort key value is greater than or equal to :sortkeyval.
        sortKeyName BETWEEN :sortkeyval1 AND :sortkeyval2 - true if the sort key value is greater than or equal to :sortkeyval1, and less than or equal to :sortkeyval2.
        begins_with ( sortKeyName, :sortkeyval ) - true if the sort key value begins with a particular operand. (You
          cannot use this function with a sort key that is of type Number.) Note that the function name begins_with is
          case-sensitive.

    Use the ExpressionAttributeValues parameter to replace tokens such as :partitionval and :sortval with actual
    values at runtime. You can optionally use the ExpressionAttributeNames parameter to replace the names of the
    partition key and sort key with placeholder tokens. This option might be necessary if an attribute name conflicts
    with a DynamoDB reserved word. For example, the following KeyConditionExpression parameter causes an error
    because Size is a reserved word:
        Size = :myval
    To work around this, define a placeholder (such a #S) to represent the attribute name Size.
    KeyConditionExpression then is as follows:
        #S = :myval
    For a list of reserved words, see Reserved Words in the Amazon DynamoDB Developer Guide. For more information on
    ExpressionAttributeNames and ExpressionAttributeValues, see Using Placeholders for Attribute Names and Values in
    the Amazon DynamoDB Developer Guide.
  **/
  @:optional var KeyConditionExpression: String;
  /**
    This is a legacy parameter. Use KeyConditionExpression instead. For more information, see KeyConditions in the Amazon DynamoDB Developer Guide.
  **/
  @:optional var KeyConditions: Dynamic<Condition>;
  /**
    The maximum Float of items to evaluate (not necessarily the Float of matching items). If DynamoDB processes the
    Float of items up to the limit while processing the results, it stops the operation and returns the matching
    values up to that point, and a key in LastEvaluatedKey to apply in a subsequent operation, so that you can pick up
    where you left off. Also, if the processed data set size exceeds 1 MB before DynamoDB reaches this limit, it stops
    the operation and returns the matching values up to the limit, and a key in LastEvaluatedKey to apply in a
    subsequent operation to continue the operation. For more information, see Query and Scan in the Amazon DynamoDB
    Developer Guide.
  **/
  @:optional var Limit: Int;
  /**
    This is a legacy parameter. Use FilterExpression instead. For more information, see QueryFilter in the Amazon
    DynamoDB Developer Guide.
  **/
  @:optional var QueryFilter: Dynamic<Condition>;

  @:optional var ReturnConsumedCapacity: ReturnConsumedCapacity;
  /**
    Specifies the order for index traversal: If true (default), the traversal is performed in ascending order; if
    false, the traversal is performed in descending order.

    Items with the same partition key value are stored in sorted order by sort key. If the sort key data type is
    Number, the results are stored in numeric order. For type String, the results are stored in order of UTF-8 bytes.
    For type Binary, DynamoDB treats each byte of the binary data as unsigned.

    If ScanIndexForward is true, DynamoDB returns the results in the order in which they are stored (by sort key
    value). This is the default behavior. If ScanIndexForward is false, DynamoDB reads the results in reverse order by
    sort key value, and then returns the results to the client.
  **/
  @:optional var ScanIndexForward: Bool;

  /**
    If neither Select nor AttributesToGet are specified, DynamoDB defaults to ALL_ATTRIBUTES when accessing a
    table, and ALL_PROJECTED_ATTRIBUTES when accessing an index. You cannot use both Select and AttributesToGet
    together in a single request, unless the value for Select is SPECIFIC_ATTRIBUTES. (This usage is equivalent to
    specifying AttributesToGet without any value for Select.)
  **/
  @:optional var Select: SelectKind;
}

typedef PutItemRequest = {
  > ConditionalRequest,
  > AttributeRequest,
  /**
    A map of attribute name/value pairs, one for each attribute. Only the primary key attributes are required; you can
    optionally provide other attribute name-value pairs for the item.

    You must provide all of the attributes for the primary key. For example, with a simple primary key, you only need
    to provide a value for the partition key. For a composite primary key, you must provide both values for both the
    partition key and the sort key.

    If you specify any attributes that are part of an index key, then the data types for those attributes must match
    those of the schema in the table's attribute definition.

    For more information about primary keys, see Primary Key in the Amazon DynamoDB Developer Guide.

    Each element in the Item map is an AttributeValue object.
  **/
  var Item: Dynamic<AttributeValue>;
  /**
    The name of the table to contain the item.
  **/
  var TableName: String;
  @:optional var ReturnConsumedCapacity: ReturnConsumedCapacity;
  @:optional var ReturnItemCollectionMetrics: ReturnItemCollectionMetrics;
  @:optional var ReturnValues: ReturnValues;
}

typedef GetItemRequest = {
  > AttributeRequest,
  /**
    A map of attribute names to AttributeValue objects, representing the primary key of the item to retrieve.
    For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need
    to provide a value for the partition key. For a composite primary key, you must provide values for both the
    partition key and the sort key.
  **/
  var Key: Dynamic<AttributeValue>;
  /**
    The name of the table containing the reuqested item
  **/
  var TableName: String;
  /**
    This is a legacy parameter. Use ProjectionExpression instead.
  **/
  @:optional var AttributesToGet: Array< String >;
  /**
    Determines the read consistency model: If set to true, then the operation uses strongly consistent reads;
    otherwise, the operation uses eventually consistent reads.
  **/
  @:optional var ConsistentRead: Bool;
  @:optional var ReturnConsumedCapacity: ReturnConsumedCapacity;
}

typedef AttributeRequest = {
  /**
    This is a legacy parameter. Use ProjectionExpression instead. For more information, see AttributesToGet in the
    Amazon DynamoDB Developer Guide.
  **/
  @:optional var AttributesToGet:Array<String>;

  /**
    One or more substitution tokens for attribute names in the ProjectionExpression parameter. The following are
    some use cases for using ExpressionAttributeNames:
        To access an attribute whose name conflicts with a DynamoDB reserved word.
        To create a placeholder for repeating occurrences of an attribute name in an expression.
        To prevent special characters in an attribute name from being misinterpreted in an expression.
    Use the # character in an expression to dereference an attribute name. For example, consider the following attribute name:
        Percentile
    The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For
    the complete list of reserved words, see Reserved Words in the Amazon DynamoDB Developer Guide). To work around
    this, you could specify the following for ExpressionAttributeNames:
        {"#P":"Percentile"}
    You could then use this substitution in an expression, as in this example:
        #P = :val
    Note
      Tokens that begin with the : character are expression attribute values, which are placeholders for the actual
      value at runtime. For more information on expression attribute names, see Accessing Item Attributes in the
      Amazon DynamoDB Developer Guide.
  **/
  @:optional var ExpressionAttributeNames:Dynamic<String>;

  /**
    One or more values that can be substituted in an expression.

    Use the : (colon) character in an expression to dereference an attribute value. For example, suppose that you
    wanted to check whether the value of the ProductStatus attribute was one of the following:
      Available | Backordered | Discontinued

    You would first need to specify ExpressionAttributeValues as follows:
      { ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }

    You could then use these values in an expression, such as this:
      ProductStatus IN (:avail, :back, :disc)
  **/
  @:optional var ExpressionAttributeValues: Dynamic<AttributeValue>;

  /**
    A string that identifies one or more attributes to retrieve from the table. These attributes can include scalars,
    sets, or elements of a JSON document. The attributes in the expression must be separated by commas. If no
    attribute names are specified, then all attributes will be returned. If any of the requested attributes are not
    found, they will not appear in the result. For more information, see Accessing Item Attributes in the Amazon
    DynamoDB Developer Guide.
  **/
  @:optional var ProjectionExpression:String;
};

typedef ConditionalRequest = {
  /**
  This is a legacy parameter. Use ConditionExpression instead. For more information, see ConditionalOperator in
  the Amazon DynamoDB Developer Guide.
  **/
  @:optional var ConditionalOperator: ConditionalOperator;

  /**
    A condition that must be satisfied in order for a conditional DeleteItem to succeed.
    An expression can contain any of the following:

      Functions: attribute_exists | attribute_not_exists | attribute_type | contains | begins_with | size
      These function names are case-sensitive.
      Comparison operators: = | <> | < | > | <= | >= | BETWEEN | IN
      Logical operators: AND | OR | NOT
    For more information on condition expressions, see Specifying Conditions in the Amazon DynamoDB Developer Guide.
  **/
  @:optional var ConditionExpression: String;

  /**
  This is a legacy parameter. Use ConditionExpression instead. For more information, see Expected in the Amazon
  DynamoDB Developer Guide.
  **/
  @:optional var Expected: Dynamic<{
    var AttributeValueList: Array<AttributeValue>;
    var ComparisonOperator: String;
    var Exists: Bool;
    var Value:AttributeValue;
  }>;
}

@:enum abstract ReturnConsumedCapacity(String)
{
  var Indexes = "INDEXES";
  var Total = "TOTAL";
  var None = "NONE";
}

@:enum abstract ReturnItemCollectionMetrics(String)
{
  var Size = "SIZE";
  var None = "NONE";
}

@:enum abstract ReturnValues(String)
{
  var None = "NONE";
  var AllOld = "ALL_OLD";
  var UpdatedOld = "UPDATED_OLD";
  var AllNew = "ALL_NEW";
  var UpdatedNew = "UPDATED_NEW";
}

typedef DeleteItemRequest =
{
  > ConditionalRequest,
  > AttributeRequest,
   /**
    A map of attribute names to AttributeValue objects, representing the primary key of the item to delete.

    For the primary key, you must provide all of the attributes. For example, with a simple primary key, you only need
    to provide a value for the partition key. For a composite primary key, you must provide values for both the
    partition key and the sort key.
    Type: String to AttributeValue object map
    Key Length Constraints: Maximum length of 65535.
    Required: Yes
   **/
   var Key: Dynamic<AttributeValue>;

   /**
    The name of the table from which to delete the item.
   **/
   var TableName: String;

   @:optional var ReturnConsumedCapacity: ReturnConsumedCapacity;
   /**
    Determines whether item collection metrics are returned. If set to SIZE, the response includes statistics
    about item collections, if any, that were modified during the operation are returned in the response. If set to
    NONE (the default), no statistics are returned.
   **/
   @:optional var ReturnItemCollectionMetrics: ReturnItemCollectionMetrics;
   /**
    Use ReturnValues if you want to get the item attributes as they appeared before they were deleted. For
    DeleteItem, the valid values are:
      NONE - If ReturnValues is not specified, or if its value is NONE, then nothing is returned. (This setting is the
      default for ReturnValues.)
      ALL_OLD - The content of the old item is returned.

    Note

    The ReturnValues parameter is used by several DynamoDB operations; however, DeleteItem does not recognize any
    values other than NONE or ALL_OLD.
   **/
   @:optional var ReturnValues: ReturnValues;
}

typedef ConsumedCapacity = {
  var CapacityUnits: Float;
  var GlobalSecondaryIndexes: Dynamic<{ CapacityUnits:Float }>;
  var LocalSecondaryIndexes: Dynamic<{ CapacityUnits:Float }>;
  var Table:{ CapacityUnits:Float };
  var TableName: String;
}

typedef ItemCollectionMetrics = {
  var ItemCollectionKey: AttributeValue;
  var SizeEstimateRangeGB: Array< Float >;
};

typedef DeleteItemResponse = {
    /**
      A map of attribute names to AttributeValue objects, representing the item as it appeared before the DeleteItem
      operation. This map appears in the response only if ReturnValues was specified as ALL_OLD in the request.
    **/
   var Attributes: Dynamic<AttributeValue>;
   /**
    The capacity units consumed by the DeleteItem operation. The data returned includes the total provisioned
    throughput consumed, along with statistics for the table and any indexes involved in the operation.
    ConsumedCapacity is only returned if the ReturnConsumedCapacity parameter was specified. For more information, see
    Provisioned Throughput in the Amazon DynamoDB Developer Guide.
   **/
   var ConsumedCapacity: ConsumedCapacity;
   var ItemCollectionMetrics: ItemCollectionMetrics;
}

@:enum abstract KeyType(String)
{
  /**
    Partition key
  **/
  var Hash = "HASH";

  /**
    Sort key
  **/
  var Range = "RANGE";
}

@:enum abstract ProjectionType(String)
{
  /**
    Only the index and primary keys are projected into the index.
  **/
  var KeysOnly = "KEYS_ONLY";
  /**
    Only the specified table attributes are projected into the index. The list of projected attributes are in
    NonKeyAttributes.
  **/
  var Include = "INCLUDE";
  /**
    All of the table attributes are projected into the index.
  **/
  var ALL = "ALL";
}

@:enum abstract IndexStatus(String)
{
  var Creating = "CREATING";
  var Updating = "UPDATING";
  var Deleting = "DELETING";
  var Active = "ACTIVE";
}

typedef TableDescription = {
  /**
    An array of AttributeDefinition objects. Each of these objects describes one attribute in the table and index key
    schema.

    Each AttributeDefinition object in this array is composed of:
      AttributeName - The name of the attribute.
      AttributeType - The data type for the attribute.
      Type: Array of AttributeDefinition objects
    Required: No
  **/
  @:optional var AttributeDefinitions: Array<
      {
        var AttributeName: String;
        var AttributeType: String;
      }
  >;
  var CreationDateTime: Float;
  @:optional var GlobalSecondaryIndexes: Array<
      {
        /**
          If true, then the index is currently in the backfilling phase. Backfilling occurs only when a
          new global secondary index is added to the table; it is the process by which DynamoDB populates the new index
          with data from the table. (This attribute does not appear for indexes that were created during a CreateTable
          operation.)
        **/
        var Backfilling: Bool;
        var IndexArn: String;
        var IndexName: String;
        var IndexSizeBytes: Float;
        /**
          IndexStatus - The current status of the global secondary index:
            CREATING - The index is being created.
            UPDATING - The index is being updated.
            DELETING - The index is being deleted.
            ACTIVE - The index is ready for use.
        **/
        var IndexStatus: IndexStatus;
        var ItemCount: Int;
        var KeySchema: Array<
            {
              var AttributeName: String;
              var KeyType: KeyType;
            }
        >;
        /**
          Specifies attributes that are copied (projected) from the table into the index. These are in addition to the
          primary key attributes and index key attributes, which are automatically projected. Each attribute
          specification is composed of:
        **/
        var Projection: {
            var ProjectionType: ProjectionType;
            /**
              A list of one or more non-key attribute names that are projected into the secondary index. The total
              count of attributes provided in NonKeyAttributes, summed across all of the secondary indexes, must not
              exceed 20. If you project the same attribute into two different indexes, this counts as two distinct
              attributes when determining the total.
            **/
            var NonKeyAttributes: Array< String >;
        };
        /**
          The provisioned throughput settings for the global secondary index, consisting of read and write
          capacity units, along with data about increases and decreases.
        **/
        var ProvisionedThroughput: {
            var LastDecreaseDateTime: Float;
            var LastIncreaseDateTime: Float;
            var NumberOfDecreasesToday: Int;
            var ReadCapacityUnits: Float;
            var WriteCapacityUnits: Float;
        };
      }
  >;
  var ItemCount: Int;
  var KeySchema: Array<
      {
        /**
          The name of the attribute
        **/
        var AttributeName: String;
        var KeyType: KeyType;
      }
  >;
  var LatestStreamArn: String;
  var LatestStreamLabel: String;
  /**
    Represents one or more local secondary indexes on the table. Each index is scoped to a given partition key
    value. Tables with one or more local secondary indexes are subject to an item collection size limit, where the
    amount of data within a given item collection cannot exceed 10 GB.
  **/
  var LocalSecondaryIndexes: Array<
      {
        var IndexArn: String;
        var IndexName: String;
        var IndexSizeBytes: Float;
        var ItemCount: Int;
        var KeySchema: Array<
            {
              var AttributeName: String;
              var KeyType: KeyType;
            }
        >;
        /**
          Specifies attributes that are copied (projected) from the table into the index. These are in addition to the
          primary key attributes and index key attributes, which are automatically projected. Each attribute
          specification is composed of:
        **/
        var Projection: {
            var NonKeyAttributes: Array< String >;
            var ProjectionType: ProjectionType;
        };
      }
  >;
  var ProvisionedThroughput: {
      var LastDecreaseDateTime: Float;
      var LastIncreaseDateTime: Float;
      var NumberOfDecreasesToday: Float;
      var ReadCapacityUnits: Float;
      var WriteCapacityUnits: Float;
  };
  var RestoreSummary: {
      var RestoreDateTime: Float;
      var RestoreInProgress: Bool;
      var SourceBackupArn: String;
      var SourceTableArn: String;
  };
  var SSEDescription: {
      var KMSMasterKeyArn: String;
      var SSEType: String;
      var Status: String;
  };
  var StreamSpecification: {
      var StreamEnabled: Bool;
      var StreamViewType: String;
  };
  var TableArn: String;
  var TableId: String;
  var TableName: String;
  var TableSizeBytes: Float;
  var TableStatus: String;
}

typedef BatchGetItemRequest = {
  var RequestItems:Dynamic<{
    >AttributeRequest,

    /**
      If true, a strongly consistent read is used; if false (the default), an eventually consistent read is used.
    **/
    @:optional var ConsistentRead:Bool;

    /**
      An array of primary key attribute values that define specific items in the table. For each primary key, you
      must provide all of the key attributes. For example, with a simple primary key, you only need to provide the
      partition key value. For a composite key, you must provide both the partition key value and the sort key value.
    **/
    var Keys:Array<Dynamic<AttributeValue>>;
  }>;

  /**
    Determines the level of detail about provisioned throughput consumption that is returned in the response:
        INDEXES - The response includes the aggregate ConsumedCapacity for the operation, together with
        ConsumedCapacity for each table and secondary index that was accessed.
        Note that some operations, such as GetItem and BatchGetItem, do not access any indexes at all. In these
        cases, specifying INDEXES will only return ConsumedCapacity information for table(s).
        TOTAL - The response includes only the aggregate ConsumedCapacity for the operation.
        NONE - No ConsumedCapacity details are included in the response.

    Type: String
    Valid Values: INDEXES | TOTAL | NONE
    Required: No
  **/
  @:optional var ReturnConsumedCapacity:String;
}

typedef BatchGetItemResponse = {
  /**
    The read capacity units consumed by the entire BatchGetItem operation.

    Each element consists of:
        TableName - The table that consumed the provisioned throughput.
        CapacityUnits - The total Float of capacity units consumed.
    Type: Array of ConsumedCapacity objects
  **/
  var ConsumedCapacity:{
    var CapacityUnits:Float;
    var GlobalSecondaryIndexes:Dynamic<{ CapacityUnits:Float }>;
    var LocalSecondaryIndexes:Dynamic<{ CapacityUnits:Float }>;
    var Table:{ CapacityUnits:Float };
    var TableName:String;
  };

  /**
    A map of table name to a list of items. Each object in Responses consists of a table name, along with a map of
    attribute data consisting of the data type and attribute value.

    Type: String to array of string to AttributeValue object maps map
    Key Length Constraints: Minimum length of 3. Maximum length of 255.
    Key Length Constraints: Maximum length of 65535.
  **/
  var Responses:Dynamic<Array<AttributeValue>>;

  /**
    A map of tables and their respective keys that were not processed with the current response. The UnprocessedKeys
    value is in the same form as RequestItems, so the value can be provided directly to a subsequent BatchGetItem
    operation. For more information, see RequestItems in the Request Parameters section.

    Each element consists of:
        Keys - An array of primary key attribute values that define specific items in the table.
        ProjectionExpression - One or more attributes to be retrieved from the table or index. By default, all
        attributes are returned. If a requested attribute is not found, it does not appear in the result.
        ConsistentRead - The consistency of a read operation. If set to true, then a strongly consistent read is
        used; otherwise, an eventually consistent read is used.

    If there are no unprocessed keys remaining, the response contains an empty UnprocessedKeys map.
    Type: String to KeysAndAttributes object map

    Key Length Constraints: Minimum length of 3. Maximum length of 255.
  **/
  var UnprocessedKeys:Dynamic<{
    var AttributesToGet:Array<String>;
    var ConsistentRead:Bool;
    var ExpressionAttributeNames:Dynamic<String>;
    var Keys:Array<Dynamic<AttributeValue>>;
  }>;
}

abstract Base64String(String)
{
  inline public static function fromBase64String(s:String):Base64String
  {
    return cast s;
  }

  @:from inline public static function fromBytes(b:haxe.io.Bytes):Base64String
  {
    return cast haxe.crypto.Base64.encode(b, true);
  }

  inline public function asString()
  {
    return this;
  }

  inline public function toBytes()
  {
    return haxe.crypto.Base64.decode(this);
  }
}

abstract FloatAsString(String)
{
  @:from inline public static function fromFloat(f:Float):FloatAsString
  {
    return cast f +"";
  }

  inline public function asString()
  {
    return this;
  }

  inline public function toFloat()
  {
    return Std.parseFloat(this);
  }
}

typedef DDBBinary = { B: Base64String };
typedef DDBBool = { BOOL: Bool };
typedef DDBBinarySet = { BS:Array<DDBBinary> };
typedef DDBList = { L:Array<Dynamic> };
typedef DDBMap = { M:Dynamic<AttributeValue> };
typedef DDBNumber = { N:FloatAsString };
typedef DDBNumberSet = { NS:Array<FloatAsString> };
typedef DDBNull = { NULL: Bool };
typedef DDBString = { S: String };
typedef DDBStringSet = { SS:Array<String> };

typedef DDBAttributeResponse = {
  >DDBBinary,
  >DDBBool,
  >DDBBinarySet,
  >DDBList,
  >DDBMap,
  >DDBNumber,
  >DDBNumberSet,
  >DDBNull,
  >DDBString,
  >DDBStringSet,
};

abstract AttributeValue(Dynamic) from DDBBinary from DDBBool from DDBBinarySet from DDBList from DDBMap from DDBNumber from DDBNumberSet
                                 from DDBNull from DDBString from DDBStringSet
{
  inline public function asResponse():DDBAttributeResponse
  {
    return this;
  }
}


// typedef DynamicGenericData = {
//   @:
// }
