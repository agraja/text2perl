#!/usr/bin/perl
# https://github.com/agraja/text2perl
eval join'',map{
  if(/^\/\*(.*)/){
    $1
  }else{
    s/([\\\'])/\\$1/g;
    "print'$_';"
  }
}map{
  s/\*\//\r/g;
  split(/(\/\*[^\r]*)\r/)
}<>;
