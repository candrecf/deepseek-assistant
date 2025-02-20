import '../database.dart';

class ProjectUsersTable extends SupabaseTable<ProjectUsersRow> {
  @override
  String get tableName => 'project_users';

  @override
  ProjectUsersRow createRow(Map<String, dynamic> data) => ProjectUsersRow(data);
}

class ProjectUsersRow extends SupabaseDataRow {
  ProjectUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProjectUsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get projectId => getField<int>('project_id');
  set projectId(int? value) => setField<int>('project_id', value);
}
