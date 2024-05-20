import 'package:easy_stepper/easy_stepper.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_farmer/utils/enums/extensions/date.dart';
import 'package:flutter_farmer/widgets/order_item.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../models/order.dart';
import '../utils/enums/order.dart';
import '../models/order.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key, required this.order});
  final Order order;

  @override
  Widget build(BuildContext context) {
    const steps = OrderStatus.values;
    final activeStep = steps.indexOf(order.status); 

    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Details"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          EasyStepper(
            activeStep: activeStep == steps.length - 1 ? activeStep +1 : activeStep, 
            stepRadius: 8,
            activeStepTextColor: Colors.black87,
            finishedStepTextColor: Theme.of(context).colorScheme.primary,
            lineStyle: LineStyle(
              defaultLineColor: Colors.grey.shade300,
              lineLength: (MediaQuery.of(context).size.width*0.7 / steps.length),
            ),
            steps: List.generate(steps.length, (index) {
            return EasyStep(
              icon: Icon(Icons.local_shipping),
              finishIcon: const Icon(Icons.done),
              topTitle: true,
              title: steps[index].name,
            );
          })
          ),
          SizedBox(height: 10,),
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              side: BorderSide(color: Colors.grey.shade200)
            ),
            elevation: 0.1,

            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order: ${order.id}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Chip(
                          shape: const StadiumBorder(),
                          side: BorderSide.none,
                          backgroundColor: Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withOpacity(0.4),
                          labelPadding: EdgeInsets.zero,
                          avatar: const Icon(Icons.fire_truck),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          label: Text(steps[activeStep].name))
                      ],
                      ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Estimate"),
                      Text(order.deliveryDate.formatDate,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        )
                        ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  const Text(
                    "Jess walton",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(IconlyLight.home, size: 15),
                      Expanded(
                        child: Text("6844 hall spring suite 150 \n East Annabury, ok 45000",)),
                    ]
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(IconlyLight.call, size: 15),
                      Expanded(
                        child: Text("1 234 556 677",)),
                    ]
                  ),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Text("Payment Method"),
                      Text(
                        "Credit Card ****4567",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        )
                    ]
                  ),
                ],
              ),
            )
          ),
          const SizedBox(height: 30,),
          OrderItem(order: order, visibleProducts: 1,)
        ]
      )
    );
  }
}