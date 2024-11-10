import '../database.dart';

class UserBasicInformationTable extends SupabaseTable<UserBasicInformationRow> {
  @override
  String get tableName => 'User-Basic-Information';

  @override
  UserBasicInformationRow createRow(Map<String, dynamic> data) =>
      UserBasicInformationRow(data);
}

class UserBasicInformationRow extends SupabaseDataRow {
  UserBasicInformationRow(super.data);

  @override
  SupabaseTable get table => UserBasicInformationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get username => getField<String>('username')!;
  set username(String value) => setField<String>('username', value);

  String? get fname => getField<String>('fname');
  set fname(String? value) => setField<String>('fname', value);

  String? get mname => getField<String>('mname');
  set mname(String? value) => setField<String>('mname', value);

  String? get lname => getField<String>('lname');
  set lname(String? value) => setField<String>('lname', value);

  DateTime? get birthday => getField<DateTime>('birthday');
  set birthday(DateTime? value) => setField<DateTime>('birthday', value);

  String? get birthplace => getField<String>('birthplace');
  set birthplace(String? value) => setField<String>('birthplace', value);

  String? get currentAddress => getField<String>('current_address');
  set currentAddress(String? value) =>
      setField<String>('current_address', value);

  String? get profileLink => getField<String>('profile_link');
  set profileLink(String? value) => setField<String>('profile_link', value);
}
