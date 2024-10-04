
import 'package:bloc_ecommerce_firebase/presentation/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {

  SplashCubit() : super(DisplaySplash());

  void appStarted() async {
    await Future.delayed(const Duration(seconds: 2));
    // var isLoggedIn = await sl < IsLoggedInUseCase > ().call();
    var isLoggedIn = false;
    if (isLoggedIn) {
      emit(
        Authenticated()
      );
    } else {
      emit(
        UnAuthenticated()
      );
    }
  }
}