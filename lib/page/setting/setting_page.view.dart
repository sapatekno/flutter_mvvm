import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:sapatekno_mvvm/page/setting/setting_page.vm.dart';
import 'package:sapatekno_mvvm/widget/app_bar_widget.dart';

class SettingPage extends StatelessWidget {
  static const routeName = '/setting';

  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MVVM(
      view: () => const _SettingPageView(),
      viewModel: SettingPageVM(),
    );
  }
}

class _SettingPageView extends StatelessView<SettingPageVM> {
  const _SettingPageView({Key? key}) : super(key: key);

  @override
  Widget render(context, page) {
    var darkMode = page.box?.get('darkMode', defaultValue: false);

    return Scaffold(
      appBar: appBarWidget(context: context),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Dark Mode'),
            trailing: Switch(
              value: page.isDarkMode,
              onChanged: (value) {
                page.setIsDarkMode(value);
              },
            ),
          ),
          const Divider(),
          const ListTile(
            title: Text('Language'),
            trailing: Switch(value: false, onChanged: null),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
