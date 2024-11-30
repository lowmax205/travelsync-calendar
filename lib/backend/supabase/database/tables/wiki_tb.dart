import '../database.dart';

class WikiTbTable extends SupabaseTable<WikiTbRow> {
  @override
  String get tableName => 'wiki_tb';

  @override
  WikiTbRow createRow(Map<String, dynamic> data) => WikiTbRow(data);
}

class WikiTbRow extends SupabaseDataRow {
  WikiTbRow(super.data);

  @override
  SupabaseTable get table => WikiTbTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);
}
