import 'package:flutter/material.dart';

import '../controllers/student_controller.dart';
import '../models/student_model.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({super.key});

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  final StudentController _controller = StudentController();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Fetch students when screen opens
    _controller.fetchStudents();
  }

  @override
  void dispose() {
    _controller.dispose();
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  // Add student
  Future<void> _addStudent() async {
    final name = _nameController.text.trim();
    final email = _emailController.text.trim();

    if (name.isEmpty || email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter name and email')),
      );
      return;
    }

    final student = StudentModel(name: name, email: email);

    await _controller.addStudent(student);

    if (!mounted) return;

    if (_controller.errorMessage == null) {
      _nameController.clear();
      _emailController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Student added successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Management')),

      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Padding(
            padding: const EdgeInsets.all(16),

            child: Column(
              children: [
                // Name field
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: 'Student Name',
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 12),

                // Email field
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Student Email',
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 12),

                // Add button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _controller.isLoading ? null : _addStudent,
                    child: const Text('Add Student'),
                  ),
                ),

                const SizedBox(height: 16),

                // Loading indicator
                if (_controller.isLoading) const CircularProgressIndicator(),

                // Error message
                if (_controller.errorMessage != null)
                  Text(
                    _controller.errorMessage!,
                    style: const TextStyle(color: Colors.red),
                  ),

                const SizedBox(height: 12),

                // Students list
                Expanded(
                  child: ListView.builder(
                    itemCount: _controller.students.length,
                    itemBuilder: (context, index) {
                      final student = _controller.students[index];

                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Text(
                              student.name.isNotEmpty
                                  ? student.name[0].toUpperCase()
                                  : '?',
                            ),
                          ),

                          title: Text(student.name),

                          subtitle: Text(student.email),

                          trailing: Text(student.id?.toString() ?? ''),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
