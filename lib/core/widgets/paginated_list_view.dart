import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:cat_facts/core/utils/color_constant.dart';

class PaginatedListView extends StatelessWidget {
  int pageElementCount;
  Widget child;
  Widget noDataWidget;
  VoidCallback onRefresh;
  VoidCallback onLoading;
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  ///An common list view with pagination functionalities
  PaginatedListView({
    required this.pageElementCount,
    required this.onRefresh,
    required this.onLoading,
    required this.child,
    required this.noDataWidget,
  });

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      header: MaterialClassicHeader(),
      enablePullDown: true,
      enablePullUp: pageElementCount > 0,
      controller: refreshController,
      onRefresh: () {
        onRefreshData();
      },
      onLoading: () {
        onLoadMoreData();
      },
      child: pageElementCount > 0
          ? child
          : Center(
              child: noDataWidget,
            ),
    );
  }

  onRefreshData() {
    onRefresh();
    refreshController.refreshCompleted();
  }

  onLoadMoreData() {
    onLoading();
    refreshController.loadComplete();
  }
}
