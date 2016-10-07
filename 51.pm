use warnings;
no warnings(qw);
use strict;

#Initials

my %board=(1=>{S=>1,D=>2,T=>3},
	   2=>{S=>2,D=>4,T=>6},
	   3=>{S=>3,D=>6,T=>9},
	   4=>{S=>4,D=>8,T=>12},
	   5=>{S=>5,D=>10,T=>15},
	   6=>{S=>6,D=>12,T=>18},
	   7=>{S=>7,D=>14,T=>21},
	   8=>{S=>8,D=>16,T=>24},
	   9=>{S=>9,D=>18;T=>27},
	   10=>{S=>10,D=>20,T=>30},
	   11=>{S=>11,D=>22,T=>33},
	   12=>{S=>12,D=>24,T=>36},
	   13=>{S=>13,D=>26,T=>39},
	   14=>{S=>14,D=>28,T=>42},
	   15=>{S=>15,D=>30,T=>45},
	   16=>{S=>16,D=>32,T=>48},
	   17=>{S=>17,D=>34,T=>51},
	   18=>{S=>18,D=>36,T=>64},
	   19=>{S=>19,D=>38,T=>67},
	   20=>{S=>20,D=>40,T=>60},
	   BULLS=>{S=>25,D=>50}
    );

my %players=(ID1=>{Name=>,Tickets=>501},
	     ID2=>{Name=>,Tickets=>501},
	     ID3=>{Name=>,Tickets=>501},
	     ID4=>{Name=>,Tickets=>501}
    );

#Options (tba)
#Mode1=Double out
#Mode2=Double out, double in
#Mode3=Double in
my $nop=my $number_of_players=1; #number of players


#Main

#User input number of players $nop=
#->initialize players
#For each nop -> User input name for player ID1 bis ID$nop




#Subs

#Initialize Players

#substract score
#User input playerscore my $playerscore=
#substract playerscore from Tickets, write difference as new Tickets


#Check if finish possible

#sub 170_checker{if Tickets of current Player = <= 170
#		    do if Tickets of current Player = <=120
#		     do
#		     else
#		    else or die
#
#};

#Calculate possible finishes

sub finish_calc{

};
