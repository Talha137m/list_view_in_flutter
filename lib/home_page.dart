import 'package:flutter/material.dart';
import 'package:list_view_flutter/list_view_widget.dart';
import 'package:list_view_flutter/model_class.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<ModelClass> list = [
    ModelClass(
      'dsj',
      'ns',
      'bns',
      Image.asset('assets/images/cake1.png'),
    ),
    ModelClass(
      'dsj',
      'ns',
      'bns',
      Image.asset('assets/images/cake2.png'),
    ),
    ModelClass(
      'dsj',
      'ns',
      'bns',
      Image.asset('assets/images/cake3.png'),
    ),
    ModelClass(
      'dsj',
      'ns',
      'bns',
      Image.asset('assets/images/cake4.png'),
    ),
    ModelClass(
      'dsj',
      'ns',
      'bns',
      Image.asset('assets/images/cake5.png'),
    ),
    ModelClass(
      'dsj',
      'ns',
      'bns',
      Image.asset('assets/images/cake6.png'),
    ),
    ModelClass(
      'dsj',
      'ns',
      'bns',
      Image.asset('assets/images/cake7.png'),
    ),
    ModelClass(
      'dsj',
      'ns',
      'bns',
      Image.asset('assets/images/cake8.png'),
    ),
    ModelClass(
      'dsj',
      'ns',
      'bns',
      Image.asset('assets/images/cake9.png'),
    ),
    ModelClass(
      'dsj',
      'ns',
      'bns',
      Image.asset('assets/images/cake10.png'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List_view'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: ((context, index) => CustomWidget(
            brandName: list[index].getBrandName,
            title: list[index].getTitle,
            gender: list[index].getGender,
            image: list[index].getImage)),
      ),
    );
  }
}

//  Column(
//         children: [
//           ListView.builder(
//             itemCount: 5,
//             itemBuilder: ((context, index) => ListTile(
//                   title: Text(list[index]),
//                 )),
//           )
//         ],
//       ),