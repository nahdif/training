import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'latihan_bloc_satu_event.dart';
part 'latihan_bloc_satu_state.dart';

class LatihanBlocSatuBloc extends Bloc<LatihanBlocSatuEvent, LatihanBlocSatuState> {
  LatihanBlocSatuBloc() : super(const LatihanBlocSatuInitial(0)) {
    on<TambahEvent>((event, emit) {
      final current = (state as LatihanBlocSatuInitial).counter;
      emit(LatihanBlocSatuInitial(current + 1));
    });

    on<KurangEvent>((event, emit) {
      final current = (state as LatihanBlocSatuInitial).counter;
      emit(LatihanBlocSatuInitial(current - 1));
    });
  }
}
