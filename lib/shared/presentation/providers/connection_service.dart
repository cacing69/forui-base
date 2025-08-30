import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connection_service.g.dart';

@Riverpod(keepAlive: true)
class ConnectionService extends _$ConnectionService {
  late final StreamController<bool> _controller;
  StreamSubscription<List<ConnectivityResult>>? _subscription;
  bool _lastStatus = false;

  /// Stream status koneksi: true = online, false = offline
  Stream<bool> get statusStream async* {
    yield _lastStatus; // replay last status on new listener
    yield* _controller.stream;
  }

  /// Cek status online sekali
  Future<bool> isOnlineNow() async {
    try {
      return await InternetConnection().hasInternetAccess;
    } catch (_) {
      return false;
    }
  }

  @override
  void build() {
    _controller = StreamController<bool>.broadcast();

    // Emit status awal
    _checkAndEmit();

    // Listener konektivitas
    _subscription = Connectivity().onConnectivityChanged.listen((
      results,
    ) async {
      final result = results.isNotEmpty
          ? results.first
          : ConnectivityResult.none;
      if (result == ConnectivityResult.none) {
        _emit(false);
      } else {
        await _checkAndEmit();
      }
    });

    // Bersihkan saat provider di-dispose (app close)
    ref.onDispose(() async {
      await _subscription?.cancel();
      await _controller.close();
    });
  }

  /// Mengecek status internet nyata
  Future<void> _checkAndEmit() async {
    try {
      final hasInternet = await InternetConnection().hasInternetAccess;
      _emit(hasInternet);
    } catch (_) {
      _emit(false);
    }
  }

  void _emit(bool status) {
    _lastStatus = status;
    if (!_controller.isClosed) {
      _controller.add(status);
    }
  }
}
