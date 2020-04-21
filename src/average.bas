'Program:           average.bas
'Course:            COSC107
'Description:       Calculates the average of user-specified numbers.
'Author:            Connor Sullivan
'Date:              02/11/13

CLS

count = 0
total = 0
average = 0

start:
PRINT 'This is used for extra spacing between display messages.
COLOR 15 'This colors all of the following text bright white.

INPUT "Please enter a positive number (Press ENTER or 0 alone to exit):"; number

IF number = 0 THEN
    start2:
    PRINT
    COLOR 15

    INPUT "Are you sure you want to exit? (Yes/No):"; reply$

    IF reply$ = "Yes" OR reply$ = "yes" THEN
        STOP
    END IF

    IF reply$ = "No" OR reply$ = "no" THEN
        GOTO start
    END IF

    IF reply$ <> "Yes" AND reply$ <> "yes" AND reply$ <> "No" AND reply$ <> "no" THEN
        BEEP 'This makes the computer issue an audible "beep" sound.

        PRINT
        COLOR 4 'This colors the following text red.
        PRINT reply$; " is not an acceptable answer, try again..."

        GOTO start2
    END IF
END IF

IF number < 0 THEN
    BEEP

    COLOR 4
    PRINT
    PRINT "That is not an acceptable number. Please try again..."

    GOTO start
END IF

IF number > 0 THEN
    CLS

    count = count + 1
    total = total + number
    average = total / count

    COLOR 2 'This colors the following text green.
    PRINT
    PRINT "The average of the"; count; "number(s) is"; average

    GOTO start
END IF
