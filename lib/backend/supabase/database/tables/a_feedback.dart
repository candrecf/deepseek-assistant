import '../database.dart';

class AFeedbackTable extends SupabaseTable<AFeedbackRow> {
  @override
  String get tableName => 'a_feedback';

  @override
  AFeedbackRow createRow(Map<String, dynamic> data) => AFeedbackRow(data);
}

class AFeedbackRow extends SupabaseDataRow {
  AFeedbackRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AFeedbackTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get feedback => getField<String>('feedback');
  set feedback(String? value) => setField<String>('feedback', value);
}
