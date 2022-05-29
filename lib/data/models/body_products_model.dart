class BodyProductsModel {
  final bool isFavorite;
  final String ranking;
  final String img;
  final String title;
  final String description;
  final double price;
  final int amount;
  BodyProductsModel({
    required this.isFavorite,
    required this.amount,
    required this.description,
    required this.img,
    required this.price,
    required this.ranking,
    required this.title,
  });
}

List<BodyProductsModel> listBody = [
  BodyProductsModel(
      isFavorite: false,
      amount: 0,
      description: 'Fresh fruit of 500 gr, regular exported',
      img: 'banana.png',
      price: 20.00,
      ranking: '3.2',
      title: 'Banana'),
  BodyProductsModel(
      isFavorite: false,
      amount: 0,
      description: 'Fresh fruit of 500 gr, regular exported',
      img: 'fresa.png',
      price: 10.00,
      ranking: '4.1',
      title: 'Fresh'),
  BodyProductsModel(
      isFavorite: false,
      amount: 0,
      description: 'Fresh fruit of 500 gr, regular exported',
      img: 'manzana.png',
      price: 5.00,
      ranking: '2.1',
      title: 'Apple'),
  BodyProductsModel(
      isFavorite: false,
      amount: 0,
      description: 'Fresh fruit of 500 gr, regular exported',
      img: 'tomate.png',
      price: 2.00,
      ranking: '4.5',
      title: 'Tomato'),
  BodyProductsModel(
      isFavorite: false,
      amount: 0,
      description: 'Fresh fruit of 500 gr, regular exported',
      img: 'melon.png',
      price: 12.00,
      ranking: '5.0',
      title: 'Melon'),
  BodyProductsModel(
      isFavorite: false,
      amount: 0,
      description: 'Fresh fruit of 500 gr, regular exported',
      img: 'naranja.png',
      price: 30.00,
      ranking: '3.0',
      title: 'Orange'),
];
