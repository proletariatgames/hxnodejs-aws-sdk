# Haxe/hxnodejs externs for the [aws-sdk](https://www.npmjs.com/package/aws-sdk) npm library

Tested using `aws-sdk` version **2.2.42**

Due to the huge size of the API, this only implements a small subset of the whole API, and
from that, only a small part is correctly typed in regards to its possible arguments
and return type

| Module          | Status     |
| --------------- | ----------:|
| AWS core        | complete   |
| EC2             | mixed      |
| SQS             | mixed      |
| DynamoDB        | untyped    |
| MetadataService | untyped    |

Example:
```haxe
import js.npm.AWS;
import js.npm.aws_sdk.EC2;

AWS.config.region = 'us-east-1';

var ec2 = new EC2();

ec2.runInstances({ 
  ImageId: 'ami-1624987f', // Amazon Linux AMI x86_64 EBS
  InstanceType: 't1.micro',
  MinCount: 1, MaxCount: 1
}, function(err, data) {
  if (err != null) {
    trace('Could not create instance');
  }

  var intanceId = data.Instances[0].InstanceId;
  trace('Created instance $instanceId');

  // Add tags to the instance
  ec2.createTags({
    Resources: [instanceId],
    Tags: [{ Key: 'Name', Value: 'instanceName' }]
  }, function(err, _) {
    trace('Tagging instance', err != null ? 'failure' : 'success');
  });
});
```
