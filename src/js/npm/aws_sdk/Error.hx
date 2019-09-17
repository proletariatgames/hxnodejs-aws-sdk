package js.npm.aws_sdk;

extern class Error<T> extends
    #if haxe4
    js.lib.Error
    #else
    js.Error
    #end
{
  var code(default, null):T;
}
