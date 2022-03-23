import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sapatekno_mvvm/data/model/user_model.dart';
import 'package:sapatekno_mvvm/shimmer/avatar_shimmer.dart';
import 'package:sapatekno_mvvm/widget/app_bar_widget.dart';
import 'package:sapatekno_mvvm/widget/avatar_widget.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

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
      appBar: appBarWidget(context: context),
      body: page.isLoading
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: avatarShimmer(size: 24.w),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Shimmer(
                          child: Container(
                            height: 18.h,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      subtitle: Shimmer(
                        child: Container(
                          height: 18.h,
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                ),
                itemCount: 3,
                physics: const BouncingScrollPhysics(),
              ),
            )
          : SmartRefresher(
              controller: page.refreshController,
              enablePullDown: true,
              enablePullUp: true,
              onRefresh: () => page.fetchUsers(loadType: LoadType.refresh),
              onLoading: () => page.fetchUsers(loadType: LoadType.loadMore),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                itemCount: page.listUser?.length ?? 0,
                itemBuilder: (context, index) {
                  UserModel data = page.listUser![index];
                  return Card(
                    child: InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: avatarWidget(imageUrl: data.avatar ?? '', size: 48.w),
                        title: Text('${data.firstName} ${data.lastName}'),
                        subtitle: Text('${data.email}'),
                      ),
                    ),
                  );
                },
              ),
            ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TalkerScreenPage())),
        onPressed: () {
          page.fetchUsers(loadType: LoadType.init);
        },
        tooltip: 'increment'.tr(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
