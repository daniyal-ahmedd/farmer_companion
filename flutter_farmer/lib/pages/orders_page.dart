import '../utils/enums/order.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = OrderStatus.values.map((e) => e.name).toList();
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Mu orders"),
          bottom: TabBar(
            isScrollable: true,
            tabs: List.generate(tabs.length, (index) {
              return Tab(
                text: tabs[index],
              );
            }),
          ),
        ),
        body: TabBarView(
          children: 
            List.generate(tabs.length, (index) {
              return ListView.separated(itemBuilder: (context, index) {
                return const SizedBox();
              }, separatorBuilder: (context, index) => SizedBox(height: 10), itemCount: 2);
            }
            )
          )
      ),
    );
  }
}
