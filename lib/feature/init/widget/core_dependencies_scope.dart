import 'package:flutter/material.dart';
import 'package:test_project/feature/init/model/core_dependencies.dart';

class CoreDependenciesScope extends InheritedWidget {
  const CoreDependenciesScope({
    required this.coreDependencies,
    required super.child,
    super.key,
  });

  final CoreDependencies coreDependencies;

  static CoreDependencies of(BuildContext context) => context
      .getInheritedWidgetOfExactType<CoreDependenciesScope>()!
      .coreDependencies;

  @override
  bool updateShouldNotify(CoreDependenciesScope oldWidget) => false;
}

extension $DependenciesExt on BuildContext {
  CoreDependencies get dependencies => CoreDependenciesScope.of(this);
}
