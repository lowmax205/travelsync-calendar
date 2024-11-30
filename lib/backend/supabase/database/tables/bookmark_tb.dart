import '../database.dart';

class BookmarkTbTable extends SupabaseTable<BookmarkTbRow> {
  @override
  String get tableName => 'bookmark_tb';

  @override
  BookmarkTbRow createRow(Map<String, dynamic> data) => BookmarkTbRow(data);
}

class BookmarkTbRow extends SupabaseDataRow {
  BookmarkTbRow(super.data);

  @override
  SupabaseTable get table => BookmarkTbTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get eventId => getField<int>('event_id');
  set eventId(int? value) => setField<int>('event_id', value);

  int? get locationId => getField<int>('location_id');
  set locationId(int? value) => setField<int>('location_id', value);
}
