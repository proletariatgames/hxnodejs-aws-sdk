package js.npm.aws_sdk;
import haxe.DynamicAccess;

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
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function createAlias(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Initializes a new build record and generates information required to upload a game build to Amazon GameLift.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function createBuild(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Creates a new fleet to run your game servers.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function createFleet(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

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
  }, callback:GameLiftError->{
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
  }, callback:GameLiftError->{
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
  }, callback:GameLiftError->{
    /**
      Object containing the newly created player session record.
     **/
    var PlayerSessions:Array<PlayerSessionResponse>;
  }->Void):Request;

  /**
    Deletes an alias.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function deleteAlias(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Deletes a build.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function deleteBuild(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Deletes everything related to a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function deleteFleet(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Deletes a fleet scaling policy.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function deleteScalingPolicy(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves properties for a specified alias.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeAlias(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves properties for a build.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeBuild(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves the following information for the specified EC2 instance type: maximum number of instances allowed per AWS
    account (service limit) current usage level for the AWS account Service limits vary depending on region.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeEC2InstanceLimits(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves fleet properties, including metadata, status, and configuration, for one or more fleets.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeFleetAttributes(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves the current status of fleet capacity for one or more fleets.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeFleetCapacity(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves entries from the specified fleet's event log.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeFleetEvents(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves the inbound connection permissions for a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeFleetPortSettings(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves utilization statistics for one or more fleets.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeFleetUtilization(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves properties, including the protection policy in force, for one or more game sessions.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeGameSessionDetails(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves properties for one or more game sessions.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeGameSessions(params:{ ?AliasId:String, ?FleetId:String, ?GameSessionId:String, ?Limit:Int,
    ?NextToken:String, ?StatusFilter:GameSessionStatus }, callback:GameLiftError->{ GameSessions:Array<GameSessionResponse>,
      NextToken:String }->Void):Request;

  /**
    Retrieves properties for one or more player sessions.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describePlayerSessions(params:{
    /**
      Unique identifier for the game session to get player sessions for.Game session ID format is as follows:
      "arn:aws:gamelift:<region>::gamesession/fleet-<fleet ID>/<ID string>". The value of <ID string> is either a custom
      ID string (if one was specified when the game session was created) an auto-generated string.
     **/
    @:optional var GameSessionId(default, null):String;

    /**
      Unique identifier for a player.
     **/
    @:optional var PlayerId(default, null):String;

    /**
      Unique identifier for a player session.
     **/
    @:optional var PlayerSessionId(default, null):String;

    /**
      Player session status to filter results on.
     **/
    @:optional var PlayerSessionStatusFilter(default, null):PlayerSessionStatus;

    /**
      Maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential
      pages. If a player session ID is specified, this parameter is ignored.
     **/
    @:optional var Limit(default, null):Int;

    /**
      Token indicating the start of the next sequential page of results. Use the token that is returned with a previous
      call to this action. To specify the start of the result set, do not specify a value. If a player session ID is
      specified, this parameter is ignored.
     **/
    @:optional var NextToken(default, null):String;
  }, callback:GameLiftError->{
    /**
      Collection of objects containing properties for each player session that matches the request.
     **/
    var PlayerSessions:Array<{
      /**
        Unique identifier for a player session.
       **/
      var PlayerSessionId:String;

      /**
        Unique identifier for a player.
       **/
      var PlayerId:String;

      /**
        Unique identifier for the game session that the player session is connected to.
       **/
      var GameSessionId:String;

      /**
        Unique identifier for a fleet.
       **/
      var FleetId:String;

      /**
        Time stamp indicating when this data object was created. Format is a number expressed in Unix time as
        milliseconds (ex: "1469498468.057".
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
        Port number for the game session. To connect to a GameLift server process, an app needs both the IP address and
        port number.
       **/
      var Port:Int;
    }>;

    /**
      Token indicating where to resume retrieving results on the next call to this action. If no token is returned,
      these results represent the end of the list.
     **/
    var NextToken:String;
  }->Void):Request;

  /**
    Retrieves the current runtime configuration for the specified fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeRuntimeConfiguration(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves all scaling policies applied to a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function describeScalingPolicies(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves the location of stored game session logs for a specified game session.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function getGameSessionLogUrl(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves a collection of alias records for this AWS account.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function listAliases(params:{
    /**
      Maximum number of results to return. Use this parameter with NextToken to get results as a set of sequential
      pages.
     **/
    @:optional var Limit:Int;

    /**
      Descriptive label associated with an alias. Alias names do not need to be unique.
     **/
    @:optional var Name:String;

    /**
      Token indicating the start of the next sequential page of results. Use the token that is returned with a previous
      call to this action. To specify the start of the result set, do not specify a value.
     **/
    @:optional var NextToken:String;

    /**
      Type of routing to filter results on. Use this parameter to retrieve only aliases of a certain type. To retrieve
      all aliases, leave this parameter empty.
     **/
    @:optional var RoutingStrategyType:RoutingStrategyType;
  }, callback:GameLiftError->{
    NextToken:String,
    Aliases:Array<AliasResponse>
  }->Void):Request;

  /**
    Retrieves build records for all builds associated with the AWS account in use.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function listBuilds(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves a collection of fleet records for this AWS account.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function listFleets(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Creates or updates a scaling policy for a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function putScalingPolicy(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves a fresh set of upload credentials and the assigned Amazon S3 storage location for a specific build.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function requestUploadCredentials(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Retrieves the fleet ID that a specified alias is currently pointing to.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function resolveAlias(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

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
  }, callback:GameLiftError->{
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
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function updateAlias(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Updates metadata in a build record, including the build name and version.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function updateBuild(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Updates fleet properties, including name and description, for a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function updateFleetAttributes(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Updates capacity settings for a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function updateFleetCapacity(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Updates port settings for a fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function updateFleetPortSettings(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Updates game session properties.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function updateGameSession(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Updates the current runtime configuration for the specified fleet, which tells GameLift how to launch server
    processes on instances in the fleet.
   **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function updateRuntimeConfiguration(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  ///////////////////
  //// FlexMatch ////
  ///////////////////

  /**
    Defines a new matchmaking configuration for use with FlexMatch. A
    matchmaking configuration sets out guidelines for matching players and
    getting the matches into games. You can set up multiple matchmaking
    configurations to handle the scenarios needed for your game. Each
    matchmaking ticket (StartMatchmaking or StartMatchBackfill) specifies a
    configuration for the match and provides player attributes to support the
    configuration being used.

    To create a matchmaking configuration, at a minimum you must specify the
    following: configuration name; a rule set that governs how to evaluate
    players and find acceptable matches; a game session queue to use when
    placing a new game session for the match; and the maximum time allowed
    for a matchmaking attempt.

    To track the progress of matchmaking tickets, set up an Amazon Simple
    Notification Service (SNS) to receive notifications, and provide the
    topic ARN in the matchmaking configuration. An alternative method,
    continuously poling ticket status with DescribeMatchmaking, should only
    be used for games in development with low matchmaking usage.
  **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function createMatchmakingConfiguration(params:Dynamic, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Uses FlexMatch to create a game match for a group of players based on custom matchmaking rules, and starts a new
    game for the matched players. Each matchmaking request specifies the type of match to build (team configuration,
    rules for an acceptable match, etc.). The request also specifies the players to find a match for and where to
    host the new game session for optimal performance. A matchmaking request might start with a single player or a
    group of players who want to play together. FlexMatch finds additional players as needed to fill the match. Match
    type, rules, and the queue used to place a new game session are defined in a MatchmakingConfiguration.

    To start matchmaking, provide a unique ticket ID, specify a matchmaking configuration, and include the players to
    be matched. You must also include a set of player attributes relevant for the matchmaking configuration. If
    successful, a matchmaking ticket is returned with status set to QUEUED.

    Track the status of the ticket to respond as needed and acquire game session connection information for
    successfully completed matches. Ticket status updates are tracked using event notification through Amazon Simple
    Notification Service (SNS), which is defined in the matchmaking configuration.

    Processing a matchmaking request -- FlexMatch handles a matchmaking request as follows:

    1. Your client code submits a StartMatchmaking request for one or more players and tracks the status of the request
    ticket.
    2. FlexMatch uses this ticket and others in process to build an acceptable match. When a potential match is
    identified, all tickets in the proposed match are advanced to the next status.
    3. If the match requires player acceptance (set in the matchmaking configuration), the tickets move into status
    REQUIRES_ACCEPTANCE. This status triggers your client code to solicit acceptance from all players in every ticket
    involved in the match, and then call AcceptMatch for each player. If any player rejects or fails to accept the
    match before a specified timeout, the proposed match is dropped (see AcceptMatch for more details).
    4. Once a match is proposed and accepted, the matchmaking tickets move into status PLACING. FlexMatch locates
    resources for a new game session using the game session queue (set in the matchmaking configuration) and creates
    the game session based on the match data.
    5. When the match is successfully placed, the matchmaking tickets move into COMPLETED status. Connection information
    (including game session endpoint and player session) is added to the matchmaking tickets. Matched players can use
    the connection information to join the game.
  **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->StartMatchmakingResponse->Void):Request {})
  function startMatchmaking(params:StartMatchmakingRequest, callback:GameLiftError->StartMatchmakingResponse->Void):Request;

  /**
    Retrieves one or more matchmaking tickets. Use this operation to retrieve ticket information, including--after a
    successful match is made--connection information for the resulting new game session.

    To request matchmaking tickets, provide a list of up to 10 ticket IDs. If the request is successful, a ticket
    object is returned for each requested ID that currently exists.

    This operation is not designed to be continually called to track matchmaking ticket status. This practice can
    cause you to exceed your API limit, which results in errors. Instead, as a best practice, set up an Amazon Simple
    Notification Service (SNS) to receive notifications, and provide the topic ARN in the matchmaking configuration.
    Continuously poling ticket status with DescribeMatchmaking should only be used for games in development with low
    matchmaking usage.
  **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->{ TicketList:Array<MatchmakingTicket> }->Void):Request {})
  function describeMatchmaking(params:{ TicketIds:Array<String> }, callback:GameLiftError->{ TicketList:Array<MatchmakingTicket> }->Void):Request;

  /**
    Registers a player's acceptance or rejection of a proposed FlexMatch match. A matchmaking configuration may
    require player acceptance; if so, then matches built with that configuration cannot be completed unless all
    players accept the proposed match within a specified time limit.

    When FlexMatch builds a match, all the matchmaking tickets involved in the proposed match are placed into status
    REQUIRES_ACCEPTANCE. This is a trigger for your game to get acceptance from all players in the ticket.
    Acceptances are only valid for tickets when they are in this status; all other acceptances result in an error.

    To register acceptance, specify the ticket ID, a response, and one or more players. Once all players have
    registered acceptance, the matchmaking tickets advance to status PLACING, where a new game session is created for
    the match.

    If any player rejects the match, or if acceptances are not received before a specified timeout, the proposed
    match is dropped. The matchmaking tickets are then handled in one of two ways: For tickets where one or more
    players rejected the match, the ticket status is returned to SEARCHING to find a new match. For tickets where one
    or more players failed to respond, the ticket status is set to CANCELLED, and processing is terminated. A new
    matchmaking request for these players can be submitted as needed.
  **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function acceptMatch(params:{ AcceptanceType:String, PlayerIds:Array<String>, TicketId:String }, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Cancels a matchmaking ticket or match backfill ticket that is currently being processed. To stop the matchmaking
    operation, specify the ticket ID. If successful, work on the ticket is stopped, and the ticket status is changed
    to CANCELLED.

    This call is also used to turn off automatic backfill for an individual game session. This is for game sessions
    that are created with a matchmaking configuration that has automatic backfill enabled. The ticket ID is included
    in the MatchmakerData of an updated game session object, which is provided to the game server.
  **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->Dynamic->Void):Request {})
  function stopMatchmaking(params:{ TicketId:String }, callback:GameLiftError->Dynamic->Void):Request;

  /**
    Finds new players to fill open slots in an existing game session. This operation can be used to add players to
    matched games that start with fewer than the maximum number of players or to replace players when they drop out.
    By backfilling with the same matchmaker used to create the original match, you ensure that new players meet the
    match criteria and maintain a consistent experience throughout the game session. You can backfill a match anytime
    after a game session has been created.

    To request a match backfill, specify a unique ticket ID, the existing game session's ARN, a matchmaking
    configuration, and a set of data that describes all current players in the game session. If successful, a match
    backfill ticket is created and returned with status set to QUEUED. The ticket is placed in the matchmaker's
    ticket pool and processed. Track the status of the ticket to respond as needed.

    The process of finding backfill matches is essentially identical to the initial matchmaking process. The
    matchmaker searches the pool and groups tickets together to form potential matches, allowing only one backfill
    ticket per potential match. Once the a match is formed, the matchmaker creates player sessions for the new
    players. All tickets in the match are updated with the game session's connection information, and the GameSession
    object is updated to include matchmaker data on the new players. For more detail on how match backfill requests
    are processed, see How Amazon GameLift FlexMatch Works.
  **/
  @:overload(function():Request {})
  @:overload(function(callback:GameLiftError->{ MatchmakingTicket:MatchmakingTicket }->Void):Request {})
  function startMatchBackfill(params:StartMatchBackfillRequest, callback:GameLiftError->{ MatchmakingTicket:MatchmakingTicket }->Void):Request;

  /**
    Locates an available game server and temporarily reserves it to host gameplay
    and players. This operation is called from a game client or client service (such
    as a matchmaker) to request hosting resources for a new game session. In
    response, GameLift FleetIQ locates an available game server, places it in
    CLAIMED status for 60 seconds, and returns connection information that players
    can use to connect to the game server.

    To claim a game server, identify a game server group. You can also specify a
    game server ID, although this approach bypasses GameLift FleetIQ placement
    optimization. Optionally, include game data to pass to the game server at the
    start of a game session, such as a game map or player information.

    When a game server is successfully claimed, connection information is returned.
    A claimed game server's utilization status remains AVAILABLE while the claim
    status is set to CLAIMED for up to 60 seconds. This time period gives the game
    server time to update its status to UTILIZED (using UpdateGameServer) once
    players join. If the game server's status is not updated within 60 seconds, the
    game server reverts to unclaimed status and is available to be claimed by
    another request. The claim time period is a fixed value and is not
    configurable.

    If you try to claim a specific game server, this request will fail in the
    following cases:

    If the game server utilization status is UTILIZED.

    If the game server claim status is CLAIMED.
  **/
  function claimGameServer(params:{
    /**
      A unique identifier for the game server group where the game server is running. Use either the GameServerGroup name or ARN value.
      If you are not specifying a game server to claim, this value identifies where you want GameLift FleetIQ to look for an available game server to claim.
    **/
    GameServerGroupName:String,
    /**
      A set of custom game server properties, formatted as a single string value. This data is passed to a game client or service when it requests information
      on game servers using ListGameServers or ClaimGameServer.
    **/
    ?GameServerData:String,
    ?GameServerId:String,
  }, callback:GameLiftError->{ GameServer:FleetIqGameServer }->Void):Request;

  /**
    Removes the game server from a game server group. As a result of this
    operation, the deregistered game server can no longer be claimed and will
    not be returned in a list of active game servers.

    To deregister a game server, specify the game server group and game server
    ID. If successful, this operation emits a CloudWatch event with termination
    timestamp and reason.
  **/
  function deregisterGameServer(params:{
    /**
      A unique identifier for the game server group where the game server is running. Use either the GameServerGroup name or ARN value.
      If you are not specifying a game server to claim, this value identifies where you want GameLift FleetIQ to look for an available game server to claim.
    **/
    GameServerGroupName:String,
    GameServerId:String,
  }, callback:GameLiftError->{ GameServer:FleetIqGameServer }->Void):Request;

  /**
    Updates information about a registered game server to help GameLift FleetIQ
    to track game server availability. This operation is called by a game server
    process that is running on an instance in a game server group.

    Use this operation to update the following types of game server information.
    You can make all three types of updates in the same request:

    To update the game server's utilization status, identify the game server and
    game server group and specify the current utilization status. Use this
    status to identify when game servers are currently hosting games and when
    they are available to be claimed.

    To report health status, identify the game server and game server group and
    set health check to HEALTHY. If a game server does not report health status
    for a certain length of time, the game server is no longer considered
    healthy. As a result, it will be eventually deregistered from the game
    server group to avoid affecting utilization metrics. The best practice is to
    report health every 60 seconds.

    To change game server metadata, provide updated game server data.

    Once a game server is successfully updated, the relevant statuses and
    timestamps are updated.
  **/
  function updateGameServer(params:{
    GameServerGroupName:String,
    GameServerId:String,
    ?GameServerData:String,
    ?HealthCheck:FleetIqHealthStatus,
    ?UtilizationStatus:FleetIqUtilizationStatus
  }, callback:GameLiftError->{ GameServer:FleetIqGameServer }->Void):Request;
}

