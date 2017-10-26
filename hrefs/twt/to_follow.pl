use 5.10.1;

use strict;
use warnings;

use lib '/home/pi/bin/lib/perl5/';

use Net::Twitter;



################
#
# a twt limit list
#
# check! that I'm not following
# the account already
# !!
#
###############


# Auth tokens
my %tokens = (
        consumer_key    => 'Um6KzSofgnqUc1B6BlrOtU4yY',
        consumer_secret => '1nB40G75qOJmAbBbCchcp5Ppdn6DU3WwFVfPv0Bqr5rnHXjW0u',
        access_token => '328103522-cUJGl53dcDyolTzMOTxsKQJZzROJFVFzxB7uPLts',
        access_token_secret => 'F9HXkerCejWvg1fUUZ6rdpo2PUTDFCI7xUP4Kufb70tqI',
);

#create our twitter instance
my $twt = Net::Twitter->new(traits => [qw/API::RESTv1_1/], %tokens, ssl=>1);

while (<DATA>) {
  chomp;
  s/^\s+|\s+$//;

  /^$/ and next;
  /==/ and last;
  
  ref $twt->create_friend($_) or say 'err: '.$_;
}


__DATA__
craigmod
Pritomnost_TNP
ErikBest
LeaVerou
TheTweetOfGod
svarcik
spolsky
alesroubicek
robfitz
abdocnet
askwhypoverty
czhackathon
StackUnix
StackWebmasters
WolframFunFacts
jonskeet
37signals
almadcz
machal
aarron
mojombo
Medium
ev
BarackObama
whitehouse
jack
meyerweb
svobodni
KohoutPavel
fgnass
mrdoob
SGgrc
0ndras
JanSru
bachmanm
HosipLan
honzajavorek
BizITcz
chinin
astinusp
vkhosla
TomasMilar
Deep_in_IT_cz
evalottchen
2600
Benioff
theserenader
hypebeast
jiriknesl
nadacezb
jakubmach

== END ==

janrezac
endlife
liveoliverr
TheEconomist
daveruzius
jirifabian
paul_irish
samykamkar
mswebplatform
Imoroney
jerome_etienne
virae
bhorowitz
RomanStanek
pavelpetrek
gugcz
googleio
michaelsmith
technetblog
iknowclub
ivotoman
tonyshieh
lukashurych
tomaskrcha
ondrejvalka
jirizraly
ryan
peterpaulkoch
robertvlach
zdenekcendra
martinkopta
paulgraham
stevenblank
vaclavstrupl
paveldolezal
Medvidekpu
miloscermak
vlastapokladnikova

== END ==

lenkakucerova
tomcuprcz
robinraszka
jakubvrana
geekovo
jankorbel
lukaskonarovsky
vaclavstoupa
jiriraska
jansedivy
ondrejbartos
MICHLiq_
adent
hassmanm
jirkakosek
how_to_web
tinybuddha
uniegd
navolnenoze	
martinvars
Forum_2000
BT_Princeton
josefslerka
IHNED_zpravy
Michelle_LSKT
openshift
opensuse
fivethirtyeight
JardaHomolka
martin_kasa
AJEnglish
404m_com
bobmcwhirter
thestartupkids
FirefoxFlicks
kickstarter
newstartupideas
unleashingideas
StartupWeekend	
helloiamvu
michalillich
asymco
artsy
JakubLohnisky
briankrebs
iz228
spazef0rze
radio1prague

== END ==

martinfowler
zen_habits
kraih
briandfoy_perl
designtaxi
MichalAndera
dhh
jasonfried
startupgenome
jakubkrcmar
jistr
LudlowKingsley
creativemorning
Prague_CM
brad_frost
worrydream
opennews
kiostark
veltman
brainpicker
TheNextWeb
fredwilson
RWW
simonsinek
nancyduarte
ericries
StarCubeCZ
PleaseEnjoy
droga5
zevloun
adamherout
PetrLudwig
veselovskyma
stepanb
tyicz
NYSEEuronext
60Minutes
WSJ
Svbtle
GirlsWhoCode	
theRSAorg
maccaw	
dcurtis
dajbelshaw
TheAdvancedApes
WebLitStd	
growhack
karenxcheng

== END ==

TreyRatcliff
MonocleNews
messa_cz
communique_mag
TheHackersNews
honzasladek
StanfordOnline
thefirstwebsite
CERN
NASA
tedtalks
google
startupsauna
LinuxDaysCZ
webexpo
tangero
fisvse
muni_cz
Nastroje
FareedZakaria
facebook
twitter
HistoricalPics
cilichiliCZ
Flickr
freshfilmfest
dmajda
BrendanEich
jakubnesetril
TheNode5
openhatch
hackerschool
devminutes

== END ==

OnTheHub
Codecademy
cznodejs
CodeRetreatCZ
zdrojak
Rootcz
pixycz
dr_win
karmiq
eClubPrague
jakubspanihel
steida
stevencorona
MarianSchubert
robinpokorny
ostoweb
iList_tweetuje
perlfoundation
JakubTesarek
sw_samuraj
seedcamp
garage48
stevencorona
apiaryio
abtris
szabgab
openshift_ops
PerlWeekly
github
redhatcz
railsgirls
automatpraha
gruber
TryGhost
twbootstrap
developmentseed
codrops
ahmetsulek
WHO
AsymPress
visualstudio
vtipy
mozilla
mozhacks
java
FWD_us
MSVirtAcademy
nokiadeveloper

== END ==

imaginecup
vyvojIHNED
colorsmagazine
bobsinclar
Faborsky
MathProgramming
michal_truban
mhdpraha
starenka
neviditelnypes
sibiranka
UnixToolTip
CompSciFact
javazone
VojtaRocek
strakovka
PetrSimecek
buildinternet
synopsi
fullstart
tempire
StartupJobscz
vondra
MarekP
fdousek
heavybit

== END ==

JanecekKarel
kubabrecka
Simindr
schneierblog
ZbynekD
pentagram
uniteditions
codinghorror
sem7ex
marmosetmusic
UN
jacklmoore
perlbuzz
petdance
briandfoy_perl
schwarzenbergk
LenkaKucerova
atomsedlacek
seriouspony
pavelbier
MuseumModernArt
elonmusk
Brilliant_Ads
CodeWisdom
FIT_CTU
kiskffmu
TheAtlanticHLTH
hyperisland
creativemorning
ronjdub
fictionclemens
PetrBrzek
janvesely
zdendac

== END ==

medioteka
amsul_
Nofreeusernames
TechCityUK
cnnbrk
BillGates
YouTube
AGoalPlanner
everest
gstritar
HackFwd
Erajednoduse
AdamMarcan
ThisIsSethsBlog
Scene360
richardbranson
Giavanni_Ruffin
20x200
Explorer
heyjoshboston
FINMAG_cz
chrisguillebeau
FastCompany
HOLSTEE
blackboxvc
SSESupdates
netmag
Radiolab
WebSummitHQ
TheEuropas
bud_caddell
zlwise
knightlab
jsterlibs
nytimes
WorldBank
KnihovnaVH
eastbiz
