import "location_fact.dart";

class Location{
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name,this.imagePath,this.facts);

  static List<Location> fetchAll(){
    return [
      Location('Majipa Lakhe', 'assets/images/image.jpg', [
        LocationFact('Summary',
            'Majipa Lakhey is a special lakhey in Nepalese folklore. He is also known as the Peaceful Bhairava. The dance of this Lakhey takes place only in the week of the full moon of the month of Yenlaa of the Nepal Sambat calendar. He is considered to be the protector of the children.'),
        LocationFact('Folk-Lore',
            'According to stories passed down through generations, a lakhey is supposed to have fallen in love with a girl from Majipa. So, the demon takes a form of a human and enters the city to see his beloved. Upon knowing the fact that the person is a Lakhey, the people capture the lakhey and present him to the king. The king makes a proposal to the demon that he will grant him a place in the city if he vows to preserve the children from other demons and participate in the annual Yanyaa Punhi Jatra (also called Indra Jatra). The Lakhey agrees and is supposed to reside in Majipa ever since.'),
      ]),
    ];
  }
}