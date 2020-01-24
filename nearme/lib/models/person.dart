import 'package:flutter/foundation.dart';
import 'package:nearme/models/organization.dart';
import 'package:nearme/models/pointlocation.dart';

class Person {
  int id;
  String name;
  String address;
  String mobile;
  String imageUri;
  Organization organization;
  PointLocation pointLocation;

  Person.empty();

  Person({
    this.id,
    this.name,
    this.address,
    this.mobile,
    this.imageUri,
    this.organization,
    this.pointLocation,
  });

  factory Person.fromJSON(dynamic data) {
    return Person(
        id: int.parse(data["id"]),
        name: data["name"],
        address: data["address"],
        mobile: data["mobile"],
        imageUri: data["imageUri"],
        pointLocation: PointLocation.fromJson(data["pointLocation"]));
  }
}
