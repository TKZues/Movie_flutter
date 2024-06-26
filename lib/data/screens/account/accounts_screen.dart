import 'package:flutter/material.dart';
import 'package:movie_flutter/data/model/account_model.dart';
import 'package:movie_flutter/data/screens/account/account_screen.dart';
import 'package:movie_flutter/data/widget/account_widget.dart';

import '../../services/Database_helper.dart';



class AccountsScreen extends StatefulWidget {
  const AccountsScreen({Key? key}) : super(key: key);

  @override
  State<AccountsScreen> createState() => _AccountsScreen();
}

class _AccountsScreen extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Account'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AccountScreen()));
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
        body: FutureBuilder<List<Account>?>(
          future: DatabaseHelper.getAllAccounts(),
          builder: (context, AsyncSnapshot<List<Account>?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            } else if (snapshot.hasData) {
              if (snapshot.data != null) {
                return ListView.builder(
                  itemBuilder: (context, index) => AccountWidget(
                    account: snapshot.data![index],
                    onTap: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountScreen(
                                account: snapshot.data![index],
                              )));
                      setState(() {});
                    },
                    onLongPress: () async {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text(
                                  'Are you sure you want to delete this note?'),
                              actions: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(
                                          Colors.red)),
                                  onPressed: () async {
                                    await DatabaseHelper.deleteAccount(
                                        snapshot.data![index]);
                                    Navigator.pop(context);
                                    setState(() {});
                                  },
                                  child: const Text('Yes'),
                                ),
                                ElevatedButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('No'),
                                ),
                              ],
                            );
                          });
                    },
                  ),
                  itemCount: snapshot.data!.length,
                );
              }
              return const Center(
                child: Text('No notes yet'),
              );
            }
            return const SizedBox.shrink();
          },
        )
    );
  }
}