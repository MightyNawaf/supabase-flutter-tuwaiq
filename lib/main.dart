import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_tuwaiq/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ofpoalftgkydzwpurgds.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9mcG9hbGZ0Z2t5ZHp3cHVyZ2RzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTI2OTQ2MDksImV4cCI6MjAwODI3MDYwOX0.LuLhYEPJopVPtoJZ2kD-_I-DxGQK50XnlCsNjC-jIHg',
  );

  runApp(const App());
}
