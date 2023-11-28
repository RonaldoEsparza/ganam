class CardModel {
  final String name, image, date;

  CardModel({required this.name, required this.image, required this.date});
}

List<CardModel> demoCardData = [
  CardModel(
    name: "Normando Puro",
    image: "vaca1.jpg",
    date: "4.20-30",
  ),
  CardModel(
    name: "Normando puro",
    image: "vaca1.jpg",
    date: "4.28-31",
  ),
];
