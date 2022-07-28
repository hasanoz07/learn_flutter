import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {
  Future<void> launchURL(String url) async {
    Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
}
