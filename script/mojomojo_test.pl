#!/usr/bin/env perl

use strict;
use warnings;
use Getopt::Long;
use Pod::Usage;
use FindBin;
use lib "$FindBin::Bin/../lib";
use Catalyst::Test 'MojoMojo';

my $help = 0;

GetOptions( 'help|?' => \$help );

pod2usage(1) if ( $help || !$ARGV[0] );

print request($ARGV[0])->content . "\n";

1;

=head1 NAME

mojomojo_test.pl - Catalyst Test

=head1 SYNOPSIS

mojomojo_test.pl [options] uri

 Options:
   -help    display this help and exits

 Examples:
   mojomojo_test.pl http://localhost/some_action
   mojomojo_test.pl /some_action

 See also:
   perldoc Catalyst::Manual
   perldoc Catalyst::Manual::Intro

=head1 DESCRIPTION

Run a Catalyst action from the command line.

=head1 AUTHORS

Catalyst Contributors, see Catalyst.pm

=head1 LICENSE

You may distribute this code under the same terms as Perl itself.

=head1 COPYRIGHT

Please refer to Catalyst.pm for copyright details.

=cut