@:enum abstract FleetIqHealthStatus(String)
{
  var Healthy = "HEALTHY";
}

@:enum abstract FleetIqClaimStatus(String)
{
  var Claimed = "CLAIMED";
}

typedef FleetIqGameServer = {
  /**
    Indicates when an available game server has been reserved for gameplay but
    has not yet started hosting a game. Once it is claimed, the game server
    remains in CLAIMED status for a maximum of one minute. During this time,
    game clients connect to the game server to start the game and trigger the
    game server to update its utilization status. After one minute, the game
    server claim status reverts to null.
  **/
  var ?ClaimStatus:FleetIqClaimStatus;

  /**
    The port and IP address that must be used to establish a client connection to the game server.
  **/
  var ?ConnectionInfo:String;

  /**
    A set of custom game server properties, formatted as a single string value.
    This data is passed to a game client or service when it requests information
    on game servers using ListGameServers or ClaimGameServer
  **/
  var ?GameServerData:String;

  /**
    The ARN identifier for the game server group where the game server is located.
  **/
  var ?GameServerGroupArn:String;

  /**
    A unique identifier for the game server group where the game server is
    running. Use either the GameServerGroup name or ARN value.
  **/
  var ?GameServerGroupName:String;

  /**
    A custom string that uniquely identifies the game server. Game server IDs
    are developer-defined and are unique across all game server groups in an AWS
    account
  **/
  var ?GameServerId:String;

  /**
    The unique identifier for the instance where the game server is running.
    This ID is available in the instance metadata. EC2 instance IDs use a
    17-character format, for example: i-1234567890abcdef0.
  **/
  var ?InstanceId:String;

  /**
    Timestamp that indicates the last time the game server was claimed with a
    ClaimGameServer request. The format is a number expressed in Unix time as
    milliseconds (for example "1469498468.057"). This value is used to calculate
    when a claimed game server's status should revert to null.
  **/
  var ?LastClaimTime:Float;

  /**
    Timestamp that indicates the last time the game server was updated with
    health status using an UpdateGameServer request. The format is a number
    expressed in Unix time as milliseconds (for example "1469498468.057"). After
    game server registration, this property is only changed when a game server
    update specifies a health check value.
  **/
  var ?LastHealthCheckTime:Float;

  /**
    Timestamp that indicates when the game server was created with a
    RegisterGameServer request. The format is a number expressed in Unix time as
   */
  var ?RegistrationTime:Float;

  /**
    Indicates whether the game server is currently available for new games or is
    busy. Possible statuses include:

    AVAILABLE - The game server is available to be claimed. A game server that
    has been claimed remains in this status until it reports game hosting
    activity.

    UTILIZED - The game server is currently hosting a game session with players.
  **/
  var ?UtilizationStatus:FleetIqUtilizationStatus;
}

