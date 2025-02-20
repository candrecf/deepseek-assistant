import '../database.dart';

class AShoppingcartTable extends SupabaseTable<AShoppingcartRow> {
  @override
  String get tableName => 'a_shoppingcart';

  @override
  AShoppingcartRow createRow(Map<String, dynamic> data) =>
      AShoppingcartRow(data);
}

class AShoppingcartRow extends SupabaseDataRow {
  AShoppingcartRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AShoppingcartTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  DateTime? get ts => getField<DateTime>('ts');
  set ts(DateTime? value) => setField<DateTime>('ts', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
