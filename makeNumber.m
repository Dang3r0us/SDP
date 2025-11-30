function [spriteList] = makeNumber(number)
    NUMBERS = 948:957;

    spriteList = [];
    while number ~= 0
        spriteList(end+1) = NUMBERS(mod(number, 10) + 1);
        number = floor(number / 10);
    end
    spriteList = flip(spriteList);
end
