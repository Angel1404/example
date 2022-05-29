class AllCategoryModels {
  final String title;
  final String img;
  AllCategoryModels({required this.title, required this.img});
}

List<AllCategoryModels> listAllCategory = [
  AllCategoryModels(title: 'Vegetable', img: 'manzana.png'),
  AllCategoryModels(title: 'Bakery & Pasta', img: 'banana.png'),
  AllCategoryModels(title: 'Fresh Fruits', img: 'canastaFrutas.png'),
  AllCategoryModels(title: 'Juicy bol', img: 'fresa.png'),
];
