import 'dart:math';

import 'package:DeckCards/Card.dart';

class Deck{

  List<Card> cards=[];

  void printCards(){
    for(Card card in cards){
      print(card);
    }
  }

  Deck(){
    var ranks=['Ace','One','Two','Three','Four','Five'];
    var suits=['Diamonds','Clubs','Spades','Hearts'];
    for(var mySuit in suits){
      for(var rank in ranks){
        var card=Card(suit:mySuit, rank:rank);
        cards.add(card);
      }
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'This is a Deck!';
  }


  void shuffleCards(){
    cards.shuffle(Random());
  }

   cardsWithSuit(String suit){
   return cards.where((card) => card.suit==suit);
  }

  deal(int handsize){
    var hand=cards.sublist(0,handsize);
    cards=cards.sublist(handsize);
    return hand;
  }

  removeCard(String suit, String rank){
    cards.removeWhere((card) => card.suit==suit&& card.rank==rank);
  }
}
