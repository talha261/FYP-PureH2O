import 'package:flutter/material.dart';
import 'package:pureh20/Screeens/Common/Wallet.dart';
import 'package:pureh20/Utils/Colors.dart';
import 'package:pureh20/Widgets/HeaderWithBackButton.dart';
import 'package:pureh20/Widgets/TextInput.dart';

import 'WhiteButton.dart';
import 'Whitetextinput.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  TextEditingController amountController = TextEditingController();
  TextEditingController banknameController = TextEditingController();
  TextEditingController accountnumberController = TextEditingController();
  TextEditingController holdernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.buttonColor,
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderWithBackButton(
                        buttonColor: AppColors.backgroundColor,
                        screenName: "Withdraw",
                        backgroundcolor: AppColors.buttonColor,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                          child: Column(children: [
                        whiteTextInput(
                          controller: amountController,
                          hintText: "Amount",
                          prefixIcon: Icons.attach_money_outlined,
                          icon: true,
                        ),
                        Container(
                            child: Column(children: [
                          whiteTextInput(
                            controller: banknameController,
                            hintText: "Bank Name",
                            prefixIcon: Icons.comment_bank_outlined,
                            icon: true,
                          ),
                          Container(
                              child: Column(children: [
                            whiteTextInput(
                              controller: accountnumberController,
                              hintText: "IBAN Number / Account Number",
                              prefixIcon: Icons.account_balance_outlined,
                              icon: true,
                            ),
                            Container(
                              child: Column(children: [
                                whiteTextInput(
                                  controller: holdernameController,
                                  hintText: "Account Holder Name",
                                  prefixIcon: Icons.person_2_outlined,
                                  icon: true,
                                ),
                                SizedBox(
                                  height: 220,
                                ),
                                WhiteButton(
                                    text: "Withdraw", onPressed: () => null)
                              ]),
                            )
                          ]))
                        ]))
                      ]))
                    ]))));
  }
}
