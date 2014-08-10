//import "package:play_phaser/phaser.dart";
import "package:play_card/play_card.dart";


main() {
  var engine = new Engine();

  //Set the player number of this game
  engine.setPlayer(4);

  //Define a role for player with a name and a set of actions
//  engine.define(() {
//    engine.defineRole('hero', ['attack']);
//    //Define a action for the name, sender,
//    engine.defineAction('attack', Sender, Target, Condition);
//    engine.defineArea();
//  });



  //define a token with a name and a set of token state.
  engine.define.token('',['']);

  //define a action
  engine.define.action.userToUser('xxx action','','');
  engine.define.action.tokenToArea('');


  //
  engine.define.judge('user1','card1',(){
    var uid =engine.info('').uid;
    var tokenID=engine.info('');


  });





  //define a phrase by given a name, a set of actions, time out, and timeOutFunc
  engine.define.phrase('play card', ['play a card on table', 'xxx actions'],
  timeOut:30,
  timeOutFunc: () {


  });


  engine.on('event name', () {
    engine.user.current.act('').using().to();
    engine.user.all.forEach(() {
    });
  });


  engine.on('turn', () {

    //wait the current player action within 30s and override the timeout function
    engine.user.current.wait('xxx phrase', 30, () {

    });

    //engine.user.all.forEach.wait('xxx phrase', 10);
    //engine.user.all.forAll.wait('xxx a', 10);

    engine.event.trigger('');


    engine.check('');

    //set current user end his turn
    engine.user.current.finish('turn');
    //engine.event.trigger('turn');

  });


  engine.on('init', () {

    //money is indeed a token
    engine.user.all.set('money', 1);
    engine.user.all.set('xxx token', 2);


    //at least n tonkens, default is 1
    //engine.user[0].has('money',1);

    engine.event.trigger('turn');

  });

  engine.start('init');
}
