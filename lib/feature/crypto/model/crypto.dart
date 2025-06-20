import 'dart:ui';

final class CryptoCoin {
  const CryptoCoin({
    required this.id,
    required this.name,
    required this.symbol,
    required this.priceUsd,
    required this.color,
  });

  final String id;
  final String name;
  final String symbol;
  final double priceUsd;
  final Color color;

  @override
  String toString() =>
      'CryptoCoin(id: $id, name: $name, symbol: $symbol, priceUsd: $priceUsd, color: $color)';
}
