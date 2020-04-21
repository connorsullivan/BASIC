'Program:           maze.bas
'Course:            COSC107
'Description:       Attempts to solve a maze by randomly generating possible moves until the maze is solved.
'Author:            Connor Sullivan
'Date:              04/04/13

DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
DATA 1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1
DATA 1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1
DATA 1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1
DATA 1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,0,0,0,0,1,1,0,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1
DATA 0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,1,0,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,0,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,0,1,1,1,0,1,0,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,1,1,0,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,0,1,1,1,0,1,0,0,0,0,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,0,1,1,1,0,1,1,1,1
DATA 1,0,0,0,0,0,0,0,0,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0
DATA 1,0,1,0,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,0,1,1,0,1,1,1,1,1
DATA 1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,0,1,1,0,1,1,1,1,1
DATA 1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,0,1,1,0,1,1,1,1,1
DATA 1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,0,1,1,0,1,1,1,1,1
DATA 1,0,1,0,1,1,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,1,0,0,0,0,1,1
DATA 1,0,1,0,1,1,0,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1
DATA 1,0,0,0,1,1,0,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1,1
DATA 1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

maxRows = 21
maxCols = 60

COLOR 15

INPUT "Please enter a delay value (default 10000): ", delay$

IF delay$ = "" THEN

    delay$ = "10000"

END IF

OPTION BASE 1
DIM a(maxRows, maxCols)

FOR I = 1 TO maxRows
    FOR j = 1 TO maxCols
        READ a(I, j)
    NEXT j
NEXT I

CLS

FOR I = 1 TO maxRows
    FOR j = 1 TO maxCols
        IF a(I, j) = 0 THEN
            PRINT CHR$(32);
        ELSE
            PRINT CHR$(219);
        END IF
    NEXT j
    PRINT
NEXT I

startRow = 8
startCol = 1

endRow = 11
endCol = 60

travelerRow = startRow
travelerCol = startCol

mazeRunner$ = "*"

LOCATE startRow, startCol
PRINT mazeRunner$

LOCATE 23, 1

INPUT "Press ENTER to begin solving the maze...", dummy

CLS

FOR I = 1 TO maxRows
    FOR j = 1 TO maxCols
        IF a(I, j) = 0 THEN
            PRINT CHR$(32);
        ELSE
            PRINT CHR$(219);
        END IF
    NEXT j
    PRINT
NEXT I

LOCATE startRow, startCol
PRINT mazeRunner$

attemptedMoves = 0
actualMoves = 0

mazeFinished = 0

WHILE mazeFinished <> 1

    LOCATE travelerRow, travelerCol

    RANDOMIZE TIMER
    direction = INT(4 * RND) + 1

    IF direction = 1 THEN

        attemptedMoves = attemptedMoves + 1

        IF travelerRow - 1 >= 1 THEN

            IF a(travelerRow - 1, travelerCol) = 0 THEN

                FOR I = 1 TO VAL(delay$)
                    'dummy loop to suck up machine cycles
                NEXT I

                PRINT CHR$(32)
                travelerRow = travelerRow - 1
                LOCATE travelerRow, travelerCol
                PRINT mazeRunner$

                actualMoves = actualMoves + 1

                IF travelerRow = endRow AND travelerCol = endCol THEN

                    mazeFinished = 1

                END IF

            END IF

        END IF

    ELSEIF direction = 2 THEN

        attemptedMoves = attemptedMoves + 1

        IF travelerCol + 1 <= 60 THEN

            IF a(travelerRow, travelerCol + 1) = 0 THEN

                FOR I = 1 TO VAL(delay$)
                    'dummy loop to suck up machine cycles
                NEXT I

                PRINT CHR$(32)
                travelerCol = travelerCol + 1
                LOCATE travelerRow, travelerCol
                PRINT mazeRunner$

                actualMoves = actualMoves + 1

                IF travelerRow = endRow AND travelerCol = endCol THEN

                    mazeFinished = 1

                END IF

            END IF

        END IF

    ELSEIF direction = 3 THEN

        attemptedMoves = attemptedMoves + 1

        IF travelerRow + 1 <= 21 THEN

            IF a(travelerRow + 1, travelerCol) = 0 THEN

                FOR I = 1 TO VAL(delay$)
                    'dummy loop to suck up machine cycles
                NEXT I

                PRINT CHR$(32)
                travelerRow = travelerRow + 1
                LOCATE travelerRow, travelerCol
                PRINT mazeRunner$

                actualMoves = actualMoves + 1

                IF travelerRow = endRow AND travelerCol = endCol THEN

                    mazeFinished = 1

                END IF

            END IF

        END IF

    ELSE

        attemptedMoves = attemptedMoves + 1

        IF travelerCol - 1 >= 1 THEN

            IF a(travelerRow, travelerCol - 1) = 0 THEN

                FOR I = 1 TO VAL(delay$)
                    'dummy loop to suck up machine cycles
                NEXT I

                PRINT CHR$(32)
                travelerCol = travelerCol - 1
                LOCATE travelerRow, travelerCol
                PRINT mazeRunner$

                actualMoves = actualMoves + 1

                IF travelerRow = endRow AND travelerCol = endCol THEN

                    mazeFinished = 1

                END IF

            END IF

        END IF

    END IF

WEND

LOCATE 23, 1

PRINT "Maze successfully completed!"
PRINT
PRINT "Number of attempted moves:", attemptedMoves
PRINT "Number of actual moves:", actualMoves

PLAY "< B B L8 B L8 G# > L4 E"

'end of program
