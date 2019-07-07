import 'package:flutter/material.dart';
import 'package:using_listview/contactlist/model/contact.dart';

class ContactListItem extends StatelessWidget {
  final ContactModel _contactModel;

  ContactListItem(this._contactModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: CircleAvatar(
        child: Text(_contactModel.fullName[0]),
      ),
      title: Text(_contactModel.fullName),
      subtitle: Text(_contactModel.email),
    );
  }
}
