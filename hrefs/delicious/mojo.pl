use warnings;
use Mojo::DOM;
use open qw/:std :utf8/;
use utf8;

my $html = join '', <>;
#$html.=$_ while <>;

my @deli = Mojo::DOM->new($html)->find('div.followerPanelWrapper')->each;

print
  # profile

  "\n",
  # website
  #map {qq($_->attr->{href}\n) || ''} ($_->at('div.followerTopLeft')->find('p>a')->each)[0..1]
  #map {$_->attr->{href} || ''} ($_->at('div.followerTopLeft')->find('p>a')->each),
  
  $_->at('div.followerTopLeft')->at('p>a')->attr->{href} || '',
  "\n",
  (scalar $_->at('div.followerTopLeft')->find('p>a')->each == 2
    and $_->at('div.followerTopLeft')->find('p>a')->last->attr->{href}),
  "\n",
  # bio
  ($_->at('div.followersContentPanel>p')
    and $_->at('div.followersContentPanel>p')->all_text) || '',
  "\n\n"
for @deli;
