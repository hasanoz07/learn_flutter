class HoroscopeModel {
  String? burc;
  String? mottosu;
  String? gezegeni;
  String? elementi;
  String? gunlukYorum;

  HoroscopeModel(
      {this.burc,
      this.mottosu,
      this.gezegeni,
      this.elementi,
      this.gunlukYorum});

  HoroscopeModel.fromJson(Map<String, dynamic> json) {
    burc = json['Burc'];
    mottosu = json['Mottosu'];
    gezegeni = json['Gezegeni'];
    elementi = json['Elementi'];
    gunlukYorum = json['GunlukYorum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Burc'] = this.burc;
    data['Mottosu'] = this.mottosu;
    data['Gezegeni'] = this.gezegeni;
    data['Elementi'] = this.elementi;
    data['GunlukYorum'] = this.gunlukYorum;
    return data;
  }
}
