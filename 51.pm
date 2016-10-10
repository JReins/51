use warnings;
use strict;


#Initials

my %board=(1=>{S=>1,D=>2,T=>3}, #bisher nicht relevant, für die  Ausgabe von möglichen Finishes gedacht. Könnte bestimmt auch einfacher
	   2=>{S=>2,D=>4,T=>6}, #sein. ala alle natürlichen zahlen von 1 - 20 und ihre vielfache mit 2 und 3 sowie 50. 
	   3=>{S=>3,D=>6,T=>9},
	   4=>{S=>4,D=>8,T=>12},
	   5=>{S=>5,D=>10,T=>15},
	   6=>{S=>6,D=>12,T=>18},
	   7=>{S=>7,D=>14,T=>21},
	   8=>{S=>8,D=>16,T=>24},
	   9=>{S=>9,D=>18,T=>27},
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
	   BULLS=>{S=>25,D=>50,T=>undef}
    );

my %players=("ID1"=>"Anton", #soll abhängig von der angabe $nop gefüllt werden
	     "ID2"=>"Bernd",
	     "ID3"=>"Clemens",
	     "ID4"=>"Detlef"
    );

my %scores=("ID1"=>"301", #soll abhängig von der angabe $nop gefüllt werden mit dem Wert von $usr_score
	    "ID2"=>"301",
	    "ID3"=>"301",
	    "ID4"=>"301"
    );
#my @player_IDs=keys %players;

my $welcome_msg="Hallo liebe Dartfreunde. Willkommen beim Dart Wettkampfhelfer.\n";
my $usr_in="";
my $cur_player=1;
my @usr_id=keys %players; #stimmt in den listen dann die reihenfolge?
my @usr_scores=values %scores;
my $usr_score="";
my $mode=1; #double out, only implemented mode 4 now!

#Options (tba)
#Mode1=Double out
#Mode2=Double out, double in
#Mode3=Double in

my $nop=my $number_of_players=1; #number of players

#Main

print $welcome_msg;
initialize_players();

#if schleife für finish yes or no score >=170 für double out

if 

#score_in(); or #finish_score();
#score_print();
ausprobieren();

#User input number of players $nop=
#->initialize players
#For each nop -> User input name for player ID1 bis ID$nop




#Subs

#Initialize Players and starting Score

sub initialize_players{print "Benenne Spieler $cur_player : \n"; #in schleife umschreiben! von Spieler 1 bis $nop in %players ablegen
		       $usr_in=<STDIN>;
		       $players{'ID1'}=$usr_in;
		       print "Spieler $cur_player heißt nun $players{'ID1'}\n";
		       $cur_player=$cur_player+1;
		       print "Benenne Spieler $cur_player : \n";
		       $usr_in=<STDIN>;
		       $players{'ID2'}=$usr_in;
		       print "Spieler $cur_player heißt nun $players{'ID2'}\n";

		       print "Sehr gut!\n";
		       print "Hallo ihr $nop";

		       print "Player \t Score \n -------- \t --------\n";
		       
		       foreach $usr_id(keys %players){print "$players \t $usr_scores\n";
							 
		       };
};

sub score_in{print "Gib den 1. Dart von Spieler $cur_player ein:\n"; #TODO: Check einbauen ob score möglich -> hash element $board vgl falls nicht fehler und neu eingeben
	     $usr_in=<STDIN>;
	     $usr_score=$usr_in;
	     print "Gib den 2. Dart von Spieler $cur_player ein:\n";
	     $usr_in=<STDIN>;
	     $usr_score=$usr_score+$usr_in;
	     print "Gib den 3. Dart von Spieler $cur_player ein:\n";
	     $usr_in=<STDIN>;
	     $usr_score=$usr_score+$usr_in;
	     print "3 Dart Score von Spieler $cur_player ist $usr_score\n";
};

#sub score_print{print "Spieler \t Score\n";
#		print "------- \t –––––\n";
#		print "@player_IDs";
#};

sub ausprobieren{#print "^[]10;yellow^G"; #Schriftfarbe
		 #print "^[]11;blue^G"; #Hintergrundfarbe
};

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
