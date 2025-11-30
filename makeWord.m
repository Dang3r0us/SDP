function [spriteList] = makeWord(word)
CAPITALS = ones(1, 26);
for i = 1:2
    for j = 1:13
        CAPITALS((i - 1) * 13 + j) = toIndex(j + 19, i + 30);
    end
end
%disp(CAPITALS);
word = upper(word);
spriteList = ones(size(word));
for c = 1:length(word)
    spriteList(c) = CAPITALS(double(word(c)) - 64);
end
end