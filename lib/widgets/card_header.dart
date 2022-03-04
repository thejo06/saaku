import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/theme.dart';

class CardHeader extends StatelessWidget {
  final String imageBg;
  final String cardLogo;
  final String cardNumber;
  final String cardMoney;
  const CardHeader({
    Key? key,
    required this.imageBg,
    required this.cardLogo,
    required this.cardNumber,
    required this.cardMoney,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          width: 290,
          image: AssetImage(imageBg),
        ),
        Positioned(
          left: 20,
          top: 20,
          bottom: 30,
          right: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                cardLogo,
                width: 40,
              ),
              const Spacer(),
              Text(
                cardMoney,
                style: AppTheme.medium20.copyWith(
                  color: AppColors.white,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cardNumber,
                    style: AppTheme.regular12.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                  Text(
                    '09/26',
                    style: AppTheme.regular12.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
