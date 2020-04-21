'Program:           array.bas
'Course:            COSC107
'Description:       Stores and retreives student information from arrays.
'Author:            Connor Sullivan
'Date:              03/12/13

CLS

DIM students$(10), majors$(10), ages(10)

FOR count = 1 TO 10
    CLS
    COLOR 15
    INPUT "Enter a name (ENTER alone to exit): ", student$
    IF student$ <> "" THEN
        students$(count) = student$
        CLS
        INPUT "Enter a major: ", major$
        majors$(count) = major$
        CLS
        INPUT "Enter an age: ", age
        ages(count) = age
    ELSE
        count = 11
    END IF
NEXT count

target$ = "..."

WHILE target$ <> ""
    PRINT
    COLOR 15
    INPUT "Enter a student to search for (ENTER alone to exit): ", target$

    found$ = "n"

    IF target$ <> "" THEN
        FOR count = 1 TO 10
            IF students$(count) = target$ THEN
                found$ = "y"
                CLS
                COLOR 2
                PRINT target$, "was successfully found!"
                PRINT
                PRINT "Major: ", majors$(count)
                PRINT
                PRINT "Age: ", ages(count)
                count = 11
            END IF
        NEXT count

        IF found$ = "n" THEN
            CLS
            COLOR 4
            PRINT target$, "was not found in the array."
        END IF
    END IF
WEND
