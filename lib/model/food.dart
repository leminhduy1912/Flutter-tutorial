class Food {
   String name;
   String price;
   String imgPath;
   String rating;
  Food({
    required this.name,
    required this.rating,
    required this.imgPath,
    required this.price
  });
  String get _name=>name;
  String get _price=>price;
  String get _imgPath=>imgPath;
  String get _rating=>rating;
}