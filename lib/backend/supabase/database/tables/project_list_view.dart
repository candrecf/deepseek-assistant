import '../database.dart';

class ProjectListViewTable extends SupabaseTable<ProjectListViewRow> {
  @override
  String get tableName => 'project_list_view';

  @override
  ProjectListViewRow createRow(Map<String, dynamic> data) =>
      ProjectListViewRow(data);
}

class ProjectListViewRow extends SupabaseDataRow {
  ProjectListViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProjectListViewTable();

  int? get projectId => getField<int>('project_id');
  set projectId(int? value) => setField<int>('project_id', value);

  String? get projectName => getField<String>('project_name');
  set projectName(String? value) => setField<String>('project_name', value);

  String? get projectDescription => getField<String>('project_description');
  set projectDescription(String? value) =>
      setField<String>('project_description', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  List<String> get usersInProject => getListField<String>('users_in_project');
  set usersInProject(List<String>? value) =>
      setListField<String>('users_in_project', value);

  List<String> get profilePictures => getListField<String>('profile_pictures');
  set profilePictures(List<String>? value) =>
      setListField<String>('profile_pictures', value);
}
