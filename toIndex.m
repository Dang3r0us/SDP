function [index] = toIndex(xPos, yPos)
    index = (yPos-1)*32 + xPos;
end