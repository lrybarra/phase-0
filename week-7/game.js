 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Win the Dream Championship
// Goals: Clinch a Playoff Berth
//		  Have Fun
// Characters: Guard, Forward, Backup  
// Objects: Team, Player
// Functions: Points, 

// Pseudocode
/****************************  Colors  ****************************/
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
var bg_white = "\x1b[47m";
var bg_lightblue = "\x1b[104m";
/****************************  Game Functions  ****************************/
function team(name, g, f, bck, color){
	this.name = name; 
	this.g = g; 
	this.f = f; 
	this.bck = bck; 
	this.games = 0;
	this.color = color;
	this.w = 0;
	this.l = 0;
	this.pts = 0;
	this.o_pts = 0;
	this.printRoster = function(){
		console.log(this.color,"ROSTER:", this.g.j_no, this.g.name, "&&", this.f.j_no, this.f.name, "&&", this.bck.j_no, this.bck.name, "\n");
	};
};

function player(name, pos, j_no, off, def) {
	this.name = name;
	this.pos = pos;
	this.j_no = "#" + j_no;
	this.off = off;
	this.def = def;
	this.injured = false;
	this.pts = 0;
	this.games = 0;
	this.avg = function(){
		if (games != 0)
			return Math.round(this.pts/this.games);
		else
			return 0;
	};
};
// pass in array with off and def levels
// return array with points (4 elements)
var score = function(p1, p2, p3, p4){
    var score = [0,0,0,0];
    var off_mtrx = [p1.off, p2.off, p3.off, p4.off];
    var def_mtrx = [p3.def, p4.def, p1.def, p2.def];
    for (i in score){
    	score[i] = Math.floor (((Math.random() * off_mtrx[i]) + 1) - ((Math.random() * def_mtrx[i]) + 1));
    	if (score[i] < 0)
    		score[i] = 1;	
    }
	return score;
};

var playGame = function(team1, team2){
	pts = score(team1.g, team1.f, team2.g, team2.f);
    
	console.log(team2.color, team1.games + 1, "\bth game vs.", team2.name);
	console.log(team1.color, team1.g.j_no, team1.g.name, "scores", pts[0], "points &", team1.f.j_no, team1.f.name, "scores", pts[1], "points. ");
	console.log(team2.color, team2.g.j_no, team2.g.name, "scores", pts[2], "points &", team2.f.j_no, team2.f.name, "scores", pts[3], "points. ");
	//console.log(white, "\b------------------------------------------------");
	p_pts = pts[0] + pts[1];
 	o_pts = pts[2] + pts[3];
 	ovr = "\b";
	if (p_pts > o_pts) {
		team1.w += 1;
		winner = team1.name;
		w_pts = p_pts;
		l_pts = o_pts;
	}
	else if (p_pts == o_pts){ // Added after Houston "won" a tie.
		p_pts += 1;
		pts[0] += 1;
		team1.w += 1;
		winner = team1.name;
		w_pts = p_pts;
		l_pts = o_pts;
		ovr = "IN OVERTIME!";
	}
	else {
		winner = team2.name
		team1.l += 1;
		w_pts = o_pts;
		l_pts = p_pts;
	}
	console.log(fg_white,"\b-----", winner, "win:", w_pts, "to", l_pts, ovr, "-----\n");
	team1.games += 1;
	team1.g.games += 1;
	team1.f.games += 1;
	team1.g.pts += pts[0];
	team1.f.pts += pts[1];
	team1.pts += p_pts;
	team1.o_pts += o_pts;
	if (winner == team1.name) {
		return true;
	}
	else
		return false;
};

var statistics = function(team){
	console.log(team.color, "#####", fg_lightwhite, "After", team.games, "games", team.name, "has a record of", team.w, "-", team.l, team.color, "#####");
	console.log(fg_lightwhite, team.g.j_no, team.g.name, "averages", Math.round(team.g.pts / team.g.games), "ppg &", team.f.j_no, team.f.name, "averages", Math.round(team.f.pts / team.f.games), "ppg.");
	console.log(" Scoring", Math.round(team.pts / team.games), "points per game & Allowing", Math.round(team.o_pts / team.games), "points per game\n");
};

var injury = function(team){
	var injuries = ["","twisted ankle", "fractued thumb", "sprained toe"];
	var injur = Math.floor((Math.random() * 3)+ 1);
	var who_inj = Math.floor((Math.random() * 5)+ 1);
	if (who_inj >= 5) {
		team.g.injured = true;
		IR = team.g;
		team.g = team.bck;
	}
	else {
		team.f.injured = true;
		IR = team.f;
		team.f = team.bck;
	}
	console.log(bg_magenta, fg_lightwhite, "++", IR.name, "suffered a", injuries[injur], "and will be replaced by", team.bck.name, "++", bg_black);
	team.IR = IR;
	team.bck = new player("Null I.M. Undefined", null, NaN, 0, 0);
	console.log(" ++ Team has signed journeyman", team.bck.name, "to a temporary contract ++\n");
};

var the_return = function(team){
	console.log(bg_lightblue, fg_lightwhite, "++", IR.name, "has returned from the hospital! ++", bg_black);
	console.log("++ Team has cut journeyman", team.bck.name, "++\n");
	team.IR.injured = false;
	if (team.IR.pos == "Guard"){
		team.bck = team.g;
		team.g = team.IR;
	}
	else {
		team.bck = team.f;
		team.f = team.IR;
	}
}

