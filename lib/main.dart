import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travelapp/screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 794), // Set your Figma design size here (width, height)
      minTextAdapt: true,         // Optional: adapt text size for different screen sizes
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Travelista',
          home: MyHomePage(),
        );
      },
    );  
  }
}

class MyHomePage extends StatefulWidget {
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //P
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => {
          setState(() {
            index = value;
          })
        } ,
        backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('lib/assets/images/home-unselect.png', height: 24),
              activeIcon: Image.asset('lib/assets/images/home-selected.png', height: 24),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('lib/assets/images/bookmark-unselect.png', height: 24),
              activeIcon: Image.asset('lib/assets/images/bookmark-selected.png', height: 24),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('lib/assets/images/bell-unselect.png', height: 24),
              activeIcon: Image.asset('lib/assets/images/bell-selected.png', height: 24),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('lib/assets/images/user-unselect.png', height: 24),
              activeIcon: Image.asset('lib/assets/images/user-selected.png', height: 24),
              label: '',
            ),
          ]
      ),

      body: SafeArea(
        child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Home(),
                ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
