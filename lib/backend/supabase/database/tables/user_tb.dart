import '../database.dart';

class UserTbTable extends SupabaseTable<UserTbRow> {
  @override
  String get tableName => 'user_tb';

  @override
  UserTbRow createRow(Map<String, dynamic> data) => UserTbRow(data);
}

class UserTbRow extends SupabaseDataRow {
  UserTbRow(super.data);

  @override
  SupabaseTable get table => UserTbTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get profileLink => getField<String>('profile_link');
  set profileLink(String? value) => setField<String>('profile_link', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);
}
