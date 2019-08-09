import 'package:DeckCards/Deck.dart';



main(List<String> arguments) {

  var deck= Deck();
  //deck.buildMyCards();
  deck.printCards();
  print(deck.toString());
  deck.shuffleCards();
  print('\n\n\n\n\nAfter Shuffling:\n');
  deck.printCards();
  print('\n\n\n\nRemoving Ace of Diamonds from the Deck...');
  deck.removeCard('Diamonds', 'Ace');
  print('\n\n\nAll cards of suit \'Diamonds\':');
  print(deck.cardsWithSuit('Diamonds'));
  print('\n\n\n\nDeal of 5:');
  print(deck.deal(5));
  print('\n\n\n\nRemaining Cards:\n');
  deck.printCards();
}
