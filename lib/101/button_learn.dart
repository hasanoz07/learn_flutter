import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "save",
              style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.blue),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                //Bu şekilde button style vererek buton üzerinde
                //bütün durumlara özel buton tasarımı yapılabilir.
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.green;
                  } else
                    return Colors.deepPurple;
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text("data"),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.dangerous),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add_a_photo),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              //Butonların styleları kendi isimleri ile vardur
              backgroundColor: Colors.red,
              // shape: CircleBorder(),
              padding: EdgeInsets.all(10),
            ),
            onPressed: () {},
            child: SizedBox(width: 200, child: Text("data")),
          ),
          InkWell(
            onTap: () {},
            child: Text("custom"),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  //Yeni flutter'da butonlar bu şekilde şekillenir.
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                  primary: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
              onPressed: () {},
              child: Text(
                "Place Bid",
                style: Theme.of(context).textTheme.headline4,
              ))
        ],
      ),
    );
  }
}
