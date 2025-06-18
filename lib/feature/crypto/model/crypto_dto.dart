final class CryptoCoinDto {
  const CryptoCoinDto({
    required this.id,
    required this.name,
    required this.symbol,
    required this.priceUsd,
  });

  final String id;
  final String name;
  final String symbol;
  final double priceUsd;

  factory CryptoCoinDto.fromJson(Map<String, dynamic> json) => CryptoCoinDto(
        id: json['id'] as String,
        name: json['name'] as String,
        symbol: json['symbol'] as String,
        priceUsd: double.tryParse(json['priceUsd'].toString()) ?? 0.0,
      );
}
