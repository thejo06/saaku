import 'package:flutter/material.dart';
import 'package:saaku/styles/colors.dart';
import 'package:saaku/styles/theme.dart';
import 'package:saaku/widgets/button_add_transfer.dart';

import '../widgets/card_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Container(
              margin: const EdgeInsets.only(
                left: 28,
                right: 28,
                top: 28,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Good Morning',
                          style: AppTheme.regular12.copyWith(
                            color: AppColors.mainGrey,
                          )),
                      Text(
                        'Artemix Max',
                        style: AppTheme.medium18,
                      ),
                    ],
                  ),
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 28),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CardHeader(
                  imageBg: 'assets/images/background.png',
                  cardLogo: 'assets/icons/logo-bca.png',
                  cardMoney: 'Rp 232.012.321',
                  cardNumber: '0901  2225  2003  0806',
                ),
                const SizedBox(
                  width: 14,
                ),
                CardHeader(
                  imageBg: 'assets/images/background-visa.png',
                  cardLogo: 'assets/icons/logo-visa.png',
                  cardMoney: 'Rp 120.012.321',
                  cardNumber: '2301  2225  2003  0806',
                ),
                const SizedBox(
                  width: 28,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            margin: const EdgeInsets.only(left: 28, right: 28),
            child: Row(
              children: [
                ButtonAddTransfer(
                  text: 'Add Card',
                  iconButton: 'assets/icons/add.png',
                  buttonColor: AppColors.white,
                  textColor: AppColors.mainBlue,
                  border: BorderSide(color: AppColors.mainBlue),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonAddTransfer(
                  text: 'Transfer',
                  iconButton: 'assets/icons/transfer.png',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              top: 28,
              bottom: 14,
            ),
            child: Text(
              'Activities',
              style: AppTheme.medium16,
            ),
          ),
          Container(
            height: 67,
            margin: const EdgeInsets.only(left: 28, right: 28),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.activitiesCardBg,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Icon(
                          Icons.chevron_right_rounded,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Income',
                          style: AppTheme.regular12.copyWith(
                            color: AppColors.secondGrey,
                          ),
                        ),
                        Text(
                          'Rp 500.000',
                          style: AppTheme.medium14,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
