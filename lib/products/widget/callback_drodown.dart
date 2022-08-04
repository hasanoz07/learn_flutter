import 'package:flutter/material.dart';
import 'package:learn_flutter/303/call_back_learn.dart';

class CallBackDropdown extends StatefulWidget {
  const CallBackDropdown({Key? key,required this.onUserSelected}) : super(key: key);
  final void Function(CallBackUser user) onUserSelected;
  @override
  State<CallBackDropdown> createState() => _CallBackDropdownState();
}

class _CallBackDropdownState extends State<CallBackDropdown> {
  CallBackUser? _user;
  void _updateUser(CallBackUser? item) {
    setState(() {
      _user = item;
    });
    if (_user!=null) {
      widget.onUserSelected.call(_user!);
    }
  }
  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallBackUser>(
        value: _user,
        items: CallBackUser.dummyUsers().map((element) {
          return DropdownMenuItem(child: Text(element.name), value: element);
        }).toList(),
        onChanged: _updateUser);
  }
}
