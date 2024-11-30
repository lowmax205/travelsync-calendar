import '../database.dart';

class LocationTbTable extends SupabaseTable<LocationTbRow> {
  @override
  String get tableName => 'location_tb';

  @override
  LocationTbRow createRow(Map<String, dynamic> data) => LocationTbRow(data);
}

class LocationTbRow extends SupabaseDataRow {
  LocationTbRow(super.data);

  @override
  SupabaseTable get table => LocationTbTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);
}