@:enum abstract FleetIqUtilizationStatus(String)
{
  var Available = "AVAILABLE";
  var Utilized = "UTILIZED";
}

typedef StartMatchBackfillRequest = {
   ConfigurationName: String,
   ?GameSessionArn: String,
   Players: Array<
      {
         LatencyInMs: DynamicAccess<Float>,
         PlayerAttributes: DynamicAccess<PlayerAttribute>,
         PlayerId: String,
         Team: String
      }
   >,
   TicketId: String
}

typedef StartMatchmakingRequest = {
   ConfigurationName: String,
   Players: Array<
      {
         LatencyInMs: DynamicAccess<Float>,
         PlayerAttributes: DynamicAccess<PlayerAttribute>,
         PlayerId: String,
         Team: String
      }
   >,
   TicketId: String
}

typedef PlayerAttribute = {
  ?N:Float,
  ?S:String,
  ?SDM:Dynamic<Float>,
  ?SL:Array<String>
}

typedef MatchmakingTicket = {
  /**
    The Amazon Resource Name (ARN) associated with the GameLift matchmaking configuration resource that is used with
    this ticket.
  **/
  ?ConfigurationArn: String,

  /**
    Name of the MatchmakingConfiguration that is used with this ticket. Matchmaking configurations determine how
    players are grouped into a match and how a new game session is created for the match.
  **/
  ?ConfigurationName: String,

  /**
    Time stamp indicating when this matchmaking request stopped being processed due to success, failure, or
    cancellation. Format is a number expressed in Unix time as milliseconds (for example "1469498468.057").
  **/
  ?EndTime: Float,

  /**
    Average amount of time (in seconds) that players are currently waiting for a match. If there is not enough recent
    data, this property may be empty.
  **/
  ?EstimatedWaitTime: Int,

  /**
    Identifier and connection information of the game session created for the match. This information is added to the
    ticket only after the matchmaking request has been successfully completed.
  **/
  ?GameSessionConnectionInfo: {
    ?DnsName: String,
    ?GameSessionArn: String,
    ?IpAddress: String,
    ?MatchedPlayerSessions: Array<
      {
        PlayerId: String,
        PlayerSessionId: String
      }
    >,
    ?Port: Int
  },

  /**
    A set of Player objects, each representing a player to find matches for. Players are identified by a unique
    player ID and may include latency data for use during matchmaking. If the ticket is in status COMPLETED, the
    Player objects include the team the players were assigned to in the resulting match.
  **/
  ?Players: Array<
    {
      LatencyInMs: DynamicAccess<Float>,
      PlayerAttributes: DynamicAccess<PlayerAttribute>,
      PlayerId: String,
      Team: String
    }
  >,

  /**
    Time stamp indicating when this matchmaking request was received. Format is a number expressed in Unix time as
    milliseconds (for example "1469498468.057")
  **/
  ?StartTime: Float,
  ?Status: MatchmakingStatus,
  ?StatusMessage: String,
  ?StatusReason: String,
  ?TicketId: String
}

