// Buatlah sebuah class Course dan Student dengan kriteria sebagai berikut:
// Atribut dari Course terdiri dari judul dan deskripsi.
// Atribut dari Student terdiri dari nama, kelas dan daftar course yang dimiliki.
// Student dapat menambahkan course.
// Student dapat menghapus course.
// Student dapat melihat semua course yang telah ditambahkan.

class Course {
  String title;
  String description;

  Course(this.title, this.description);
}

class Student {
  String name;
  String studentClass;
  late List<Course> courses;

  Student(this.name, this.studentClass) {
    this.courses = [];
  }

  void addCourse(Course course) {
    this.courses.add(course);
  }

  void removeCourse(Course course) {
    this.courses.remove(course);
  }

  String listCourses() {
    return "Course yang diambil: \n" +
        this.courses.map((course) => "* ${course.title}").join("\n");
  }
}

void main() {
  // Membuat object Course
  var course1 =
      Course("Dart Programming", "Belajar tentang bahasa pemrograman Dart");
  var course2 = Course(
      "Flutter Development", "Belajar tentang pengembangan aplikasi Flutter");

  // Membuat object Student
  var student = Student("John Doe", "10A");

  // Menambahkan course ke daftar course student
  student.addCourse(course1);
  student.addCourse(course2);

  // Menampilkan daftar course student
  print(student.listCourses());
}
