import '../database.dart';

class UsersExtTable extends SupabaseTable<UsersExtRow> {
  @override
  String get tableName => 'users_ext';

  @override
  UsersExtRow createRow(Map<String, dynamic> data) => UsersExtRow(data);
}

class UsersExtRow extends SupabaseDataRow {
  UsersExtRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersExtTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get profileUrl => getField<String>('profile_url');
  set profileUrl(String? value) => setField<String>('profile_url', value);

  DateTime? get subStart => getField<DateTime>('sub_start');
  set subStart(DateTime? value) => setField<DateTime>('sub_start', value);

  DateTime? get subEnd => getField<DateTime>('sub_end');
  set subEnd(DateTime? value) => setField<DateTime>('sub_end', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
