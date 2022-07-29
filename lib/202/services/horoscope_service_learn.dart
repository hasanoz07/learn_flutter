import 'package:flutter/material.dart';
import 'package:learn_flutter/202/services/horoscope_model.dart';
import 'package:learn_flutter/202/services/horoscope_service.dart';


class HoroscopeServiceLearn extends StatefulWidget {
  HoroscopeServiceLearn({Key? key}) : super(key: key);

  @override
  State<HoroscopeServiceLearn> createState() => _HoroscopeServiceLearnState();
}

class _HoroscopeServiceLearnState extends State<HoroscopeServiceLearn> {
  final String data = "data";
  bool _isLoading = false;
  List<HoroscopeModel>? _horoscopeModelItem;
  late final IHoroscopeService _horoscopeService;
  @override
  void initState() {
    super.initState();
    _horoscopeService = HoroscopeService();
    getData();
    
  }

  void changeLoadingStatus() {
    setState(() {
     _isLoading=!_isLoading;
    });
    
  }

  Future<void> getData() async {
    changeLoadingStatus();
    _horoscopeModelItem = await _horoscopeService.fetchReletadHoroscopeDaily("ikizler");
    changeLoadingStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(
              strokeWidth: 7,
              color: Colors.red,
            ))
          : ListView.builder(
            itemCount: _horoscopeModelItem?.length??0,
            itemBuilder: (BuildContext context, int index) {
              return Card(child: ListTile(title: Text(_horoscopeModelItem?[index].burc.toString()??""),subtitle:ListTile(title: Text(_horoscopeModelItem?[index].gunlukYorum.toString()??"") ,)));
            },
          ),
    );
  }
}
