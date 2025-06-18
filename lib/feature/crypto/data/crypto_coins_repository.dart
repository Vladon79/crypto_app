import 'dart:math';
import 'dart:ui';

import 'package:test_project/feature/crypto/data/crypto_coins_data_source.dart';
import 'package:test_project/feature/crypto/model/crypto.dart';
import 'package:test_project/feature/crypto/model/crypto_dto.dart';

abstract class CryptoCoinsRepository {
  Future<List<CryptoCoin>> fetchCryptoCoins({
    required int offset,
    required int limit,
  });
}

final class CryptoCoinsRepositoryImpl implements CryptoCoinsRepository {
  const CryptoCoinsRepositoryImpl({
    required CryptoCoinsDataSource cryptoCoinsDataSource,
  }) : _cryptoCoinsDataSource = cryptoCoinsDataSource;

  final CryptoCoinsDataSource _cryptoCoinsDataSource;

  Color _getRandomColor() {
    final random = Random();

    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Future<List<CryptoCoin>> fetchCryptoCoins({
    required int offset,
    required int limit,
  }) async {
    final cryptoCoinDto = await _cryptoCoinsDataSource.fetchCryptoCoins(
      offset: offset,
      limit: limit,
    );

    return cryptoCoinDto
        .map(
          (coin) => coin.getCryptoCoin(
            _getRandomColor(),
          ),
        )
        .toList();
  }
}

extension on CryptoCoinDto {
  CryptoCoin getCryptoCoin(Color color) => CryptoCoin(
        color: color,
        id: id,
        name: name,
        priceUsd: priceUsd,
        symbol: symbol,
      );
}
