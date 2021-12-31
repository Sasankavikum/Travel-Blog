class Travel {
  String name;
  String location;
  String url;

  Travel(this.name, this.location, this.url);

  static List<Travel> generateTravelBlog() {
    return [
      Travel('Place 1', 'Place 1', 'assets/images/ella.jpg'),
      Travel('Place 2', 'Place 2', 'assets/images/sigiriya.jpg'),
      Travel('Place 3', 'Place 3', 'assets/images/Waterfalls-Srilanka.jpg'),
      Travel('Place 4', 'Place 4', 'assets/images/adams_peak.jpg'),
      Travel('Place 5', 'Place 5', 'assets/images/jaffa_port.jpg'),
      Travel('Place 6', 'Place 6', 'assets/images/boduru_ella.jpg'),
      Travel('Place 7', 'Place 7', 'assets/images/Horton_Plains.jpg'),
      Travel('Place 8', 'Place 8', 'assets/images/jungle_beach.jpg'),
      Travel('Place 9', 'Place 9', 'assets/images/mirissa.jpg'),
      Travel('Place 10', 'Place 10', 'assets/images/pinnawala_elephant.jpg'),
      Travel('Place 11', 'Place 11', 'assets/images/polonnaruwa.jpg'),
      Travel('Place 12', 'Place 12', 'assets/images/yaka.jpg'),
      Travel('Place 13', 'Place 13', 'assets/images/Temple_of_tooth_relic.jpg'),
      Travel('Place 14', 'Place 14', 'assets/images/port_city.jpg'),
      Travel('Place 15', 'Place 15', 'assets/images/ruwanwelimahaseya.jpg')
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel('Place 20', 'Place 20', 'assets/images/pahan thudawa.jpg'),
      Travel('Place 21', 'Place 21', 'assets/images/Bakers bend.jpg'),
      Travel('Place 22', 'Place 22', 'assets/images/surathali ella.jpg'),
    ];
  }
}
