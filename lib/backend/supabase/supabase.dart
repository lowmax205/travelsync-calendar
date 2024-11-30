import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://oytasxekhtrkhuwrpzoq.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im95dGFzeGVraHRya2h1d3Jwem9xIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI5MzMyMzAsImV4cCI6MjA0ODUwOTIzMH0.MLkkXsBtDXl96fgL_VVQe7eQEIdF4sgdboA4Z-bDiEU';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
