// Draws text centered within a certain area

// Give the arguments more descriptive names
str = argument0;
xPos = argument1;
yPos = argument2;
widthOfChar = argument3;
widthOfArea = argument4;

// Calculate the margin
strLen = string_length(str) * widthOfChar;
n = widthOfArea - strLen;
n = ceil(n / 2);

// Voila!
draw_text(xPos + n, yPos, str);