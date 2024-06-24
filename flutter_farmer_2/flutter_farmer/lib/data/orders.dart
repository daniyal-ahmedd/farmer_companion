// import 'package:flutter_farmer/models/product.dart';

import '../data/products.dart';
import '../models/order.dart';
import '../utils/enums/order.dart';
List<Order> orders = [
  Order(id: "402aje5", 
  products: products.reversed.take(3).toList(), 
  orderingDate: DateTime.utc(2024,1,1), 
  deliveryDate: DateTime.utc(2024,2,1), 
  status: OrderStatus.delivered),
  
  Order(id: "402aje5", 
  products: products.reversed.take(3).toList(), 
  orderingDate: DateTime.utc(2024,1,1), 
  deliveryDate: DateTime.utc(2024,2,1), 
  status: OrderStatus.picking),

  Order(id: "2022j04m", 
  products: products.reversed.take(3).toList(), 
  orderingDate: DateTime.utc(2024,1,1), 
  deliveryDate: DateTime.utc(2024,2,1), 
  status: OrderStatus.shipping),

  Order(id: "2024j05m", 
  products: products.reversed.skip(3).toList(), 
  orderingDate: DateTime.utc(2024,1,1), 
  deliveryDate: DateTime.utc(2024,2,1), 
  status: OrderStatus.shipping),

  Order(id: "2024j06m", 
  products: products.reversed.skip(3).toList(), 
  orderingDate: DateTime.utc(2024,1,1), 
  deliveryDate: DateTime.utc(2024,2,1), 
  status: OrderStatus.delivered),
];