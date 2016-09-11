package js.npm.aws_sdk;

@:jsRequire("aws-sdk","GameLift")
extern class GameLift extends Service {
  /**
    Constructs a service object.
   **/
  @:overload(function ():Void {})
  function new(options:Dynamic):Void;

  /**
    Creates an alias for a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function createAlias(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Initializes a new build record and generates information required to upload a game build to Amazon GameLift.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function createBuild(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Creates a new fleet to run your game servers.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function createFleet(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Creates a multiplayer game session for players. This action creates a game session record and assigns the new
    session to an instance in the specified fleet, which initializes a new server process to host the game session. A
    fleet must be in an ACTIVE status before a game session can be created in it.

    To create a game session, specify either a fleet ID or an alias ID and indicate the maximum number of players the
    game session allows. You can also provide a name and a set of properties for your game (optional). If successful, a
    GameSession object is returned containing session properties, including an IP address. By default, newly created
    game sessions are set to accept adding any new players to the game session. Use UpdateGameSession to change the
    creation policy.
   **/
  @:overload(function():Request {})
  function createGameSession(params:{
    /**
      Unique identifier for a fleet. Each request must reference either a fleet ID or alias ID, but not both.
     **/
    @:optional var FleetId(default, null):String;

    /**
      Unique identifier for a fleet alias. Each request must reference either a fleet ID or alias ID, but not both.
     **/
    @:optional var AliasId(default, null):String;

    /**
      Maximum number of players that can be connected simultaneously to the game session.
     **/
    var MaximumPlayerSessionCount(default, null):Int;

    /**
      Descriptive label associated with a game session. Session names do not need to be unique.
     **/
    var Name(default, null):String;

    /**
      Set of properties used to administer a game session. These properties are passed to the server process hosting it.
     **/
    var GameProperties(default, null):Array<{ Key:String, Value:String }>;
  }, callback:js.Error->{
    /**
      Object containing the newly created game session record.
     **/
    var GameSession:GameSessionResponse;
  }->Void):Request;

  /**
    Adds a player to a game session and creates a player session record.
   **/
  @:overload(function():Request {})
  function createPlayerSession(params:{
    /**
      Unique identifier for a game session. Specify the game session you want to add a player to.
     **/
    var GameSessionId(default, null):String;
    /**
      Unique identifier for the player to be added.
     **/
    var PlayerId(default, null):String;
  }, callback:js.Error->{
    /**
      Object containing the newly created player session record.
     **/
    var PlayerSession:PlayerSessionResponse;
  }->Void):Request;

  /**
    Adds a group of players to a game session.
   **/
  @:overload(function():Request {})
  function createPlayerSessions(params:{
    /**
      Unique identifier for a game session. Specify the game session you want to add a player to.
     **/
    var GameSessionId(default, null):String;
    /**
      Unique identifier for the player to be added.
     **/
    var PlayerIds(default, null):Array<String>;
  }, callback:js.Error->{
    /**
      Object containing the newly created player session record.
     **/
    var PlayerSessions:Array<PlayerSessionResponse>;
  }->Void):Request;

  /**
    Deletes an alias.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function deleteAlias(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Deletes a build.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function deleteBuild(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Deletes everything related to a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function deleteFleet(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Deletes a fleet scaling policy.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function deleteScalingPolicy(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves properties for a specified alias.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeAlias(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves properties for a build.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeBuild(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves the following information for the specified EC2 instance type: maximum number of instances allowed per AWS
    account (service limit) current usage level for the AWS account Service limits vary depending on region.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeEC2InstanceLimits(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves fleet properties, including metadata, status, and configuration, for one or more fleets.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeFleetAttributes(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves the current status of fleet capacity for one or more fleets.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeFleetCapacity(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves entries from the specified fleet's event log.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeFleetEvents(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves the inbound connection permissions for a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeFleetPortSettings(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves utilization statistics for one or more fleets.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeFleetUtilization(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves properties, including the protection policy in force, for one or more game sessions.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeGameSessionDetails(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves properties for one or more game sessions.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeGameSessions(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves properties for one or more player sessions.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describePlayerSessions(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves the current runtime configuration for the specified fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeRuntimeConfiguration(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves all scaling policies applied to a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function describeScalingPolicies(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves the location of stored game session logs for a specified game session.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function getGameSessionLogUrl(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves a collection of alias records for this AWS account.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function listAliases(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves build records for all builds associated with the AWS account in use.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function listBuilds(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves a collection of fleet records for this AWS account.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function listFleets(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Creates or updates a scaling policy for a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function putScalingPolicy(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves a fresh set of upload credentials and the assigned Amazon S3 storage location for a specific build.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function requestUploadCredentials(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves the fleet ID that a specified alias is currently pointing to.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function resolveAlias(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Retrieves a list of game sessions in a fleet that match a set of search criteria and sorts them in a specified
    order.

    Currently game session searches are limited to a single fleet. Search results include only game sessions that are in
    ACTIVE status.

    You can search or sort by the following game session attributes:

    gameSessionId -- ID value assigned to a game session. This unique value is returned in a GameSession object when a
    new game session is created.

    gameSessionName -- Name assigned to a game session. This value is set when requesting
    a new game session with CreateGameSession or updating with UpdateGameSession. Game session names do not need to be
    unique to a game session.

    creationTimeMillis -- Value indicating when a game session was created. It is expressed
    in Unix time as milliseconds.

    playerSessionCount -- Number of players currently connected to a game session. This
    value changes rapidly as players join the session or drop out.

    maximumSessions -- Maximum number of player sessions
    allowed for a game session. This value is set when requesting a new game session with CreateGameSession or updating
    with UpdateGameSession.

    hasAvailablePlayerSessions -- Boolean value indicating whether or not a game session has
    reached its maximum number of players. When searching with this attribute, the search value must be true or false.
    It is highly recommended that all search requests include this filter attribute to optimize search performance and
    return only sessions that players can join.  To search or sort, specify either a fleet ID or an alias ID, and
    provide a search filter expression, a sort expression, or both. Use the pagination parameters to retrieve results as
    a set of sequential pages. If successful, a collection of GameSession objects matching the request is returned.
   **/
  @:overload(function():Request {})
  function searchGameSessions(params:{
    /**
      Unique identifier for a fleet. Each request must reference either a fleet ID or alias ID, but not both.
     **/
    @:optional var FleetId:String;

    /**
      Unique identifier for a fleet alias. Each request must reference either a fleet ID or alias ID, but not both.
     **/
    @:optional var AliasId:String;

    /**
      Operand -- Name of a game session attribute. Valid values are gameSessionName, gameSessionId, creationTimeMillis,
      playerSessionCount, maximumSessions, hasAvailablePlayerSessions.
      Comparator -- Valid comparators are: =, <>, <, >, <=, >=.
      Value -- Value to be searched for. Values can be numbers, boolean values (true/false) or strings. String values are
      case sensitive, enclosed in single quotes. Special characters must be escaped. Boolean and string values can only be
      used with the comparators = and <>. For example, the following filter expression searches on gameSessionName:
      "FilterExpression": "gameSessionName = 'Matt\'s Awesome Game 1'".

      To chain multiple conditions in a single expression, use the logical keywords AND, OR, and NOT and parentheses as
      needed. For example: x AND y AND NOT z, NOT (x OR y).

      Session search evaluates conditions from left to right using the following precedence rules:
        =, <>, <, >, <=, >=
        Parentheses
        NOT
        AND
        OR
      For example, this filter expression retrieves game sessions hosting at least ten players that have an open player
      slot: "maximumSessions>=10 AND hasAvailablePlayerSessions=true".
     **/
    @:optional var FilterExpression:String;

    /**
      Instructions on how to sort the search results. If no sort expression is included, the request returns results in
      random order. A sort expression consists of the following elements:

      Operand -- Name of a game session attribute. Valid values are gameSessionName, gameSessionId, creationTimeMillis,
      playerSessionCount, maximumSessions, hasAvailablePlayerSessions.
      Order -- Valid sort orders are ASC (ascending) and DESC (descending).

      For example, this sort expression returns the oldest active sessions first: "SortExpression": "creationTimeMillis
      ASC". Results with a null value for the sort operand are returned at the end of the list.
     **/
    @:optional var SortExpression:String;

    /**
      Maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential
      pages. The maximum number of results returned is 20, even if this value is not set or is set higher than 20.
     **/
    @:optional var Limit:Int;

    /**
      Token indicating the start of the next sequential page of results. Use the token that is returned with a previous
      call to this action. To specify the start of the result set, do not specify a value.
     **/
    @:optional var NextToken:String;
  }, callback:js.Error->{
    /**
      Collection of objects containing game session properties for each session matching the request.
     **/
    var GameSessions:Array<GameSessionResponse>;

    /**
      Token indicating where to resume retrieving results on the next call to this action. If no token is returned,
      these results represent the end of the list.
     **/
    var NextToken:String;
  }->Void):Request;

  /**
    Updates properties for an alias.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function updateAlias(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Updates metadata in a build record, including the build name and version.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function updateBuild(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Updates fleet properties, including name and description, for a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function updateFleetAttributes(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Updates capacity settings for a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function updateFleetCapacity(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Updates port settings for a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function updateFleetPortSettings(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Updates game session properties.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function updateGameSession(params:Dynamic, callback:js.Error->Dynamic->Void):Request;

  /**
    Updates the current runtime configuration for the specified fleet, which tells GameLift how to launch server
    processes on instances in the fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:js.Error->Dynamic->Void):Request {})
  function updateRuntimeConfiguration(params:Dynamic, callback:js.Error->Dynamic->Void):Request;
}

typedef GameSessionResponse = {
  /**
    Unique identifier for a game session.
   **/
  var GameSessionId:String;

  /**
    Descriptive label associated with a game session. Session names do not need to be unique.
   **/
  var Name:String;

  /**
    Unique identifier for a fleet.
   **/
  var FleetId:String;

  /**
    Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds
    (ex: "1469498468.057".
   **/
  var CreationTime:Float;

  /**
    Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as
    milliseconds (ex: "1469498468.057".
   **/
  var TerminationTime:Null<Float>;

  /**
    Number of players currently in the game session.
   **/
  var CurrentPlayerSessionCount:Int;

  /**
    Maximum number of players allowed in the game session.
   **/
  var MaximumPlayerSessionCount:Int;

  /**
    Current status of the game session. A game session must be in an ACTIVE status to have player sessions.
   **/
  var Status:GameSessionStatus;

  /**
    Set of custom properties for the game session.
   **/
  var GameProperties:Array<{ Key:String, Value:String }>;

  /**
    IP address of the game session. To connect to a GameLift server process, an app needs both the IP address and port
    number.
   **/
  var IpAddress:String;

  /**
    Port number for the game session. To connect to a GameLift server process, an app needs both the IP address and port
    number.
   **/
  var Port:Int;

  /**
    Indicates whether or not the game session is accepting new players.
   **/
  var PlayerSessionCreationPolicy:PlayerSessionCreationPolicy;
};

