extension ColorStringExtension on String?{
    int get colorValue {
    var _newColor = this?.replaceFirst("#", "0xff") ?? "";
    
    return int.tryParse(_newColor)??0;
  }
}