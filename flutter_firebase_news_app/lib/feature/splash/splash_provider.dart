import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashProvider extends StateNotifier<SplashState> {
  SplashProvider() : super(const SplashState());
}

class SplashState extends Equatable {
  const SplashState({
    this.isRequaredForceUpdate,
    this.isRequaredHome,
  });

  final bool? isRequaredForceUpdate;
  final bool? isRequaredHome;

  SplashState copyWith({bool? isRequaredForceUpdate, bool? isRequaredHome}) {
    return SplashState(
      isRequaredForceUpdate:
          isRequaredForceUpdate ?? this.isRequaredForceUpdate,
      isRequaredHome: isRequaredHome ?? this.isRequaredHome,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isRequaredForceUpdate, isRequaredHome];
}
