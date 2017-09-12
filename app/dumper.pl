  
  my $foo = "wibble";
  my %bar = ( boston => "cheers", space => "ten forward" );
  my @baz = ( "red", [ "green", { yellow => "blue" } ] );
  
  
  use Data::Dumper;
  print STDERR Dumper($foo, \%bar, \@baz);
  
  
  