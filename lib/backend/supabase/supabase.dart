import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://bdqrybiaeydxjafvipge.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJkcXJ5YmlhZXlkeGphZnZpcGdlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzEyNTQ3NjIsImV4cCI6MjA0NjgzMDc2Mn0.oTLbUzvYB6BlxMuvaH_WwUKgJcmd0WOIG8Tr8jHVDeI';

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
