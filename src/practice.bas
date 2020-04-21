CLS

name$ = "dummy"

WHILE name$ <> ""
    PRINT
    COLOR 15
    INPUT "Enter a person's name (press ENTER alone to exit): ", name$

    IF name$ <> "" THEN
        winningsOK = 0

        WHILE winningsOK = 0
            PRINT
            INPUT "Specify the amount won (100-400): ", winnings

            IF winnings < 100 OR winnings > 400 THEN
                BEEP

                COLOR 4
                PRINT
                PRINT "Amount outside allowable range. Try again..."
                COLOR 15
            ELSE
                winningsOK = 1
            END IF
        WEND

        CLS

        COLOR 2
        PRINT name$; " has just won $"; winnings; "in the Samford Sweepstakes."
    END IF
WEND
