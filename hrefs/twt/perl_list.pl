#!/usr/bin/perl
use 5.10.1;
use strict;
use warnings;

use lib '/home/pi/bin/lib/perl5/';
use Net::Twitter;

my %tokens = (
  consumer_key        => 'Um6KzSofgnqUc1B6BlrOtU4yY',
  consumer_secret     => '1nB40G75qOJmAbBbCchcp5Ppdn6DU3WwFVfPv0Bqr5rnHXjW0u',
  access_token        => '328103522-cUJGl53dcDyolTzMOTxsKQJZzROJFVFzxB7uPLts',
  access_token_secret => 'F9HXkerCejWvg1fUUZ6rdpo2PUTDFCI7xUP4Kufb70tqI',
);
my $twt = Net::Twitter->new(
  traits  => [qw/API::RESTv1_1/],
  %tokens,
  ssl     => 1,
);
my $list = $twt->create_list({
  name  => 'Perl',
});

while (<DATA>) {
  chomp;
  s/^\s+|\s+$//;
  /^$/ and next;

  say 'adding @'.$_;
  $list->add_list_member($_);
}

__DATA__
clintongormley
xdg
genehack
F_Vaggi
tinypig
YAPCNA
saraheliela
TimToady
perlfoundation
idnorton
perl_api
burakgursoy
sheeju7
vytasdauksa
perl__dp
andrewshitov
rspier
mithaldu
stevenharyanto
tudorconstantin
obra
clujpm
nicks_ranting
phl82
missbarbell
PerlFosdem
PerlRick
OvidPerl
yapceurope
domm_favors_irc
cpan_pevans
aaroncrane
PerlSawyer
dino_joel
timoreilly
bigthink
chromatic_x
pmarca
changelog
pjf
habanerd
that_garu
ask
kraih
PerlDaily
tsosnierz
bigpresh
yenzie
perlbuzz
dukeleto
DanielleMorrill
c9s
richardelberger
orangeacme
metacpan
oo_paas_na
petdance
wundercounter
ciderpunx
joelaberger
keiosu
jeresig
lukec
timbunce
leon_timmermans
rjbs
JozefReisinger
miyagawa
sheeshee
yapceu
craigmod
perl5git
davorg
vtivti
ingydotnet
shadowcat_mdk
AndyArmstrong
chipsalz
tkjef
ThePerlShop
kaihendry
gruber
mjdominus
szabgab
ichesnokov
xan_tronix
reyjrar
PerlHowto
PerlMaven
perlancar
houseabsolute
dakkar
PearlBee_org
PerlTricks
friedo
ultimatto
vroomtim
sukria
geekuni
timbray
gnat
kablamo_
kephra_lk
Mattmonsen
PerlWeekly
grantmnz
kberov
BuiltinPerl
rcaputo
JacobyDave
jnthnwrthngtn
kentnl
bitfield
consttype
nogoodnickleft
ranguard
bingosnet
damsieboy
climagic
quietfanatic
shadowcat_mst
sinan_unur
mikegrb
perigrin
ralurak
neilbowers
carlmasak
sjoshuan
maokt
davidgl
claesjac
larsen
shlomif
CSJewellPerl
omengue
josetteg
perlqah
cpan_new
marcchantreux
mirod
maddingue
franckcuny
albertovski
pedromelo
draegtun
eddystan
baumerits
paultcochrane
rwstauner
37w
Tux5
Theo_vanHoesel
0xMickey
simbabque
bano99
jack_splat_doe
ElliotPsyIT
aydarkh
robinsmidsrod
jmcnamara13
mhorsfall
stevanlittle
doyster
frioux
charsbar
haoess
PeterCMartini
nickpatch
epochbell
marcelgruenauer
sfperlmongers
iinteractive
deafferret
thaljef
raudssus
Amal1a_
yapcrussia
PerlNL
petersergeant
perlcareers
mikechamberlain
shadow_dot_cat
niceperl
cpantesters
MihaelaGordon
t_metro
Reini_Urban
nmishin
PerlRegex
pjcjohnson
mmmpork
walt_man
iibsheet
brianwisti
yapcasia
Ptolemarch
marcusramberg
ppant
tmi_iller
jscook2345
rsrchbot
mikedoherty_ca
TOperlmongers
pragmaticperl
ykorshak
Liruoko
Lecharton
tpf_castaway
peterkarman
xaerxess
pyrrhlin
odyniec
La_Upasana
vmbrasseur
AFresh1
trg404
Ptolemarch
scrottie
dcbpw
jeremyshao
prairienyx
DSWallis
doswaldcal
zoffix
JJ_Perl
virtualsue
steve_mynott
DamsLearnsPerl
tempire
jhthorsen
chizcw
ecocode
gizmomathboy
oylenshpeegul
bytemeorg
nicomen
sdeseille
elbeho
journeesperl
perl_irc
pplu_io
freekey
jjmerelo
fxn
reneeb_perl
AmsterdamXpm
rGeoffrey
rperlcompiler
hdcesario
AWSPerl
freekey
jluis10
makoto_nozaki
BostonPM

renatolrr
Perltuts
SR0MAN0V
perlnews_ru
jplindstrom
truecrux
alexmuntada
barcelonapm
dawnlua
ironcamel
johrols
hachiojipm
tokuhirom
uzulla
sbatschelet
PerlRacke
jdigory
nikosvg
jluis10
barcelonapm
veryrusty
AmsterdamXpm
pgraemer
jfried83
BerlinPM
RexOps
ironcamel
journeesperl

und3f
truecrux
perlnews_ru
truecrux
mvuets
kowalskyo
jjn1056
nxadm

zakame