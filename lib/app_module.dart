import 'package:crypto/src/Modules/splash/controller/splash_controller.dart';
import 'package:crypto/src/Modules/splash/view/splash_view.dart';
import 'package:crypto/src/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/home/view/home_view.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashView()),
        ModuleRoute('/login', module: LoginModule()),
        ChildRoute('/home', child: (context, args) => const HomeView()),
      ];
}
