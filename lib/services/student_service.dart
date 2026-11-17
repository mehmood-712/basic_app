import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/student_model.dart';

class StudentService {
  // Supabase client
  final SupabaseClient _supabase = Supabase.instance.client;

  // INSERT: Add student
  Future<void> addStudent(StudentModel student) async {
    await _supabase.from('students').insert(student.toMap());
  }

  // SELECT: Get all students
  Future<List<StudentModel>> getStudents() async {
    final response = await _supabase.from('students').select();

    return response.map((data) => StudentModel.fromMap(data)).toList();
  }
}
