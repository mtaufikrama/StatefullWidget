import 'package:flutter/material.dart';
import 'package:statefull_widget/screen/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Menu Page",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => InputPage(),
                ),
              );
            },
            child: Icon(Icons.people),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Input Page",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        fixedColor: Colors.black,
      ),
    );
  }
}


//! This for Lifecyecle Widget

// class ChangeSize extends StatefulWidget {

//   ChangeSize(){
//     print("Constructor");
//   }

//   @override
//   State<ChangeSize> createState() => _ChangeSizeState();
// }

// class _ChangeSizeState extends State<ChangeSize> {

//   var textSize = 10.0;

//   //kita tidak menggunakan context
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print("initState");
//   }

//   //disini kita bisa menggunakan sebuah context
//  @override
//   void didChangeDependencies() {
//     // TODO: implement didChangeDependencies
//     print("didChangeDependencies");
//     super.didChangeDependencies();
//   }

//   @override
//   void didUpdateWidget(covariant ChangeSize oldWidget) {
//     // TODO: implement didUpdateWidget
//     super.didUpdateWidget(oldWidget);
//     print("didUpdateWidget");
//   }

//   @override
//   void deactivate() {
//     // TODO: implement deactivate
//     print("deactivate");
//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     print("dispose");
//     super.dispose();
//   }



//   @override
//   Widget build(BuildContext context) {
//     print("builde()");
//     return Scaffold(
//       appBar: AppBar(
//         title:const Text(
//           "Change Size",
//         ),
//       ),
//       body: Center(
//         child: Text(
//           "hello",
//           style: TextStyle(fontSize: textSize),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           setState(() {
//           textSize = textSize + 1.0;
//           });
//         },
//         child:const Icon(Icons.add),
//       ),
//     );
//   }
// }
