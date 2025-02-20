import '../database.dart';

class ACitiesTable extends SupabaseTable<ACitiesRow> {
  @override
  String get tableName => 'a_cities';

  @override
  ACitiesRow createRow(Map<String, dynamic> data) => ACitiesRow(data);
}

class ACitiesRow extends SupabaseDataRow {
  ACitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ACitiesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);
}
