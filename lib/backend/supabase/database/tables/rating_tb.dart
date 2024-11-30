import '../database.dart';

class RatingTbTable extends SupabaseTable<RatingTbRow> {
  @override
  String get tableName => 'rating_tb';

  @override
  RatingTbRow createRow(Map<String, dynamic> data) => RatingTbRow(data);
}

class RatingTbRow extends SupabaseDataRow {
  RatingTbRow(super.data);

  @override
  SupabaseTable get table => RatingTbTable();

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

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);
}
