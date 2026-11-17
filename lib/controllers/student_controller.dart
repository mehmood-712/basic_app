import 'package:flutter/material.dart';

import '../models/student_model.dart';
import '../services/student_service.dart';

class StudentController extends ChangeNotifier {
  final StudentService _service = StudentService();

  // UI state
  bool isLoading = false;
  String? errorMessage;

  List<StudentModel> students = [];

  // Fetch students from Supabase
  Future<void> fetchStudents() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      students = await _service.getStudents();
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  // Add student to Supabase
  Future<void> addStudent(StudentModel student) async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      await _service.addStudent(student);

      // Refresh student list after insertion
      students = await _service.getStudents();
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
