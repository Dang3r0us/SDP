function [spriteList] = makeWord(word)
    CAPITALS = ones(1, 26);
    for i = 1:2
        for j = 1:13
            CAPITALS((i - 1) * 13 + j) = toIndex(j + 19, i + 30);
        end
    end

    word = upper(word);
    spriteList = ones(size(word));
    for c = 1:length(word)
        if word(c) == " "
            spriteList(c) = 1;
        else
            spriteList(c) = CAPITALS(double(word(c)) - 64);
        end
    end
end
