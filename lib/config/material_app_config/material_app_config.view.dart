import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:sapatekno_mvvm/config/material_app_config/material_app_config,vm.dart';
import 'package:sapatekno_mvvm/config/route_config.dart';
import 'package:sapatekno_mvvm/config/variable_config.dart';
import 'package:sapatekno_mvvm/data/local/hive/hive_box/config_hive_box.dart';
import 'package:sapatekno_mvvm/data/local/hive/hive_model/config_hive_model.dart';
import 'package:sapatekno_mvvm/data/local/hive/hive_repo/config_hive_repo.dart';

class MaterialAppConfig extends StatelessWidget {
  const MaterialAppConfig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MVVM(
      view: () => _MaterialAppConfigView(),
      viewModel: MaterialAppConfigVM(),
    );
  }
}

class _MaterialAppConfigView extends StatelessView<MaterialAppConfigVM> {
  @override
  Widget render(context, vm) {
    return ValueListenableBuilder(
      valueListenable: ConfigHiveBox.listenConfigBox(),
      builder: (context, Box box, widget) {
        ConfigHiveModel configData = ConfigHiveRepo.getListenableConfig(box);
        return MaterialApp(
          builder: (context, widget) {
            ScreenUtil.setContext(context);
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
          debugShowCheckedModeBanner: false,
          initialRoute: VariableConfig.initialRoute(),
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          color: Colors.blue,
          routes: routeConfig(),
          supportedLocales: context.supportedLocales,
          theme: ThemeData(brightness: configData.isDarkMode ? Brightness.dark : Brightness.light),
          themeMode: ThemeMode.system,
          useInheritedMediaQuery: true,
        );
      },
    );
  }
}
