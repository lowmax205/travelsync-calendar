import '../database.dart';

class EventTbTable extends SupabaseTable<EventTbRow> {
  @override
  String get tableName => 'event_tb';

  @override
  EventTbRow createRow(Map<String, dynamic> data) => EventTbRow(data);
}

class EventTbRow extends SupabaseDataRow {
  EventTbRow(super.data);

  @override
  SupabaseTable get table => EventTbTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  int? get viewCount => getField<int>('view_count');
  set viewCount(int? value) => setField<int>('view_count', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);
}
