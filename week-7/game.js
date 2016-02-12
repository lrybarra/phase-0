 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Get to the Basketball Playoffs
// Goals: Win 3 out of 5 Games
// Characters: Shooting Guard, Power Forward, 
// Objects: Jersey Number, Shooting Ability, Defense Ability, Shoes, Stamina
// Functions: Score Points, Defend, New Shoes, Increase / Decrease Stamina

// Pseudocode
// Colors
var fg_white = "\x1b[37m";
var fg_black = "\x1b[30m";
var fg_red = "\x1b[31m";
var fg_green = "\x1b[32m";
var fg_yellow = "\x1b[33m";
var fg_magenta = "\x1b[35m";
var fg_cyan = "\x1b[36m";
var fg_lightgray = "\x1b[90m";
var fg_lightgreen = "\x1b[92m";
var fg_lightblue = "\x1b[94m";
var fg_lightyellow = "\x1b[93m";
var fg_lightred = "\x1b[91m";
var fg_lightmagenta = "\x1b[95m";
var fg_blue = "\x1b[34m";
var fg_lightwhite = "\x1b[97m";
var fg_lightcyan = "\x1b[96m";
var bg_black = "\x1b[40m";
var bg_red = "\x1b[41m";
var bg_green = "\x1b[42m";
var bg_yellow = "\x1b[43m";
var bg_blue = "\x1b[44m";
var bg_magenta = "\x1b[45m";
// Code Begin
function team(name, g, f, bck, color, level){
	this.name = name; 
	this.g = g; 
	this.f = f; 
	this.bck = bck; 
	this.games = 0;
	this.color = color;
	this.level = level;
	this.w = 0;
	this.l = 0;
	this.g_pts = 0;
	this.f_pts = 0;
	this.pts = 0;
	this.o_pts = 0;
	this.printRoster = function(){
		console.log(this.color,"ROSTER:", "#23", this.g, "&& #33", this.f, "&& #91", this.bck, "\n");
	};
};

function player(name, pos, j_no, off, def) {
	this.name = name;
	this.pos = pos;
	this.j_no = j_no;
	this.off = off;
	this.def = def;
	this.injured = false;
};

var playGame = function(team1, team2){
	var score1 = [0,0];
	var score2 = [0,0];
	for (i in score1)
	  score1[i] = Math.floor((Math.random() * (team1.level/2)) + 1);
	for (i in score2)
	  score2[i] = Math.floor((Math.random() * (team2.level/2)) + 1);
    
	console.log(team2.color, team1.games + 1, "\bth game vs.", team2.name);
	console.log(team1.color, team1.g, "scores", score1[0], "points &", team1.f, "scores", score1[1], "points. ");
	console.log(team2.color, team2.g, "scores", score2[0], "points &", team2.f, "scores", score2[1], "points. ");
	//console.log(white, "\b------------------------------------------------");
	if ((score1[0] + score1[1]) > (score2[0] + score2[1])) {
		team1.w += 1;
		console.log(fg_white,"\b-----", team1.name, "win:", score1[0] + score1[1], "to", score2[0] + score2[1], "-----\n");
	}
	else {
		team1.l += 1;
		console.log(fg_white, "\b-----", team2.name, "win:", score2[0] + score2[1], "to", score1[0] + score1[1], "-----\n");
	}
	team1.games += 1;
	team1.g_pts += score1[0];
	team1.f_pts += score1[1];
	team1.pts += (score1[0] + score1[1]);
	team1.o_pts += (score2[0] + score2[1]);
};

var statistics = function(team){
	//console.log(team.color, "###################################################");
	console.log(team.color, "#####", "\x1b[97m", "After", team.games, "games", team.name, "has a record of", team.w, "-", team.l, team.color, "#####");
	console.log("\x1b[97m", team.g, "averages", Math.round(team.g_pts / team.games), "ppg &", team.f, "averages", Math.round(team.f_pts / team.games), "ppg.");
	console.log(" Scoring", Math.round(team.pts / team.games), "points per game & Allowing", Math.round(team.o_pts / team.games), "points per game\n");
    //console.log(team.color, "###################################################\n");
};

var injury = function(team){
	var injuries = ["","twisted ankle", "fractued thumb", "sprained toe"];
	var injur = Math.floor((Math.random() * 3)+ 1);
	console.log("\x1b[35m", "++", team.g, "suffered a", injuries[injur], "and will be replaced by", team.bck, "++");
	team.IR = team.g;
	team.g = team.bck;
	team.bck = "Null I. Undefined";
	console.log(" ++ Team has signed journeyman", team.bck, "to a temporary contract ++");
};

var line_123456789 = function(){
 	console.log("Congratulations, you have beaten my baksetball video game");
 	console.log("Created By: Luis Ybarra");
 	console.log("Created: February 11, 2016\n");
 	console.log("Starring:");
 	console.log("Thank you for playing, I hope you enjoyed my game");
}

