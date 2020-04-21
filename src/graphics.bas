'Program:           graphics.bas
'Course:            COSC107
'Description:       Graphics demostration with a qBASIC GUI.
'Author:            Connor Sullivan
'Date:              05/07/13

SCREEN 12
CLS

WINDOW (-100, 0)-(0, 25)

backgroundColor = 0
lineColor = 15
shiftDistance = 73
delay = 256000

'drawing the character "C"
LINE (-90, 90)-(-83, 90), lineColor
LINE (-90, 90)-(-90, 83), lineColor
LINE (-90, 83)-(-83, 83), lineColor

'drawing the character "O"
LINE (-78, 90)-(-71, 83), lineColor, B

'drawing the character "S"
LINE (-66, 90)-(-59, 90), lineColor
LINE (-66, 90)-(-66, 86.5), lineColor
LINE (-66, 86.5)-(-59, 86.5), lineColor
LINE (-59, 86.5)-(-59, 83), lineColor
LINE (-59, 83)-(-66, 83), lineColor

'drawing the character "C"
LINE (-54, 90)-(-47, 90), lineColor
LINE (-54, 90)-(-54, 83), lineColor
LINE (-54, 83)-(-47, 83), lineColor

'drawing the character "1"
LINE (-35, 90)-(-35, 83), lineColor

'drawing the character "0"
LINE (-30, 90)-(-23, 83), lineColor, B

'drawing the character "7"
LINE (-18, 90)-(-11, 90), lineColor
LINE (-11, 90)-(-11, 83), lineColor

INPUT "Press ENTER to begin...", dummy

CLS

FOR i = 0 TO shiftDistance STEP .1

    'dropping it like it's hot
    LINE (-90, 90 - i)-(-83, 90 - i), lineColor
    LINE (-90, 90 - i)-(-90, 83 - i), lineColor
    LINE (-90, 83 - i)-(-83, 83 - i), lineColor

    FOR j = 1 TO delay
        'empty loop to "lag" the program
    NEXT j

    'erasing the evidence
    LINE (-90, 90 - i)-(-83, 90 - i), backgroundColor
    LINE (-90, 90 - i)-(-90, 83 - i), backgroundColor
    LINE (-90, 83 - i)-(-83, 83 - i), backgroundColor

NEXT i

're-drawing the final product
LINE (-90, 17)-(-83, 17), lineColor
LINE (-90, 17)-(-90, 10), lineColor
LINE (-90, 10)-(-83, 10), lineColor

FOR i = 0 TO shiftDistance STEP .1

    LINE (-78, 90 - i)-(-71, 83 - i), lineColor, B

    FOR j = 1 TO delay
        ' empty loop to "lag" the program
    NEXT j

    LINE (-78, 90 - i)-(-71, 83 - i), backgroundColor, B

NEXT i

LINE (-78, 17)-(-71, 10), lineColor, B

FOR i = 0 TO shiftDistance STEP .1

    LINE (-66, 90 - i)-(-59, 90 - i), lineColor
    LINE (-66, 90 - i)-(-66, 86.5 - i), lineColor
    LINE (-66, 86.5 - i)-(-59, 86.5 - i), lineColor
    LINE (-59, 86.5 - i)-(-59, 83 - i), lineColor
    LINE (-59, 83 - i)-(-66, 83 - i), lineColor

    FOR j = 1 TO delay
        'empty loop to "lag" the program
    NEXT j

    LINE (-66, 90 - i)-(-59, 90 - i), backgroundColor
    LINE (-66, 90 - i)-(-66, 86.5 - i), backgroundColor
    LINE (-66, 86.5 - i)-(-59, 86.5 - i), backgroundColor
    LINE (-59, 86.5 - i)-(-59, 83 - i), backgroundColor
    LINE (-59, 83 - i)-(-66, 83 - i), backgroundColor

NEXT i

LINE (-66, 17)-(-59, 17), lineColor
LINE (-66, 17)-(-66, 13.5), lineColor
LINE (-66, 13.5)-(-59, 13.5), lineColor
LINE (-59, 13.5)-(-59, 10), lineColor
LINE (-59, 10)-(-66, 10), lineColor

FOR i = 0 TO shiftDistance STEP .1

    LINE (-54, 90 - i)-(-47, 90 - i), lineColor
    LINE (-54, 90 - i)-(-54, 83 - i), lineColor
    LINE (-54, 83 - i)-(-47, 83 - i), lineColor

    FOR j = 1 TO delay
        'empty loop to "lag" the program
    NEXT j

    LINE (-54, 90 - i)-(-47, 90 - i), backgroundColor
    LINE (-54, 90 - i)-(-54, 83 - i), backgroundColor
    LINE (-54, 83 - i)-(-47, 83 - i), backgroundColor

NEXT i

LINE (-54, 17)-(-47, 17), lineColor
LINE (-54, 17)-(-54, 10), lineColor
LINE (-54, 10)-(-47, 10), lineColor

'cue "107" falling all at once
FOR i = 0 TO shiftDistance STEP .1

    LINE (-35, 90 - i)-(-35, 83 - i), lineColor
    LINE (-30, 90 - i)-(-23, 83 - i), lineColor, B
    LINE (-18, 90 - i)-(-11, 90 - i), lineColor
    LINE (-11, 90 - i)-(-11, 83 - i), lineColor

    FOR j = 1 TO delay
        'empty loop to "lag" the program
    NEXT j

    LINE (-35, 90 - i)-(-35, 83 - i), backgroundColor
    LINE (-30, 90 - i)-(-23, 83 - i), backgroundColor, B
    LINE (-18, 90 - i)-(-11, 90 - i), backgroundColor
    LINE (-11, 90 - i)-(-11, 83 - i), backgroundColor

NEXT i

LINE (-35, 17)-(-35, 10), lineColor
LINE (-30, 17)-(-23, 10), lineColor, B
LINE (-18, 17)-(-11, 17), lineColor
LINE (-11, 17)-(-11, 10), lineColor

'cycle the final image through various colors
FOR i = 1 TO 15

    LINE (-90, 17)-(-83, 17), i
    LINE (-90, 17)-(-90, 10), i
    LINE (-90, 10)-(-83, 10), i

    LINE (-78, 17)-(-71, 10), i, B

    LINE (-66, 17)-(-59, 17), i
    LINE (-66, 17)-(-66, 13.5), i
    LINE (-66, 13.5)-(-59, 13.5), i
    LINE (-59, 13.5)-(-59, 10), i
    LINE (-59, 10)-(-66, 10), i

    LINE (-54, 17)-(-47, 17), i
    LINE (-54, 17)-(-54, 10), i
    LINE (-54, 10)-(-47, 10), i

    LINE (-35, 17)-(-35, 10), i

    LINE (-30, 17)-(-23, 10), i, B

    LINE (-18, 17)-(-11, 17), i
    LINE (-11, 17)-(-11, 10), i

    SLEEP 1

NEXT i
