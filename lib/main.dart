import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('First app by tar'),
              centerTitle: true,
            ),
            body: Home()));
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var ctl_product = TextEditingController();
  var ctl_price = TextEditingController();
  var ctl_quantity = TextEditingController();
  var result = '------- result ------------';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                'TarKz-Soft',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.blue[900],
                    fontFamily: 'sd'),
              ),
            ),
            Icon(
              Icons.alarm,
              size: 100.0,
              color: Colors.blue[900],
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(50, 25, 50, 10),
          child: Image.asset(
            'assets/sukuna.jpg',
            scale: 0.7,
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 25, 50, 10),
            child: TextField(
              controller: ctl_product,
              decoration: InputDecoration(
                  labelText: 'Product', border: OutlineInputBorder()),
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 25, 50, 10),
            child: TextField(
              controller: ctl_price,
              decoration: InputDecoration(
                  labelText: 'Pre Nmber', border: OutlineInputBorder()),
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 25, 50, 10),
            child: TextField(
              controller: ctl_quantity,
              decoration: InputDecoration(
                  labelText: 'Price', border: OutlineInputBorder()),
            )),
        Padding(
              padding: EdgeInsets.fromLTRB(50, 25, 50, 10),
            child: ElevatedButtonTheme(
                child:ElevatedButton(
                onPressed: () {
                  var v1 = int.parse(ctl_price.text);
                  var v2 = int.parse(ctl_quantity.text);
                  var cal = v1 * v2;
                  print("cal :$cal Bath ");
                  var productname = ctl_product.text;
                  setState(() {
                    result =
                        "have product : $productname\nprice:$v1\n number: $v2 \n Total : $cal";
                  });
                },
                child: Row(
                    children: [Icon(Icons.send), 
                    Text('massage to user')]
                    )
                  )
                ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(50, 40, 50, 10),
            child: Text(
              result,
              style: TextStyle(fontSize: 30.0),
            )),
      ],
    );
  }
}
