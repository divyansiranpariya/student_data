class Student {
  final String name;
  final int grid;
  final String standard;
  final String image;

  Student({
    required this.name,
    required this.grid,
    required this.standard,
    required this.image,
  });

  factory Student.fromMap(Map<String, dynamic> data) {
    return Student(
      name: data['name'],
      grid: int.parse(data['grid']),
      standard: data['standard'],
      image: data['image'],
    );
  }
}
