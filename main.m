game = simpleGameEngine("retro_pack.png", 16, 16, 1);
background = loadBackground(1, 19, 9);
background(4, 5:13) = makeWord('game name');
background(7, 4:16) = makeWord('press any key');
drawScene(game, background);
getKeyboardInput(game);
fprintf("start game\n");