@:enum abstract GameSessionStatus(String) {
  var Active = "ACTIVE";
  var Activating = "ACTIVATING";
  var Terminated = "TERMINATED";
  var Terminating = "TERMINATING";
}

@:enum abstract PlayerSessionCreationPolicy(String) {
  var AcceptAll = "ACCEPT_ALL";
  var DenyAll = "DENY_ALL";
}

typedef PlayerSessionResponse = {
  /**
    Unique identifier for a player session.
   **/
  var PlayerSessionId:String;

  /**
    Unique identifier for a player.
   **/
  var PlayerId:String;

  /**
    Unique identifier for a game session.
   **/
  var GameSessionId:String;

  /**
    Unique identifier for a fleet.
   **/
  var FleetId:String;

  /**
    Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds
    (ex: "1469498468.057".
   **/
  var CreationTime:Float;

  /**
    Time stamp indicating when this data object was terminated. Format is a number expressed in Unix time as
    milliseconds (ex: "1469498468.057".
   **/
  var TerminationTime:Float;

  /**
    Current status of the player session.
   **/
  var Status:PlayerSessionStatus;

  /**
    Game session IP address. All player sessions reference the game session location.
   **/
  var IpAddress:String;

  /**
    Port number for the game session. To connect to a GameLift server process, an app needs both the IP address and port
    number.
   **/
  var Port:Int;
};

@:enum abstract PlayerSessionStatus(String) {
  /**
     The player session request has been received, but the player has not yet connected to the server process
     and/or been validated
   **/
  var Reserved = "RESERVED";
  /**
     The player has been validated by the server process and is currently connected.
   **/
  var Active = "ACTIVE";
  /**
     The player connection has been dropped.
   **/
  var Completed = "COMPLETED";
  /**
     A player session request was received, but the player did not connect and/or was not validated within the
     time-out limit (60 seconds).
   **/
  var Timedout = "TIMEDOUT";
}
