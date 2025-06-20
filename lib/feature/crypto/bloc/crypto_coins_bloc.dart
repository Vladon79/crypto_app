import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_project/feature/crypto/data/crypto_coins_repository.dart';
import 'package:test_project/feature/crypto/model/crypto.dart';

part 'crypto_coins_bloc.freezed.dart';

/* #region CryptoCoinsState */
@freezed
sealed class CryptoCoinsState with _$CryptoCoinsState {
  const factory CryptoCoinsState.idle({
    required List<CryptoCoin>? cryptoCoins,
  }) = CryptoCoinsState$Idle;

  const factory CryptoCoinsState.loading({
    required List<CryptoCoin>? cryptoCoins,
  }) = CryptoCoinsState$Loading;

  const factory CryptoCoinsState.error({
    required List<CryptoCoin>? cryptoCoins,
    required Object error,
  }) = CryptoCoinsState$Error;

  const CryptoCoinsState._();
}
/* #endregion */

/* #region CryptoCoinsEvent */
@freezed
sealed class CryptoCoinsEvent with _$CryptoCoinsEvent {
  const factory CryptoCoinsEvent.reloadNextPack() = _ReloadNextPack;

  const factory CryptoCoinsEvent.reloadData() = _ReloadData;

  const CryptoCoinsEvent._();
}
/* #endregion */

class CryptoCoinsBloc extends Bloc<CryptoCoinsEvent, CryptoCoinsState> {
  CryptoCoinsBloc({
    required CryptoCoinsRepository cryptoCoinsRepository,
  })  : _cryptoCoinsRepository = cryptoCoinsRepository,
        super(
          const CryptoCoinsState$Idle(
            cryptoCoins: null,
          ),
        ) {
    on<CryptoCoinsEvent>(
      (event, emit) async => switch (event) {
        final _ReloadData event => _reloadData(event, emit),
        final _ReloadNextPack event => _reloadNextPack(event, emit),
      },
    );
  }

  final CryptoCoinsRepository _cryptoCoinsRepository;

  final _limit = 15;

  Future<void> _reloadNextPack(
    _ReloadNextPack event,
    Emitter<CryptoCoinsState> emit,
  ) async {
    try {
      emit(
        CryptoCoinsState$Loading(
          cryptoCoins: state.cryptoCoins,
        ),
      );

      if (state.cryptoCoins case final currentCryptoCoins?) {
        final newCoins = await _cryptoCoinsRepository.fetchCryptoCoins(
          limit: _limit,
          offset: currentCryptoCoins.length,
        );

        final updatedCoins = [
          ...currentCryptoCoins,
          ...newCoins,
        ];

        emit(
          CryptoCoinsState.idle(cryptoCoins: updatedCoins),
        );
      } else {
        emit(
          CryptoCoinsState.idle(cryptoCoins: state.cryptoCoins),
        );
      }
    } catch (error) {
      emit(
        CryptoCoinsState$Error(
          cryptoCoins: state.cryptoCoins,
          error: error,
        ),
      );

      rethrow;
    }
  }

  Future<void> _reloadData(
    _ReloadData event,
    Emitter<CryptoCoinsState> emit,
  ) async {
    try {
      emit(
        CryptoCoinsState$Loading(
          cryptoCoins: state.cryptoCoins,
        ),
      );

      final newCoins = await _cryptoCoinsRepository.fetchCryptoCoins(
        limit: _limit,
        offset: 0,
      );

      emit(
        CryptoCoinsState.idle(cryptoCoins: newCoins),
      );
    } catch (error) {
      emit(
        CryptoCoinsState$Error(
          cryptoCoins: state.cryptoCoins,
          error: error,
        ),
      );

      rethrow;
    }
  }
}