var ejection = function(team){
	var ejections = ["", "arguing with the referee", "taunting the opposition", "kicking the videographer"];
}

var line_123456789 = function(){
 	console.log(fg_red, "C", fg_lightred, "\bO", fg_lightcyan, "\bN", fg_cyan, "\bG", fg_lightgreen, "\bR", fg_green, "\bA", fg_lightmagenta, "\bT", fg_magenta, "\bU", fg_lightyellow, "\bL", fg_yellow, "\bA", fg_lightwhite, "\bT", fg_white, "\bI", fg_lightblue, "\bO", fg_blue, "\bN", fg_lightred, "\bS", fg_lightgray, "\b!", ", you have beaten my baksetball video game");
 	console.log("Created By: Luis Ybarra");
 	console.log("Created: February 11, 2016\n");
 	console.log("High Score: You!");
 	console.log("Thank you for playing, I hope you enjoyed my game");
}

// Driver Code (Game Code)
// Create Players max off - 25, max def - 10
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
var m_zie = new player("Maciej Zieliński", "Forward", 9, 4444, 4444);
var a_gie = new player("A. Giedraitis", "Guard", 25, 4444, 4444);
var bird = new player("Larry Bird", "Forward", 33, 597, 0);
var dr_j = new player("Julius Irving", "Forward", 6, 597, 0);
var k_pass = new player("A. Jaswinski", "Guard", 55, 597, 0);
var air = new player("Integer Jordan", "Guard", 23, 25, 10);
var pip = new player("String Pippen", "Forward", 33, 25, 10);
var rod = new player("Boolean Rodman", "Forward", 91, 10, 91);
var b_eic = new player("Brendan Eich", "Guard", 95, 5, 10);
var l_yba = new player("Luis Ybarra", "Forward", 3, 6, 10);
var plyf$ = new player("Playoffs", "", 500, 0, 0);
var rose = new player("D. Rose", "Guard", 1, 22, 10);
var buckets = new player("Jimmy G. Buckets", "Forward", 22, 25, 10);
var jo = new player("Joakim Noah", "Forward", 13, 9, 13);
// Create Teams
var heat = new team("Miami JavaHeat", d_wad, c_bos, "", fg_yellow);
var rckt = new team("Houston JavaRockets", j_har, d_how, "", fg_lightred);
var mvrk = new team("Dallas Javericks", d_wil, d_now, "", fg_lightcyan);
var spur = new team("San Antonio JavaSpurs", k_leo, t_dun, "", fg_lightgray);
var suns = new team("Phoenix Sun Java", e_ble, t_cha, "", fg_magenta);
var pstn = new team("Detroit JavaPistons", r_jac, a_dru, "", fg_lightblue);
var cvlr = new team("Cleveland Javaliers", k_irv, king, "", fg_lightyellow);
var pace = new team("Indiana JavaPacers", m_ell, p_geo, "", fg_yellow);
var mgic = new team("Orlando JavaMagic", v_ola, n_vuc, "", fg_cyan);
var knck = new team("New York Scripts", melo, r_lop, "", fg_blue);
var pole = new team("Śląsk Wrocław", c_oba, m_zie, a_gie, fg_green);
var JS = new team("Java Scripters", b_eic, l_yba, k_pass, fg_lightgreen);
var great1 = new team("All-Time Greats (597 wins 0 losses)", bird, dr_j, k_pass, fg_white);
var bulls = new team("Chicago Script-a-Bulls", rose, buckets, jo, fg_red);

var opponents = [heat, rckt, mvrk, spur, suns, pstn, cvlr, pace, mgic, knck, pole, JS, great1];
var my_team = pole;

console.log("*****  JavaScript Basketball League  *****");

my_team.printRoster();
var opp = 0;
var team_injury = false;
for (var sea=0; sea<6; sea++){
	playGame(my_team, opponents[sea]);
	if (sea == 5)
		statistics(my_team)
	if (team_injury == false){
		inj = Math.floor((Math.random() * 10)+ 1);
		if (inj == 4){
			injury(my_team);
			team_injury = true;
		}
	}
	else {
		recovery = Math.floor((Math.random() * 10) + 1);
		if (recovery > 3) {
			the_return(my_team);
			team_injury = false;
		}
	}
}

// Playoff Edition
// for (var ply=6; ply<opponents.length; ply++){
// 	gameOn = playGame(my_team, opponents[ply]);
// 	if (gameOn == false)
// 		break;
// }

//injury(my_team);
// Features to Implement
// player returns from injury
// Mid-game subsitution
if (my_team.l == 0) {
	console.log(bg_white, "Here comes the dream championship. It's just you versus the", opponents[opponents.length-1].name, bg_black);
	var meBool = playGame(my_team, opponents[opponents.length-1]);
	meBool == true ? line_123456789() : console.log("We\'re sorry, but you have been eliminated from the playoffs");
}	
else if (my_team.w >= 5) {
	console.log(bg_green,"You have clinched a playoff berth", bg_black);
}
else {
	console.log(bg_yellow,"You had a good season but you did not make the playoffs", bg_black);
}
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