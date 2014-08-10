library play_card;

import "package:play_phaser/phaser.dart";


part "view/card.dart";
part "view/table.dart";



class Engine {
  Game game;
  Engine([num width=800,num height=600, String parent='']){
    game = new Game(width, height, AUTO, parent);
    game.state.add('card_test', new CardTest());
    game.state.start('card_test');
  }
}


class CardTest extends State {
  preload() {
    //game.load.atlas('breakout', 'img/breakout.png', 'img/breakout.json');

    game.load.atlasJSONHash('tyrian', 'img/tyrian.png', 'img/tyrian.json');
  }

  Sprite bot;
  CursorKeys cursors;
  Group aliens;

  create() {

  }

  update() {
    game.physics.arcade.collideSpriteVsGroup(bot,aliens);
    //bot.rotation += 0.1;
    //bot.x+=1;
  }

  render() {
    game.debug.quadTree(game.physics.arcade.quadTree);
    game.debug.body(bot);
  }

  shutdown() {

  }
}
