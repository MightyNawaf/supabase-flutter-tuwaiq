import 'package:flutter/material.dart';
import 'package:supabase_tuwaiq/consts/spacings.dart';
import 'package:supabase_tuwaiq/utils/extensions.dart';

class TAppBar extends StatelessWidget {
  const TAppBar({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {

    return Material(
      elevation: 10,
      child: Container(
        height: context.height / 8,
        width: context.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child:  Column(
          children: [
            kVSpace64,
            Column(
              children: [
                Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(subtitle,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
