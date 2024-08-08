// Task 4: Implement an Interface with Multiple Classes

abstract class Basic {
  String toJson();
}

class User implements Basic {
  String name;
  int age;

  User({required this.name, required this.age});

  @override
  String toJson() {
    return '{"name": "$name", "age": $age}';
  }
}

class Product implements Basic {
  String name;
  double price;

  Product({required this.name, required this.price});

  @override
  String toJson() {
    return '{"name": "$name", "price": $price}';
  }
}

void main() {
  User user = User(name: "Abdallah Hassan", age: 20);
  Product product = Product(name: "Apple", price: 0.99);

  print(user.toJson());
  print(product.toJson());
}
