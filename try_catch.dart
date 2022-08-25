import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:try_catch/try_catch.dart' as try_catch;

void main(List<String> arguments) {
  List age = [1, 3, 5, 8, 4, 20, 25, 26, -30, 15.5, 40, 65];
  try {
    checkAge(age);
  } catch (e) {
    print(e.toString());
  }
}

/*Cho một list các độ tuổi, ageList = [1,3,5, 8,4,20, 25, 26, -30 , 15.5, 40 , 65],
Kiểm tra các phần tử nếu phần tử nào không hợp lệ thì đưa ra Exception, thông báo và in
số đó ra cùng với chỉ số của nó.*/
void checkAge(List ageList) {
  List invalidList = [];
  List invalidIndexList = [];
  for (var i = 0; i < ageList.length; i++) {
    if (ageList[i] % 1 != 0 || ageList[i] < 0) {
      invalidList.add(ageList[i]);
      invalidIndexList.add(i);
    }
  }
  if(invalidIndexList.length != 0){
    {
      throw new Exception("Các số thứ ${invalidIndexList} : ${invalidList} không phải là tuổi");
    }
  }
}
