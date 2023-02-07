class Course {
  final String Images;
  final String Class;
  final String Subject;

  Course({
    required this.Images,
    required this.Class,
    required this.Subject,
  });

  factory Course.fromJson(dynamic json) {
    return Course(
        Images: json['image'][0]['hostedLargeUrl'] as String,
        Class: json['class'] as String,
        Subject: json['subject'] as String);
  }

  static List<Course> FromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Course.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {name: $Images, image: $Class, rating: $Subject, }';
  }
}
