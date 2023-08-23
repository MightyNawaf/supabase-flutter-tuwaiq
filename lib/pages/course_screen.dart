import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:supabase_tuwaiq/components/app_bar.dart';
import 'package:supabase_tuwaiq/consts/spacings.dart';
import 'package:supabase_tuwaiq/models/course.dart';
import 'package:supabase_tuwaiq/services/supabase.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          TAppBar(title: course.name ?? 'No name', subtitle: ''),
          kVSpace24,
          CachedNetworkImage(
            imageUrl: course.imageUrl ?? '',
            width: 500,
          ),
          kVSpace16,
          FutureBuilder(
            future: SupabaseService().getStudentsByCourseId(course.courseId ?? ''),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final students = snapshot.data ?? [];
                return ListView(
                  shrinkWrap: true,
                  children: [
                    for (final student in students) ...[
                      Text(student.name ?? 'No student name'),
                    ]
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
          ElevatedButton(
            onPressed: () {
              SupabaseService().deleteCourse(course.courseId ?? '');
            },
            child: const Text('Delete this course'),
          ),
        ],
      ),
    );
  }
}
