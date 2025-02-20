import '../database.dart';

class UserRolesViewTable extends SupabaseTable<UserRolesViewRow> {
  @override
  String get tableName => 'user_roles_view';

  @override
  UserRolesViewRow createRow(Map<String, dynamic> data) =>
      UserRolesViewRow(data);
}

class UserRolesViewRow extends SupabaseDataRow {
  UserRolesViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserRolesViewTable();

  int? get roleId => getField<int>('role_id');
  set roleId(int? value) => setField<int>('role_id', value);

  String? get roleName => getField<String>('role_name');
  set roleName(String? value) => setField<String>('role_name', value);

  List<String> get usersIds => getListField<String>('users_ids');
  set usersIds(List<String>? value) => setListField<String>('users_ids', value);

  List<String> get profilePictureUrls =>
      getListField<String>('profile_picture_urls');
  set profilePictureUrls(List<String>? value) =>
      setListField<String>('profile_picture_urls', value);
}
