#include <input.bas>

10 CLS 
DIM choice AS String
PRINT "Choose: [r]ock, [p]aper or [s]cissors"
choice = INPUT(1)

DIM player as Integer
IF NOT (choice = "r" OR choice = "p" OR choice = "s") THEN GOTO 10
IF choice = "r" THEN player = 0
IF choice = "p" THEN player = 1
IF choice = "s" THEN player = 2

REM rock=0, paper=1, scissors=2
DIM computer AS Integer
RANDOMIZE
computer = Int(Rnd * 3)

IF player = computer THEN GOTO score_draw
IF player = 0 THEN GOTO player_rock
IF player = 1 THEN GOTO player_paper
IF player = 2 THEN GOTO player_scissors

score_draw:
	PRINT "Draw!"
	GOTO 1000

player_rock:
	PRINT "You chose rock."
	IF computer = 1 THEN PRINT "Computer wins with paper!"
	IF computer = 2 THEN PRINT "Computer loses with scissors!"
	GOTO 1000

player_paper:
	PRINT "You chose paper."
	IF computer = 0 THEN PRINT "Computer loses with rock!"
	IF computer = 2 THEN PRINT "Computer wins with scissors!"
	GOTO 1000

player_scissors:
	PRINT "You chose scissors."
	IF computer = 0 THEN PRINT "Computer wins with rock!"
	IF computer = 1 THEN PRINT "Computer loses with paper!"
	GOTO 1000

1000 PRINT "Game Over"

DIM repeat as String
PRINT "Play again? [y/n]"
repeat = INPUT(1)
IF repeat = "y" THEN GOTO 10
