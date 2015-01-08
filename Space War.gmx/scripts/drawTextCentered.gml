#define drawTextCentered
// Draws text centered within a certain area

// Give the arguments more decriptive names
str = argument0 // the string of text, or simply string, that we want to write out
xPos = argument1 // the x-position of the drawing area
yPos = argument2 // the y-position of the drawing area
widthOfChar = argument3 // the width of each character
widthOfArea = argument4 // the width of the area in which we want to center the text

pos = drawTextCenteredPosition(str, xPos, yPos, widthOfChar, widthOfArea)
draw_text(pos[0], pos[1], str)

#define drawTextCenteredPosition
// Give the arguments more decriptive names
str = argument0 // the string of text, or simply string, that we want to write out
xPos = argument1 // the x-position of the drawing area
yPos = argument2 // the y-position of the drawing area
widthOfChar = argument3 // the width of each character
widthOfArea = argument4 // the width of the area in which we want to center the text

// Calculate the margin
strLen = string_length(str) * widthOfChar
n = widthOfArea - strLen
n = ceil(n/2)

pos[0]= xPos+n
pos[1] = yPos

return pos