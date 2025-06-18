import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:test_project/feature/crypto/data/crypto_coins_data_source.dart';
import 'package:test_project/feature/crypto/data/crypto_coins_repository.dart';

@immutable
final class CoreDependencies {
  const CoreDependencies({
    required this.dio,
    required this.cryptoCoinsDataSource,
    required this.cryptoCoinsRepository,
    required this.apiKey,
  });

  final Dio dio;

  final CryptoCoinsDataSource cryptoCoinsDataSource;

  final CryptoCoinsRepository cryptoCoinsRepository;

  final String? apiKey;
}
