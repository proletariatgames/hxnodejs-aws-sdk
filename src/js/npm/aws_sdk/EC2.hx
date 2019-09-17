package js.npm.aws_sdk;
#if haxe4
import js.lib.Error;
#else
import js.Error;
#end

@:jsRequire("aws-sdk","EC2")
extern class EC2 extends Service {
  /**
    In order to ensure that the EC2 object uses this specific API, you can construct the object by passing the
    apiVersion option to the constructor

    Version:
      2015-10-01
   **/
  @:overload(function (ver:{ apiVersion:String }):Void {})
  function new():Void;

  /**
    Accept a VPC peering connection request.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function acceptVpcPeeringConnection(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Acquires an Elastic IP address.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function allocateAddress(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Allocates a Dedicated host to your account.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function allocateHosts(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Assigns one or more secondary private IP addresses to the specified network interface.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function assignPrivateIpAddresses(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Associates an Elastic IP address with an instance or a network interface.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function associateAddress(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Associates a set of DHCP options (that you've previously created) with the specified VPC, or associates no DHCP
    options with the VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function associateDhcpOptions(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Associates a subnet with a route table.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function associateRouteTable(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or more of the VPC's security groups.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function attachClassicLinkVpc(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Attaches an Internet gateway to a VPC, enabling connectivity between the Internet and the VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function attachInternetGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Attaches a network interface to an instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function attachNetworkInterface(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device
    name.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function attachVolume(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Attaches a virtual private gateway to a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function attachVpnGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    [EC2-VPC only] Adds one or more egress rules to a security group for use with a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function authorizeSecurityGroupEgress(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Adds one or more ingress rules to a security group.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function authorizeSecurityGroupIngress(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Bundles an Amazon instance store-backed Windows instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function bundleInstance(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Cancels a bundling operation for an instance store-backed Windows instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function cancelBundleTask(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Cancels an active conversion task.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function cancelConversionTask(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Cancels an active export task.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function cancelExportTask(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Cancels an in-process import virtual machine or import snapshot task.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function cancelImportTask(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function cancelReservedInstancesListing(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Cancels the specified Spot fleet requests.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function cancelSpotFleetRequests(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Cancels one or more Spot instance requests.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function cancelSpotInstanceRequests(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Determines whether a product code is associated with an instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function confirmProductInstance(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Initiates the copy of an AMI from the specified source region to the current region.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function copyImage(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function copySnapshot(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Provides information:Request;
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createCustomerGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a set of DHCP options for your VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createDhcpOptions(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates one or more flow logs to capture IP traffic for a specific network interface, subnet, or VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createFlowLogs(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createImage(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Exports a running or stopped instance to an S3 bucket.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createInstanceExportTask(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates an Internet gateway for use with a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createInternetGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a 2048-bit RSA key pair with the specified name.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createKeyPair(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a NAT gateway in the specified subnet.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createNatGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a network ACL in a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createNetworkAcl(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates an entry (a rule) in a network ACL with the specified rule number.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createNetworkAclEntry(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a network interface in the specified subnet.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createNetworkInterface(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a placement group that you launch cluster instances into.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createPlacementGroup(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a listing for Amazon EC2 Reserved Instances to be sold in the Reserved Instance Marketplace.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createReservedInstancesListing(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a route in a route table within a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createRoute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a route table for the specified VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createRouteTable(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a security group.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createSecurityGroup(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a snapshot of an EBS volume and stores it in Amazon S3.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createSnapshot(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a data feed for Spot instances, enabling you to view Spot instance usage logs.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createSpotDatafeedSubscription(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a subnet in an existing VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createSubnet(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Adds or overwrites one or more tags for the specified Amazon EC2 resource or resources.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createTags(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates an EBS volume that can be attached to an instance in the same Availability Zone.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createVolume(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a VPC with the specified CIDR block.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createVpc(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a VPC endpoint for a:Request;
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createVpcEndpoint(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Requests a VPC peering connection between two VPCs: a requester VPC that you own and a peer VPC with which to create
    the connection.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createVpcPeeringConnection(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a VPN connection between an existing virtual private gateway and a VPN customer gateway.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createVpnConnection(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN
    customer gateway.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createVpnConnectionRoute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a virtual private gateway.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function createVpnGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified customer gateway.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteCustomerGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified set of DHCP options.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteDhcpOptions(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes one or more flow logs.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteFlowLogs(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified Internet gateway.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteInternetGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified key pair, by removing the public key from Amazon EC2.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteKeyPair(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified NAT gateway.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteNatGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified network ACL.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteNetworkAcl(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified ingress or egress entry (rule) from the specified network ACL.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteNetworkAclEntry(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified network interface.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteNetworkInterface(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified placement group.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deletePlacementGroup(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified route from the specified route table.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteRoute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified route table.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteRouteTable(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes a security group.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteSecurityGroup(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified snapshot.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteSnapshot(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the data feed for Spot instances.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteSpotDatafeedSubscription(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified subnet.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteSubnet(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified set of tags from the specified set of resources.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteTags(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified EBS volume.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteVolume(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteVpc(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes one or more specified VPC endpoints.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteVpcEndpoints(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes a VPC peering connection.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteVpcPeeringConnection(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified VPN connection.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteVpnConnection(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified static route associated with a VPN connection between an existing virtual private gateway and
    a VPN customer gateway.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteVpnConnectionRoute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deletes the specified virtual private gateway.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deleteVpnGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Deregisters the specified AMI.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function deregisterImage(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes attributes of:Request;
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeAccountAttributes(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your Elastic IP addresses.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeAddresses(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of the Availability Zones that are available to you.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeAvailabilityZones(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your bundling tasks.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeBundleTasks(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your linked EC2-Classic instances.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeClassicLinkInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your conversion tasks.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeConversionTasks(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your VPN customer gateways.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeCustomerGateways(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your DHCP options sets.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeDhcpOptions(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your export tasks.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeExportTasks(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more flow logs.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeFlowLogs(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your Dedicated hosts.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeHosts(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the ID format settings for your resources on a per-region basis, for example, to view which resource types
    are enabled for longer IDs.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeIdFormat(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the specified attribute of the specified AMI.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeImageAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of the images (AMIs, AKIs, and ARIs) available to you.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeImages(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Displays details about an import virtual machine or import snapshot tasks that are already created.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeImportImageTasks(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes your import snapshot tasks.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeImportSnapshotTasks(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the specified attribute of the specified instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeInstanceAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your instances.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the status of one or more instances.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeInstanceStatus(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your Internet gateways.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeInternetGateways(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your key pairs.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeKeyPairs(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the
    EC2-Classic platform.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeMovingAddresses(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of the your NAT gateways.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeNatGateways(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your network ACLs.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeNetworkAcls(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes a network interface attribute.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeNetworkInterfaceAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your network interfaces.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeNetworkInterfaces(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your placement groups.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describePlacementGroups(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes:Request;
    the service and the IP address range for the service.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describePrefixLists(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more regions that are currently available to you.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeRegions(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of the Reserved Instances that you purchased.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeReservedInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes your account's Reserved Instance listings in the Reserved Instance Marketplace.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeReservedInstancesListings(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the modifications made to your Reserved Instances.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeReservedInstancesModifications(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes Reserved Instance offerings that are available for purchase.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeReservedInstancesOfferings(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your route tables.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeRouteTables(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Finds available schedules that meet the specified criteria.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeScheduledInstanceAvailability(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your Scheduled Instances.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeScheduledInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your security groups.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeSecurityGroups(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the specified attribute of the specified snapshot.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeSnapshotAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of the EBS snapshots available to you.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeSnapshots(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the data feed for Spot instances.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeSpotDatafeedSubscription(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the running instances for the specified Spot fleet.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeSpotFleetInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the events for the specified Spot fleet request during the specified time.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeSpotFleetRequestHistory(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes your Spot fleet requests.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeSpotFleetRequests(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the Spot instance requests that belong to your account.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeSpotInstanceRequests(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the Spot price history.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeSpotPriceHistory(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your subnets.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeSubnets(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of the tags for your EC2 resources.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeTags(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the specified attribute of the specified volume.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVolumeAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the specified EBS volumes.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVolumes(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the status of the specified volumes.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVolumeStatus(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the specified attribute of the specified VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVpcAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the ClassicLink status of one or more VPCs.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVpcClassicLink(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes the ClassicLink DNS support status of one or more VPCs.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVpcClassicLinkDnsSupport(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your VPC endpoints.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVpcEndpoints(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes all:Request;
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVpcEndpointServices(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your VPC peering connections.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVpcPeeringConnections(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your VPCs.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVpcs(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your VPN connections.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVpnConnections(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Describes one or more of your virtual private gateways.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function describeVpnGateways(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Unlinks (detaches) a linked EC2-Classic instance from a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function detachClassicLinkVpc(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Detaches an Internet gateway from a VPC, disabling connectivity between the Internet and the VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function detachInternetGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Detaches a network interface from an instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function detachNetworkInterface(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Detaches an EBS volume from an instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function detachVolume(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Detaches a virtual private gateway from a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function detachVpnGateway(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Disables a virtual private gateway (VGW) from propagating routes to a specified route table of a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function disableVgwRoutePropagation(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Disables ClassicLink for a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function disableVpcClassicLink(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Disables ClassicLink DNS support for a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function disableVpcClassicLinkDnsSupport(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Disassociates an Elastic IP address from the instance or network interface it's associated with.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function disassociateAddress(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Disassociates a subnet from a route table.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function disassociateRouteTable(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Enables a virtual private gateway (VGW) to propagate routes to the specified route table of a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function enableVgwRoutePropagation(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially
    inconsistent.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function enableVolumeIO(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Enables a VPC for ClassicLink.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function enableVpcClassicLink(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Enables a VPC to support DNS hostname resolution for ClassicLink.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function enableVpcClassicLinkDnsSupport(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Gets the console output for the specified instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function getConsoleOutput(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Retrieves the encrypted administrator password for an instance running Windows.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function getPasswordData(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Import single or multi-volume disk images or EBS snapshots into an Amazon Machine Image (AMI).
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function importImage(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates an import instance task using metadata from the specified disk image.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function importInstance(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Imports the public key from an RSA key pair that you created with a third-party tool.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function importKeyPair(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Imports a disk into an EBS snapshot.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function importSnapshot(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates an import volume task using metadata from the specified disk image.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function importVolume(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Modify the auto-placement setting of a Dedicated host.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifyHosts(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Modifies the ID format for the specified resource on a per-region basis.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifyIdFormat(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Modifies the specified attribute of the specified AMI.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifyImageAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Modifies the specified attribute of the specified instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifyInstanceAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Set the instance affinity value for a specific stopped instance and modify the instance tenancy setting.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifyInstancePlacement(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Modifies the specified network interface attribute.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifyNetworkInterfaceAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Modifies the Availability Zone, instance count, instance type, or network platform (EC2-Classic or EC2-VPC) of your
    Reserved Instances.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifyReservedInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Adds or removes permission settings for the specified snapshot.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifySnapshotAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Modifies the specified Spot fleet request.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifySpotFleetRequest(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Modifies a subnet attribute.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifySubnetAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Modifies a volume attribute.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifyVolumeAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Modifies the specified attribute of the specified VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifyVpcAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Modifies attributes of a specified VPC endpoint.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function modifyVpcEndpoint(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Enables monitoring for a running instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function monitorInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function moveAddressToVpc(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Purchases a Reserved Instance for use with your account.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function purchaseReservedInstancesOffering(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Purchases one or more Scheduled Instances with the specified schedule.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function purchaseScheduledInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Requests a reboot of one or more instances.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function rebootInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Registers an AMI.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function registerImage(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Rejects a VPC peering connection request.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function rejectVpcPeeringConnection(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Releases the specified Elastic IP address.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function releaseAddress(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    When you no longer want to use a Dedicated host it can be released.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function releaseHosts(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Changes which network ACL a subnet is associated with.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function replaceNetworkAclAssociation(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Replaces an entry (rule) in a network ACL.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function replaceNetworkAclEntry(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Replaces an existing route within a route table in a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function replaceRoute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Changes the route table associated with a given subnet in a VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function replaceRouteTableAssociation(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Submits feedback about the status of an instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function reportInstanceStatus(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a Spot fleet request.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function requestSpotFleet(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Creates a Spot instance request.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function requestSpotInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Resets an attribute of an AMI to its default value.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function resetImageAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Resets an attribute of an instance to its default value.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function resetInstanceAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Resets a network interface attribute.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function resetNetworkInterfaceAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Resets permission settings for the specified snapshot.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function resetSnapshotAttribute(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function restoreAddressToClassic(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    [EC2-VPC only] Removes one or more egress rules from a security group for EC2-VPC.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function revokeSecurityGroupEgress(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Removes one or more ingress rules from a security group.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function revokeSecurityGroupIngress(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Launches the specified number of instances using an AMI for which you have permissions.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function runInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Launches the specified Scheduled Instances.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function runScheduledInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Starts an Amazon EBS-backed AMI that you've previously stopped.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function startInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Stops an Amazon EBS-backed instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function stopInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Shuts down one or more instances.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function terminateInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Unassigns one or more secondary private IP addresses from a network interface.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function unassignPrivateIpAddresses(params:Dynamic, callback:Error->Dynamic->Void):Request;

  /**
    Disables monitoring for a running instance.
   **/
  @:overload(function ():Request {})
  @:overload(function (callback:Error->Dynamic->Void):Request {})
  function unmonitorInstances(params:Dynamic, callback:Error->Dynamic->Void):Request;
}
