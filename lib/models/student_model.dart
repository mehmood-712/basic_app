class StudentModel {
  final int? id;
  final String name;
  final String email;
  final DateTime? createdAt;

  StudentModel({
    this.id,
    required this.name,
    required this.email,
    this.createdAt,
  });

  // Convert Supabase JSON into Dart object
  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      id: map['id'] as int?,
      name: map['name'] as String,
      email: map['email'] as String,
      createdAt: map['created_at'] != null
          ? DateTime.parse(map['created_at'] as String)
          : null,
    );
  }

  // Convert Dart object into Supabase JSON
  Map<String, dynamic> toMap() {
    return {'name': name, 'email': email};
  }
}
