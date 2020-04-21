'Program:           numbers.bas
'Course:            COSC107
'Description:       Gets a value from the user and computes either the next 10 or previous 10 integers depending on the user's choice.
'Author:            Connor Sullivan
'Date:              03/02/13

CLS

number = 1 'This is a dummy value used to get into the WHILE loop

WHILE number <> 0
    COLOR 15 'This colors the following text bright-white
    PRINT 'This is an empty PRINT command used for spacing

    'The extra spaces in some of the following output messages
    'are for purely aesthetic reasons

    INPUT "   Please enter a number (0 to exit)..."; number

    CLS

    IF number <> 0 THEN
        answer = 3 'Another dummy value to get into the next WHILE loop

        WHILE answer <> 1 AND answer <> 2
            COLOR 15
            PRINT
            PRINT "   Display the 10 lesser or greater integers than "; number; " ?"
            INPUT "   ( 1 for lesser, 2 for greater ) "; answer

            IF answer = 1 THEN
                CLS

                PRINT
                PRINT "   The 10 integers less than "; number; " are..."
                COLOR 10 'This colors the following text light-green
                PRINT

                FOR number = number - 1 TO number - 10 STEP -1
                    PRINT number
                NEXT
            END IF

            IF answer = 2 THEN
                CLS

                PRINT
                PRINT "   The 10 integers greater than "; number; " are..."
                COLOR 10
                PRINT

                FOR number = number + 1 TO number + 10
                    PRINT number
                NEXT
            END IF

            IF answer <> 1 AND answer <> 2 THEN
                CLS

                COLOR 12 'This colors the following text light-red
                PRINT
                PRINT "   That is not an acceptable answer."
            END IF
        WEND
    END IF
WEND
