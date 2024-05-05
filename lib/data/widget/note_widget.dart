import 'package:flutter/material.dart';

import '../model/loginaccount_model.dart';

class LoginAccountWidget extends StatelessWidget {
  final LoginAccount loginAccount;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  const LoginAccountWidget(
      {Key? key,
        required this.loginAccount,
        required this.onTap,
        required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: onLongPress,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 6),
        child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    loginAccount.fullName,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Text(loginAccount.emailAddress,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                Text(loginAccount.password,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400)),
                Text(loginAccount.confirmPassword,
                    style:  TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400))
              ],
            ),
          ),
        ),
      ),
    );
  }
}