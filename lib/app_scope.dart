import 'package:flutter/material.dart';
import 'package:test_project/feature/init/model/core_dependencies.dart';
import 'package:test_project/feature/init/widget/core_dependencies_scope.dart';
import 'package:test_project/feature/crypto/widget/crypto_coins_scope.dart';

class AppScope extends StatelessWidget {
  const AppScope({
    required this.dependencies,
    required this.child,
    super.key,
  });

  final Widget child;
  final CoreDependencies dependencies;

  @override
  Widget build(BuildContext context) => CoreDependenciesScope(
        coreDependencies: dependencies,
        child: CryptoCoinsScope(
          child: child,
        ),
      );
}
