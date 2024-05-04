import 'package:flutter/material.dart';
import 'package:movie_flutter/effect/my_wallet/recent_transaction.dart';
import 'package:movie_flutter/utils/color.dart';
import 'package:movie_flutter/widget/BigText.dart';
import 'package:movie_flutter/widget/cart.dart';

import '../../utils/dimensions.dart';
import '../../widget/small_text.dart';

class HomeMyWallet extends StatefulWidget {
  const HomeMyWallet({Key? key}) : super(key: key);

  @override
  State<HomeMyWallet> createState() => _HomeMyWalletState();
}

class _HomeMyWalletState extends State<HomeMyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.back,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(left: Dimentions.with20, right: Dimentions.with20, top: Dimentions.height70),
        child: Column(
          children: [
            BigText(text: "My Wallet", color: Colors.white, size: Dimentions.font26,),
            SizedBox(height: Dimentions.height20,),
            CartWallet(name: "Arya Wijaya", IDR: "50.000", seri: "8736.2133.2456.2313"),
            SizedBox(height: Dimentions.height20,),
            Container(
              width: double.maxFinite,
              child: BigText(text: "Recent Transactions", color: Colors.white, textAlign: TextAlign.start, ),
            ),
            SizedBox(height: Dimentions.height20,),
            Container(
              height: Dimentions.heightMyWallet, // Chiều cao của văn bản có thể cuộn
              child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        RecentTransaction(name: "Ra", price: "35345345", time: "462123")
                      ],
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
