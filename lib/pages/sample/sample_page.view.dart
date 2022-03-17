import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pmvvm/pmvvm.dart';

import 'sample_page.vm.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MVVM(
      view: () => const _SamplePageView(),
      viewModel: CounterPageVM(),
    );
  }
}

class _SamplePageView extends StatelessView<CounterPageVM> {
  const _SamplePageView({Key? key}) : super(key: key);

  @override
  Widget render(context, page) {
    return Scaffold(
      appBar: AppBar(title: Text(page.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              page.counter.toString(),
              style: TextStyle(fontSize: 48.sp),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: page.increase,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
