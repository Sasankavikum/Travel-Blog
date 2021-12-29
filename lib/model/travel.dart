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
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel('Place 4', 'Place 4', 'assets/images/pahan thudawa.jpg'),
      Travel('Place 5', 'Place 5', 'assets/images/Bakers bend.jpg'),
      Travel('Place 6', 'Place 6', 'assets/images/surathali ella.jpg'),
    ];
  }
}
