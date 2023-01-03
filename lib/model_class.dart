import 'package:flutter/material.dart';

class ModelClass {
  String title;
  String brandName;
  String gender;
  Image image;
  ModelClass(this.title, this.brandName, this.gender, this.image);

  String get getTitle {
    return title;
  }

  set setTitle(String title) {
    this.title = title;
  }

  String get getBrandName {
    return brandName;
  }

  set setBrandName(String brandName) {
    this.brandName = brandName;
  }

  Image get getImage {
    return image;
  }

  set setImage(Image image) {
    this.image = image;
  }

  set setGender(String gender) {
    this.gender = gender;
  }

  String get getGender {
    return gender;
  }
}
