#!perl

use Test::More;

eval "use Test::CheckChanges";
plan skip_all => "Test::CheckChanges required for testing changes"
  if $@;
ok_changes();
