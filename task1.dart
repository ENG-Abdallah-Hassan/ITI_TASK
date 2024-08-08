class Book {
  String? title;
  String? author;
  int? pages;

  Book(this.title, this.author, this.pages);

  void disPlay(){
    print('Title: $title');
    print('Author: $author');
    print('Number of Pages: $pages');
  }
}
//////////////////////////////////////////////////////////////////
class Novel extends Book {
  String genre;

  Novel(String title, String author, int numberOfPages, this.genre)
      : super(title, author, numberOfPages);

  @override
  void disPlay() {
    super.disPlay(); 
    print('Genre: $genre');
  }
}
/////////////////////////////////////////////////////////////////////
abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius; 
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height; 
  }
}

void printArea(Shape shape) {
  print('The area is ${shape.area()}');
}
/////////////////////////////////////////////////////////////////////
void main() {
  Book book1 = Book('The Wager', 'David Grann', 528);
  book1.disPlay();
///////////////////////////////////////////////////////////////////////////

  var novel1 = Novel('Pride and Prejudice', 'Jane Austen', 432, 'Romance');
  novel1.disPlay();
  /////////////////////////////////////////////////////////////////////////
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 3.0);

  printArea(circle);     
  printArea(rectangle);  

//////////////////////////////////////////////////////////////////////
}
