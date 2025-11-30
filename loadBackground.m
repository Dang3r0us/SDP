function [background] = loadBackground(number, sizeX, sizeY)
    layouts = readmatrix("gameScenes.xlsx");
    background = ones(sizeY, sizeX);
    for y = 1:sizeY
        for x = 1:sizeX
            background(y, x) = toIndex(layouts((y - 1) * sizeX + x, 2 * number - 1), layouts((y - 1) * sizeX + x, 2 * number));
        end
    end
end