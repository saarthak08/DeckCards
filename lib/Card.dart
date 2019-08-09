class Card{

  String suit;
  String rank;

  Card(String rank, String suit){
    this.suit=suit;
    this.rank=rank;
  }

  @override
  String toString() {
    // TODO: implement toString
    return rank +' of '+ suit;
  }
}