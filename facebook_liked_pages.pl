

# "Create a Page" >> "Pages I Like" >> https://www.facebook.com/browse/fanned_pages/?id=

#################################################


use v5.10;
use strict;
use warnings;
use open qw(:std :utf8);
# HTML source code
# grep 'fsl fwb fcb' -i facebook > facebook2
@ARGV = 'facebook2';
#
my @arr;
while (<>) {
    chomp;
    push @arr, split /<div class="fsm fwn fcg">/;
}
# page title
(m|([^>]+)</a></div>$|m
    or m|([^>]+)<[^<]*</span></a></div>$|m)
and say $1 for @arr;

# page info
# /([^<]+)/ and say $1 for @arr;
