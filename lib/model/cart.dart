class Cart {
  int id;
  String name;
  String description;
  int price;
  String imageUrl;
  int quantity;

  Cart({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.quantity,
  });
}

List<Cart> cartList = <Cart>[];
