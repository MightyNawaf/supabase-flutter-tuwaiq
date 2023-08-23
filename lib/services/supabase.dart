import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_tuwaiq/models/course.dart';
import 'package:supabase_tuwaiq/models/student.dart';

class SupabaseService {
  static final client = Supabase.instance.client;

  Future<List<Course>?> getCourses() async {
    final supabase = Supabase.instance.client;
    final rawCourses = await supabase.from('course').select('name, course_id, image_url');
    final List<Course> courses = [];
    for (final course in rawCourses) {
      courses.add(Course.fromJson(course));
    }
    return courses;
  }

  Future insertCourse(Course course) async {
    final supabase = Supabase.instance.client;
     await supabase.from('course').insert(course.toJson());
  }

    Future deleteCourse(String courseId) async {
    final supabase = Supabase.instance.client;
     await supabase.from('course').delete().eq('course_id', courseId);
  }


  Future<List<Course>?> getInstructors() async {
    final supabase = Supabase.instance.client;
    final rawCourses = await supabase.from('instructor').select('name, course_id, image_url');
    final List<Course> courses = [];
    for (final course in rawCourses) {
      courses.add(Course.fromJson(course));
    }
    return courses;
  }

  Future<List<Student>?> getStudentsByCourseId(String courseId) async {
    final supabase = Supabase.instance.client;
    final rawStudents = await supabase.from('student').select('name, student_id').match(
      {'course_id': courseId},
    );
    final List<Student> students = [];
    for (final student in rawStudents) {
      students.add(Student.fromJson(student));
    }
    return students;
  }
}
