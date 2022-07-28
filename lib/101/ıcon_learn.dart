import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconColors iconColors = IconColors();
  final IconSizes iconSizes = IconSizes();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Learn"),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons
                  .message_outlined, //Outlined kullanımına özen göstermek gerekmetedir. Müşteriye daha hoş gelmektedir.
              color: Theme.of(context).backgroundColor,
              /*Prjede coloesheme ile renkler verildiği kısımıda proje genelinde
               light dark gibi durumlarda da değişiklik olduğu 
               kısımda proje ona göre renk düzlemesine sokulur.*/
              size: iconSizes.iconSmall,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons
                  .message_outlined, //Outlined kullanımına özen göstermek gerekmetedir. Müşteriye daha hoş gelmektedir.
              color: iconColors.froly,
              size: iconSizes.iconSmall2x,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons
                  .message_outlined, //Outlined kullanımına özen göstermek gerekmetedir. Müşteriye daha hoş gelmektedir.
              color: iconColors.froly,
              size: iconSizes.iconSmall,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons
                  .message_outlined, //Outlined kullanımına özen göstermek gerekmetedir. Müşteriye daha hoş gelmektedir.
              color: iconColors.froly,
              size: iconSizes.iconSmall,
            ),
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 60;
  final double iconSmall2x = 120;
}

class IconColors {
  final Color froly = Color.fromARGB(255, 245, 40, 78);
}
