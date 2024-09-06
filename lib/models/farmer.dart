import 'package:farmconnect/models/product.dart';

class Farmer {
  const Farmer(
      {
      required this.id,
      required this.farmerName,
      required this.phoneNumber,
      required this.adharNumber,
      required this.email,
      required this.residenceAddress,
      required this.stateValue,
      required this.cityValue,
      required this.pincode,
      required this.products,
      required this.profileImageName,
      required this.orders
      });

  final String id;
  final String farmerName;
  final String phoneNumber;
  final String adharNumber;
  final String email;
  final String residenceAddress;
  final String stateValue;
  final String cityValue;
  final int pincode;
  final List<Product> products;
  final String profileImageName;
  final List<Product> orders;

}

// const Farmer f1 =Farmer(id: '1', farmerName: 'Raju', phoneNumber: '123', email: 'raju@gmail.com',
//  residenceAddress: 'dholakpur', stateValue: 'up', cityValue: 'Lko', pincode: 226003, products:[], profileImageName: 'image.png', orders: []);

// final String farmerName = f1.farmerName;
