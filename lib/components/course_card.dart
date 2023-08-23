import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:supabase_tuwaiq/consts/spacings.dart';
import 'package:supabase_tuwaiq/models/course.dart';
import 'package:supabase_tuwaiq/pages/course_screen.dart';
import 'package:supabase_tuwaiq/utils/extensions.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.course,
  });

  final Course course;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CourseScreen(course: course).push(context);
      },
      child: Material(
        borderRadius: BorderRadius.circular(8),
        elevation: 10,
        color: Colors.white,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: course.imageUrl ?? 'https://demofree.sirv.com/nope-not-here.jpg',
                errorWidget: (context, url, s) {
                  return Container(color: Colors.red);
                },
                width: 300,
                fit: BoxFit.cover,
              ),
              kVSpace8,
              Text(
                course.name ?? 'No name',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
