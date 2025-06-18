import 'package:dio/dio.dart';
import 'package:test_project/feature/crypto/model/crypto_dto.dart';

abstract class CryptoCoinsDataSource {
  Future<List<CryptoCoinDto>> fetchCryptoCoins({
    required int offset,
    required int limit,
  });
}

final class DioCryptoCoinsDataSource implements CryptoCoinsDataSource {
  const DioCryptoCoinsDataSource({
    required Dio dio,
    required String? apiKey,
  })  : _dio = dio,
        _apiKey = apiKey;

  final Dio _dio;
  final String? _apiKey;

  @override
  Future<List<CryptoCoinDto>> fetchCryptoCoins({
    required int offset,
    required int limit,
  }) async {
    try {
      final response = await _dio.get(
        'https://rest.coincap.io/v3/assets?apiKey=$_apiKey',
        queryParameters: {
          'offset': offset,
          'limit': limit,
        },
      );

      final data = response.data;
      final List<dynamic> jsonList = data['data'];

      return jsonList
          .map((coinJson) => CryptoCoinDto.fromJson(coinJson))
          .toList();
    } on DioException {
      throw 'Error loading cryptocurrency data';
    } catch (error) {
      rethrow;
    }
  }
}
