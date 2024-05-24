import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eth_wallet/models/transactions.dart';
import "package:meta/meta.dart";
import 'package:web3dart/web3dart.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitial()) {
    on<DashboardInitialFetch>(dashboardInitialFetch);
  }
  List<TransactionsModel>transactions=[];
  Web3Client? _web3client;

  FutureOr<void> dashboardInitialFetch(DashboardInitialFetch event, Emitter<DashboardState> emit) {
    emit(DashboardLoadingState());

    final String rpcUrl = "http://127.0.0.1:7545";
    final String socketUrl = "ws://127.0.0.1:7545";
    final String privateKey = "0x9822c02122b35e37e7b3031e10fdd452194752ae8bcfb06524d79f8dd960c7e5";

    // _web3Client = Web3Client(rpcUrl, http)
  }
}
