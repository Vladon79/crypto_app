import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:dio/dio.dart';

import 'package:test_project/app_scope.dart';
import 'package:test_project/feature/init/model/core_dependencies.dart';
import 'package:test_project/feature/crypto/data/crypto_coins_data_source.dart';
import 'package:test_project/feature/crypto/data/crypto_coins_repository.dart';
import 'package:test_project/feature/crypto/widget/crypto_coins_list_screen.dart';

void main() async {
  await dotenv.load(fileName: 'assets/.env');

  final dio = Dio();
  final apiKey = dotenv.env['API_KEY'];

  final cryptoCoinsDataSource = DioCryptoCoinsDataSource(
    dio: dio,
    apiKey: apiKey,
  );
  final cryptoCoinsRepository = CryptoCoinsRepositoryImpl(
    cryptoCoinsDataSource: cryptoCoinsDataSource,
  );

  final dependencies = CoreDependencies(
    cryptoCoinsDataSource: cryptoCoinsDataSource,
    dio: dio,
    cryptoCoinsRepository: cryptoCoinsRepository,
    apiKey: apiKey,
  );

  runApp(
    CryptoApp(
      dependencies: dependencies,
    ),
  );
}

class CryptoApp extends StatelessWidget {
  const CryptoApp({
    super.key,
    required this.dependencies,
  });

  final CoreDependencies dependencies;

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Crypto',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
          ),
          useMaterial3: true,
        ),
        home: AppScope(
          dependencies: dependencies,
          child: const CryptoCoinsListScreen(),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty<CoreDependencies>('dependencies', dependencies));
  }
}
