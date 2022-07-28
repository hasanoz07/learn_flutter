import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key, this.userName}) : super(key: key);
  final String _name = "veli";
  final String? userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome $_name ${_name.length}",
              style: ProjectStyles.welcomeStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis, //Maxlinesdan daha fazla satır varsa
              //devamının olduğunu göstermek için ... koyuyor
              textAlign: TextAlign.right, //Text konumuunu belirler
            ),
            Text(
              "Hello $_name ${_name.length}",
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: ProjectColors.welcomeColor), //Flutter temaları içinden direkt olarak style verebiliriz
              maxLines: 2,
              overflow: TextOverflow.ellipsis, //Maxlinesdan daha fazla satır varsa
              //devamının olduğunu göstermek için ... koyuyor
              textAlign: TextAlign.right, //Text konumuunu belirler
            ),
            Text(userName ?? ""),
            Text(ProjectKey.welcomeKey),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      wordSpacing: 2, //Harflerin arasına boşluk verir,
      letterSpacing: 2, //Kelimelerin arasına boşluk verir,
      fontSize: 24,
      decoration: TextDecoration.underline, //Texttin altını çizer
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      color: Colors.red);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKey {
  static final String welcomeKey = "Welcome";
}
