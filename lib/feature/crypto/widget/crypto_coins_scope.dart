import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/common/core/context.dart';
import 'package:test_project/common/widget/error_snackbar_shower.dart';
import 'package:test_project/feature/init/widget/core_dependencies_scope.dart';
import 'package:test_project/feature/crypto/bloc/crypto_coins_bloc.dart';

abstract interface class CryptoCoinsController {
  Future<void> reloadData({
    required int limit,
  });
}

class CryptoCoinsScope extends StatefulWidget {
  const CryptoCoinsScope({
    required this.child,
    super.key,
  });

  final Widget child;

  static bool isLoadingOf(
    BuildContext context, {
    bool listen = true,
  }) =>
      context.inhOf<_CryptoCoinsInherited>(listen: listen).state
          is CryptoCoinsState$Loading;

  static CryptoCoinsState stateOf(
    BuildContext context, {
    bool listen = true,
  }) =>
      context.inhOf<_CryptoCoinsInherited>(listen: listen).state;

  static CryptoCoinsController controllerOf(
    BuildContext context, {
    bool listen = false,
  }) =>
      context.inhOf<_CryptoCoinsInherited>(listen: listen).controller;

  @override
  State<CryptoCoinsScope> createState() => _CryptoCoinsScopeState();
}

class _CryptoCoinsScopeState extends State<CryptoCoinsScope>
    with ErrorSnackbarShower
    implements CryptoCoinsController {
  late final CryptoCoinsBloc _bloc;

/* #region CryptoCoinsController */
  @override
  Future<void> reloadData({
    required int limit,
  }) async {
    _bloc.add(
      CryptoCoinsEvent.reloadData(
        limit: limit,
      ),
    );
  }
/* #endregion */

/* #region Lifecycle */
  @override
  void initState() {
    super.initState();

    _bloc = CryptoCoinsBloc(
      cryptoCoinsRepository: context.dependencies.cryptoCoinsRepository,
    )..add(
        CryptoCoinsEvent.reloadData(
          limit: 15,
        ),
      );
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<CryptoCoinsBloc, CryptoCoinsState>(
        bloc: _bloc,
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          switch (state) {
            case CryptoCoinsState$Idle():
            case CryptoCoinsState$Loading():
              break;
            case CryptoCoinsState$Error(:final error):
              showError(
                context,
                error,
              );
          }
        },
        child: BlocBuilder<CryptoCoinsBloc, CryptoCoinsState>(
          bloc: _bloc,
          builder: (context, state) => _CryptoCoinsInherited(
            state: state,
            controller: this,
            child: widget.child,
          ),
        ),
      );
  /* #endregion */
}

class _CryptoCoinsInherited extends InheritedWidget {
  const _CryptoCoinsInherited({
    required this.state,
    required this.controller,
    required super.child,
  });

  final CryptoCoinsState state;
  final CryptoCoinsController controller;

  @override
  bool updateShouldNotify(_CryptoCoinsInherited oldWidget) =>
      state != oldWidget.state;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<CryptoCoinsState>('state', state))
      ..add(
          DiagnosticsProperty<CryptoCoinsController>('controller', controller));
  }
}