@:enum abstract MatchmakingStatus(String)
{
  /**
    The matchmaking request has been received and is currently waiting to be processed.
  **/
  var QUEUED = "QUEUED";

  /**
    The matchmaking request is currently being processed.
  **/
  var SEARCHING = "SEARCHING";

  /**
    A match has been proposed and the players must accept the match (see AcceptMatch). This status is used only
    with requests that use a matchmaking configuration with a player acceptance requirement.
  **/
  var REQUIRES_ACCEPTANCE = "REQUIRES_ACCEPTANCE";

  /**
    The FlexMatch engine has matched players and is in the process of placing a new game session for the match.
  **/
  var PLACING = "PLACING";

  /**
    Players have been matched and a game session is ready to host the players. A ticket in this state contains the
    necessary connection information for players.
  **/
  var COMPLETED = "COMPLETED";

  /**
    The matchmaking request was not completed.
  **/
  var FAILED = "FAILED";

  /**
    The matchmaking request was canceled. This may be the result of a call to StopMatchmaking or a proposed match
    that one or more players failed to accept.
  **/
  var CANCELLED = "CANCELLED";

  /**
    The matchmaking request was not successful within the duration specified in the matchmaking configuration
  **/
  var TIMED_OUT = "TIMED_OUT";
}

typedef StartMatchmakingResponse ={
   MatchmakingTicket:MatchmakingTicket
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

typedef GameLiftError = Error<GameLiftErrorCode>;

@:enum abstract GameLiftErrorCode(String) from String {
  /**
    The game instance is currently full and cannot allow the requested player(s) to join. This exception occurs in
    response to a CreatePlayerSession request.

    HTTP Status Code: 400
   **/
  var GameSessionFullException = "GameSessionFullException";

  /**
    The service encountered an unrecoverable internal failure while processing the request. Clients can retry such
    requests, either immediately or after a back-off period.

    HTTP Status Code: 500
   **/
  var InternalServiceException = "InternalServiceException";

  /**
    The requested operation would cause a conflict with the current state of a resource associated with the request
    and/or the game instance. Clients should not retry such requests without resolving the conflict.

    HTTP Status Code: 400
   **/
  var InvalidGameSessionStatusException = "InvalidGameSessionStatusException";

  /**
    One or more parameters specified as part of the request are invalid. Correct the invalid parameters before retrying.

    HTTP Status Code: 400
   **/
  var InvalidRequestException = "InvalidRequestException";

  /**
    A service resource associated with the request could not be found. Clients should not retry such requests

    HTTP Status Code: 400
   **/
  var NotFoundException = "NotFoundException";

  /**
    The service is unable to resolve the routing for a particular alias because it has a terminal RoutingStrategy
    associated with it. The message returned in this exception is the message defined in the routing strategy itself.
    Such requests should only be retried if the routing strategy for the specified alias is modified.

    HTTP Status Code: 400
   **/
  var TerminalRoutingStrategyException = "TerminalRoutingStrategyException";

  /**
    The client failed authentication. Clients should not retry such requests

    HTTP Status Code: 400
   **/
  var UnauthorizedException = "UnauthorizedException";

  var ThrottlingException = "ThrottlingException";

  /**
    The specified fleet has no available instances to fulfill a request to create a new game session. Such requests
    should only be retried once the fleet capacity has been increased.
   **/
  var FleetCapacityExceededException = "FleetCapacityExceededException";

  /**
    The requested operation is not supported in the Region specified.

    HTTP Status Code: 400
  **/
  var UnsupportedRegionException = "UnsupportedRegionException";

  /**
    The specified game server group has no available game servers to fulfill a
    ClaimGameServer request. Clients can retry such requests immediately or
    after a waiting period.

    HTTP Status Code: 400
  **/
  var OutOfCapacityException = "OutOfCapacityException";

  var ConflictException = "ConflictException";

  inline public function toString()
  {
    return this;
  }
}

@:enum abstract RoutingStrategyType(String) from String {
  var Simple = "SIMPLE";
  var Terminal = "TERMINAL";
}

typedef AliasResponse = {
  /**
    Unique identifier for a fleet alias.
   **/
  var AliasId(default, null):String;

  /**
    Descriptive label associated with an alias. Alias names do not need to be unique.
   **/
  var Name(default, null):String;

  /**
    Human-readable description of an alias.
   **/
  var Description(default, null):String;

  /**
    Routing configuration for a fleet alias.
   **/
  var RoutingStrategy(default, null):{
    var Type(default, null):RoutingStrategyType;
    var FleetId(default, null):Null<String>;
    var Message(default, null):Null<String>;
  };

  /**
    Type of routing strategy.
   **/
  var Type(default, null):String;

  /**
    Unique identifier for a fleet.
   **/
  var FleetId(default, null):String;

  /**
    Message text to be used with a terminal routing strategy.
   **/
  var Message(default, null):String;

  /**
    Time stamp indicating when this data object was created. Format is a number expressed in Unix time as milliseconds
    (ex: "1469498468.057".
   **/
  var CreationTime(default, null):Date;

  /**
    Time stamp indicating when this data object was last modified. Format is a number expressed in Unix time as
    milliseconds (ex: "1469498468.057".
   **/
  var LastUpdatedTime(default, null):Date;
}
