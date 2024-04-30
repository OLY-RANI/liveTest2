
//MaterialApp || Scaffold || Text || Centre || Image || Icon
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:
          Center(
            child: Text(
              'Profile',
              style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.w600,),
            ),
          ),
          leading: Icon(
            Icons.home_filled,
            color: Colors.white,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Text Added!'),),);
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Alert!'),
                          content: Text('Text Added!'),
                          actions: [],
                        );
                      });
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: Center(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child:
                    Image.network('https://picsum.photos/id/237/200/300',fit: BoxFit.cover,)),
          Text('Oly Pal',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Colors.black
            ),
          ),
                Text('Oly@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54
                  ),
                ),
                Text('Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),
                )


            /* Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  // controller: TextEditingController(),
                  // enabled: false,
                  onChanged: (value) {
                    print(value);
                  },
                  style: TextStyle(fontSize: 24, color: Colors.orange),
                  maxLength: 10,
                  decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                      // label: Text('Email'),
                      labelText: 'Email',
                      labelStyle: TextStyle(),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(width: 4, color: Colors.red)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 4, color: Colors.orange),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(width: 4, color: Colors.red)
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(width: 4, color: Colors.grey)
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.add),
                      prefixIconColor: Colors.green,
                      // prefix: Column(
                      //   children: [
                      //     Icon(Icons.add),
                      //   ],
                      // ),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      suffixIconColor: Colors.red
                    // suffix: Column(
                    //   children: [],
                    // )
                  ),
                ),
              ),*/

            ],
          ),


          // child: Icon(Icons.android,size: 84,color: Colors.green,),
          //child: Image.network('https://picsum.photos/id/237/200/300'),
          //child: Image.asset('images/new.jpg',width: 300,height: 300,fit: BoxFit.scaleDown,),
        ));
  }
}

/*

child: Column(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisSize: MainAxisSize.min,
children:[
ElevatedButton(onPressed: (){print('Pressed');},
child: Text('Press Here'))
]*/
