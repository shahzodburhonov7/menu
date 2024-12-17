// import 'package:WaiterPro/domain/model/confirm_list/done_list.dart';
// import 'package:WaiterPro/features/done_order/widget/cashier_all.dart';
// import 'package:flutter/material.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
//
// class HomeList extends StatelessWidget {
//   const HomeList({
//     super.key,
//     this.controller,
//   });
//
//   final PagingController<int, Result>? controller;
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: RefreshIndicator.adaptive(
//         child: controller == null
//             ? const CircularProgressIndicator()
//             : PagedListView<int, Result>.separated(
//                 key: ValueKey(controller),
//                 physics: const AlwaysScrollableScrollPhysics(),
//                 padding: const EdgeInsets.all(24),
//                 pagingController: controller!,
//                 builderDelegate: PagedChildBuilderDelegate<Result>(
//                   noItemsFoundIndicatorBuilder: (context) =>
//                       const SizedBox.shrink(),
//                   itemBuilder: (context, item, index) {
//                     return CashierAll(
//                       tableNumber: item.cart!.table_number.toString(),
//                       dateNumber: "",
//                       waiterName: item.user_full_name.toString(),
//                       priceAll: item.total_price.toString(),
//                       dateTime: "",
//                       carts: item.cart!.cart_items,
//                       onTap: () {},
//                     );
//                   },
//                 ),
//                 separatorBuilder: (BuildContext context, int index) {
//                   return const SizedBox(height: 16);
//                 },
//               ),
//         onRefresh: () => Future.sync(() => controller?.refresh()),
//       ),
//     );
//   }
// }
