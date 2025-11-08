part of 'latihan_bloc_satu_bloc.dart';

sealed class LatihanBlocSatuEvent extends Equatable {
  const LatihanBlocSatuEvent();

  @override
  List<Object> get props => [];
}

final class TambahEvent extends LatihanBlocSatuEvent {}
final class KurangEvent extends LatihanBlocSatuEvent {}
