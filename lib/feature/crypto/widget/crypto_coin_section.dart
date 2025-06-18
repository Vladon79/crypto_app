import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_project/feature/crypto/model/crypto.dart';

class CryptoCoinSection extends StatelessWidget {
  const CryptoCoinSection({
    required this.coin,
    super.key,
  });

  final CryptoCoin coin;

  final TextStyle _textStyle = const TextStyle(
    fontSize: 17,
    height: 24 / 17,
    color: Color(0xff17171A),
    fontWeight: FontWeight.w600,
  );

  String _formatPrice(double number) {
    final formatter = NumberFormat.currency(symbol: '\$');

    return formatter.format(number);
  }

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              color: coin.color,
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              coin.symbol,
              style: _textStyle,
            ),
          ),
          Text(
            _formatPrice(coin.priceUsd),
            style: _textStyle,
          ),
        ],
      );
}
