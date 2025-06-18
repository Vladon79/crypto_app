import 'package:flutter/material.dart';
import 'package:test_project/feature/crypto/bloc/crypto_coins_bloc.dart';
import 'package:test_project/feature/crypto/widget/crypto_coin_section.dart';
import 'package:test_project/feature/crypto/widget/crypto_coins_scope.dart';

class CryptoCoinsListScreen extends StatefulWidget {
  const CryptoCoinsListScreen({super.key});

  @override
  State<CryptoCoinsListScreen> createState() => _CryptoCoinsListScreenState();
}

class _CryptoCoinsListScreenState extends State<CryptoCoinsListScreen> {
  final _scrollController = ScrollController();
  final _limit = 15;

  Future<void> _loadMore(CryptoCoinsController controller) async {
    controller.reloadData(
      limit: _limit,
    );
  }

  @override
  void initState() {
    super.initState();
    final controller = CryptoCoinsScope.controllerOf(context);

    _loadMore(controller);

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        _loadMore(controller);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = CryptoCoinsScope.stateOf(context);
    final isLoading = CryptoCoinsScope.isLoadingOf(context);
    final controller = CryptoCoinsScope.controllerOf(context);

    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) {
            switch (state) {
              case CryptoCoinsState$Idle(:final cryptoCoins?):
              case CryptoCoinsState$Loading(:final cryptoCoins?):
              case CryptoCoinsState$Error(:final cryptoCoins?):
                return ListView.builder(
                  controller: _scrollController,
                  itemCount: cryptoCoins.length + 1,
                  itemBuilder: (context, index) {
                    if (index < cryptoCoins.length) {
                      final coin = cryptoCoins[index];

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 20,
                        ),
                        child: CryptoCoinSection(
                          coin: coin,
                        ),
                      );
                    } else {
                      return isLoading
                          ? Padding(
                              padding: const EdgeInsets.all(16),
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            )
                          : SizedBox.shrink();
                    }
                  },
                );
              case CryptoCoinsState$Loading(cryptoCoins: null):
                return Center(
                  child: CircularProgressIndicator(),
                );
              case CryptoCoinsState$Idle(cryptoCoins: null):
              case CryptoCoinsState$Error(cryptoCoins: null):
                return Center(
                  child: Column(
                    children: [
                      Text(
                        'Empty',
                        style: const TextStyle(
                          fontSize: 17,
                          height: 24 / 17,
                          color: Color(0xff17171A),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          _loadMore(controller);
                        },
                        child: Text('reload'),
                      ),
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
