// Sebuah toko buku ingin mengembangkan sebuah
//sistem untuk mengelola data buku.
//Data buku tersebut terdiri dari ID, judul, penerbit, harga dan kategori.
//Sistem tersebut dapat menambahkan, mendapatkan semua data buku dan menghapus data buku.
//Buatlah program berdasarkan skenario tersebut.

class Book {
  int id;
  String title;
  String publisher;
  double price;
  String category;

  Book(this.id, this.title, this.publisher, this.price, this.category);
}

class Bookstore {
  late List<Book> books;

  Bookstore() {
    this.books = [];
  }

  void addBook(Book book) {
    books.add(book);
  }

  List<Book> getAllBooks() {
    return books;
  }

  void removeBook(Book book) {
    books.remove(book);
  }
}

void main() {
  // Create a Bookstore object
  var bookstore = Bookstore();

  // Add some books
  var book1 = Book(1, "Bumi", "Gramedia Pustaka Utama", 99000, "Fantasi");
  var book2 = Book(2, "Bulan", "Gramedia Pustaka Utama", 98000, "Fantasi");
  var book3 = Book(3, "Pulang", "Gramedia Pustaka Utama", 97000, "Fantasi");

  bookstore.addBook(book1);
  bookstore.addBook(book2);
  bookstore.addBook(book3);

  // Get all books
  var allBooks = bookstore.getAllBooks();
  for (var book in allBooks) {
    print("${book.title} (${book.category}): ${book.price}");
  }

  // Remove a book
  bookstore.removeBook(book2);

  // Get all books again
  allBooks = bookstore.getAllBooks();
  for (var book in allBooks) {
    print("${book.title} (${book.category}): ${book.price}");
  }
}
