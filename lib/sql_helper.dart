import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute('''CREATE TABLE user 
      (id INTEGER PRIMARY KEY AUTOINCREMENT, 
      name TEXT,
      number TEXT
    )''');
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase('db_uts.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTables(database);
    });
  }

  static Future<List<Map<String, dynamic>>> getUser() async {
    final db = await SQLHelper.db();
    return db.query('user');
  }

  static Future<int> addUser(String name, String contact) async {
    final db = await SQLHelper.db();
    final data = {'name': name, 'number': contact};
    return await db.insert('user', data);
  }

  static Future<int> editUser(int id, String name, String contact) async {
    final db = await SQLHelper.db();
    final data = {'name': name, 'number': contact};
    return await db.update('user', data, where: "id = $id");
  }

  static Future<int> deleteUser(int id) async {
    final db = await SQLHelper.db();
    return await db.delete('user', where: "id = $id");
  }
}
