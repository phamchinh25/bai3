import 'package:async_programming/async_programming.dart' as async_programming;

void main(List<String> arguments) async {
  dynamic myName = await printName("Chinh");
  print("My name is $myName");
  int myAge = await printAge(20);
  print("I am $myAge years old");
  String myHometown = await printHometown("Ha Nam");
  print("My hometown is $myHometown ");
  Stream<int> stream = numberStream(100);
  listenStream(stream);
}

//Tạo ra một chương trình giới thiệu bản thân ấp úng , tức sau 3s mới hiển thị ra tên, sau 5s mới nói ra tuổi rồi 2s sau mới nói ra quê quán.
printName(String name) {
  return Future.delayed(Duration(seconds: 3), () {
    return name;
  });
}

printAge(int age) {
  return Future.delayed(Duration(seconds: 5), () {
    return age;
  });
}

printHometown(String hometown) {
  return Future.delayed(Duration(seconds: 2), () {
    return hometown;
  });
}

//Tạo ra một Stream số từ 1- 100 , Cứ sau 3s đẩy số vào Stream 1 lần va in ra những số nào chia hết cho 3.
Stream<int> numberStream(int maxNumber) async* {
  for (var i = 1; i <= maxNumber; i++) {
    await Future.delayed(Duration(seconds: 3));
    yield i;
  }
}

void listenStream(Stream numberStream) {
  numberStream.listen((event) {
    if (event % 3 == 0) print(event);
  });
}

