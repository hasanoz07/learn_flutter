class SharedNotInitilazeException implements Exception {
  @override
  String toString() {
    return "Shared Preferences ile ilgili bir initilaze sorunu çıktı";
  }
}
