
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../model/account_model.dart';
import '../model/loginaccount_model.dart';

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbName = "Movie1.db";

  static Future<Database> _getDB() async {
    return openDatabase(join(await getDatabasesPath(), _dbName),
        onCreate: (db, version) async => {
          await db.execute("CREATE TABLE Account(id INTEGER PRIMARY KEY, email TEXT NOT NULL, password TEXT NOT NULL);"),
          await db.execute("CREATE TABLE LoginAccount(id INTEGER PRIMARY KEY, fullName TEXT NOT NULL, emailAddress TEXT NOT NULL, password TEXT NOT NULL, confirmPassword TEXT NOT NULL);"),
        },
        version: _version);
  }

  static Future<int> addAccount(Account account) async {
    final db = await _getDB();
    return await db.insert("Account", account.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> updateAccount(Account account) async {
    final db = await _getDB();
    return await db.update("Account", account.toJson(),
        where: 'id = ?',
        whereArgs: [account.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> deleteAccount(Account account) async {
    final db = await _getDB();
    return await db.delete(
      "Account",
      where: 'id = ?',
      whereArgs: [account.id],
    );
  }

  static Future<List<Account>?> getAllAccounts() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> maps = await db.query("Account");

    if (maps.isEmpty) {
      return null;
    }

    return List.generate(maps.length, (index) => Account.fromJson(maps[index]));
  }

  static Future<int> addLoginAccount(LoginAccount loginAccount) async {
    final db = await _getDB();
    return await db.insert("LoginAccount", loginAccount.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> updateLoginAccount(LoginAccount loginAccount) async {
    final db = await _getDB();
    return await db.update("LoginAccount", loginAccount.toJson(),
        where: 'id = ?',
        whereArgs: [loginAccount.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> deleteLoginAccount(LoginAccount loginAccount) async {
    final db = await _getDB();
    return await db.delete(
      "LoginAccount",
      where: 'id = ?',
      whereArgs: [loginAccount.id],
    );
  }

  static Future<List<LoginAccount>?> getAllLoginAccounts() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> maps = await db.query("LoginAccount");

    if (maps.isEmpty) {
      return null;
    }

    return List.generate(maps.length, (index) => LoginAccount.fromJson(maps[index]));
  }


  static Future<void> deleteDatabase(String path) async {
    await databaseFactory.deleteDatabase(path
    );
    print('Deleted database at $path');
  }
}