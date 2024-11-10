import '../database.dart';

class UserTableTable extends SupabaseTable<UserTableRow> {
  @override
  String get tableName => 'User-Table';

  @override
  UserTableRow createRow(Map<String, dynamic> data) => UserTableRow(data);
}

class UserTableRow extends SupabaseDataRow {
  UserTableRow(super.data);

  @override
  SupabaseTable get table => UserTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String get username => getField<String>('username')!;
  set username(String value) => setField<String>('username', value);
}
