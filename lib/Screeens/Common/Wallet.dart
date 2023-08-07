import 'package:flutter/material.dart';
import 'package:pureh20/Utils/Colors.dart';
import 'package:pureh20/Widgets/WhiteButton.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttonColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                "Hello, Developer",
                style: TextStyle(
                    fontFamily: "Poppins400",
                    color: Color(0xff9C8BB2),
                    fontSize: 16),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                "Wallet",
                style: TextStyle(
                    fontFamily: "Poppins600",
                    color: AppColors.backgroundColor,
                    fontSize: 24),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  elevation: 20,
                  color: AppColors.cardColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "Total Balance",
                            style: TextStyle(
                                fontFamily: "Poppins400", fontSize: 15),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 30),
                          child: const Text(
                            "\$125,432.12",
                            style: TextStyle(
                                fontFamily: "Poppins500", fontSize: 32),
                          ),
                        ),
                        Container(
                          color: const Color(0xcc122261),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () => null,
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 10, bottom: 10),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.cardColor),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: const Icon(
                                        Icons.account_balance_wallet_rounded,
                                        color: AppColors.backgroundColor,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 10),
                                      child: const Text(
                                        "Withdraw",
                                        style: TextStyle(
                                          fontFamily: "Poppins500",
                                          fontSize: 12,
                                          color: AppColors.backgroundColor,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: MediaQuery.of(context).size.height * .51,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: const Row(
                    children: [
                      Text(
                        "Recent Transections",
                        style:
                            TextStyle(fontFamily: "Poppins600", fontSize: 16),
                      ),
                      // ListView.builder(itemBuilder: itemBuilder),
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
