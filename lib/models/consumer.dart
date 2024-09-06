import 'package:farmconnect/models/product.dart';

class Consumer {
  const Consumer(
      {required this.id,
      required this.farmerName,
      required this.phoneNumber,
      required this.email,
      required this.residenceAddress,
      required this.stateValue,
      required this.cityValue,
      required this.pincode,
      required this.products,
      required this.profileImageName,
      
      required this.orders,
      required this.cart
      
      });

  final String id;
  final String farmerName;
  final String phoneNumber;
  final String email;
  final String residenceAddress;
  final String stateValue;
  final String cityValue;
  final int pincode;
  final List<Product> products;
  final String profileImageName;

  final List<Product> orders;
  final List<Product> cart;
}
