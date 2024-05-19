import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitial()) {
    on<DashboardInitialFetch>(dashboardInitialFetch);
  }

  FutureOr<void> dashboardInitialFetch(DashboardInitialFetch event, Emitter<DashboardState> emit) {
    emit(DashboardLoadingState());
  }
}