// Driver Code (Game Code)
// Create Players max off - 25, max def - 10
// Player skills matrix?
var d_wad = new player("D. Wade", "Guard", 3, 17, 4);
var c_bos = new player("C. Bosh", "Forward", 1, 11, 1);
var j_har = new player("J. Harden", "Guard", 13, 16, 1);
var d_how = new player("D. Howard", "Forward", 12, 14, 2);
var d_wil = new player("D. Williams", "Guard", 8, 19, 3);
var d_now = new player("D. Nowitzki", "Forward", 41, 25, 9);
var k_leo = new player("K. Leonard", "Guard", 2, 20, 5);
var t_dun = new player("T. Duncan", "Forward", 21, 25, 10);
var e_ble = new player("E. Bledsoe", "Guard", 2, 10, 2);
var t_cha = new player("T. Chandler", "Forward", 4, 11, 8);
var r_jac = new player("R. Jackson", "Guard", 1, 13, 5);
var a_dru = new player("A. Drummond", "Forward", 0, 12, 6);
var k_irv = new player("K. Irving", "Guard", 2, 20, 7);
var king = new player("King James", "Forward", 23, 30, 30);
var m_ell = new player("M. Ellis", "Guard", 11, 20, 5);
var p_geo = new player("P. George", "Forward", 13, 22, 9);
var v_ola = new player("V. Oladipo", "Guard", 5, 18, 2);
var n_vuc = new player("N. Vučević", "Forward", 9, 15, 2);
var melo = new player("Melo", "Guard", 7, 45, -10);
var r_lop = new player("R. Lopez", "Forward", 8, 10, 10);
var c_oba = new player("C. O'Bannon", "Guard", 4, 4444, 4444);
var m_zie = new player("Maciej Zieliński", 9, 4444, 4444);
var a_gie = new player("A. Giedraitis", 25, 4444, 4444);
var bird = new player("Larry Bird", 33, 597, 597);
var dr_j = new player("Julius Irving", 6, 597, 597);
// Create Teams
var my_team = new team("Chicago Script-a-Bulls", "Integer Jordan", "String Pippen", "Boolean Rodman", fg_red, 82);
var heat = new team("Miami JavaHeat", "D. Wade", "C. Bosh", "", fg_yellow, 50);
var rckt = new team("Houston JavaRockets", "J. Harden", "D. Howard", "", fg_lightred, 46);
var mvrk = new team("Dallas Javericks", "D. Williams", "D. Nowitzki", "", fg_lightcyan, 56);
var spur = new team("San Antonio JavaSpurs", "K. Leonard", "T. Duncan", "", fg_lightgray, 60);
var suns = new team("Phoenix Sun Java", "E. Bledsoe", "T. Chandler", "", fg_magenta, 52);
var pstn = new team("Detroit JavaPistons", "R. Jackson", "A. Drummond", "", fg_lightblue, 56);
var cvlr = new team("Cleveland Javaliers", "K. Irving", "King James", "", fg_lightyellow, 59);
var pace = new team("Indiana JavaPacers", "M. Ellis", "P. George", "", fg_yellow, 64);
var mgic = new team("Orlando JavaMagic", "V. Oladipo", "N. Vučević", "", fg_cyan, 69);
var knck = new team("New York Scripts", "Melo", "R. Lopez", "", fg_blue, 21);
var pole = new team("Śląsk Wrocław", "C. O'Bannon", "Maciej Zieliński", "A. Giedraitis", fg_green, 8888);
var great1 = new team("All-Time Greats", "Larry Bird", "Julius Irving", "A. Jaswinski", fg_white, 597);
console.log("*****  JavaScript Basketball League  *****");
my_team.printRoster();
playGame(my_team, heat);
playGame(my_team, rckt);
playGame(my_team, mvrk);
playGame(my_team, spur);
//injury(my_team);
playGame(my_team, suns);
playGame(my_team, pstn);
playGame(my_team, cvlr);

// Features to Implement
// ejection
// player returns from injury
// Playofffs
// Mid-game subsitution
// Season Summary
statistics(my_team);	
if (my_team.w >= 5) {
	console.log("\x1b[42m","You have clinched a playoff berth", "\x1b[40m");
	//console.log("\x1b[40m", "*******");
}
else {
	console.log("\x1b[43m","You had a good season but you did not make the playoffs", "\x1b[40m");
	//console.log("\x1b[40m", "========");
}
// IF bck$ = "playoff" THEN GOTO 5000 ELSE GOTO 20
// Each Game gets progressively more difficult
// 8888 PRINT "Here comes the dream championship. It's just you vs. the All-Time Greats"
// PRINT "Championship Game"
// PRINT "All-Time Greats Record...... 597-0"
/*
9000 PRINT "We're sorry, but you have been eliminated from the playoffs"
*/
// Refactored Code
// Reflection
//
//
//
//
//
//
//
//