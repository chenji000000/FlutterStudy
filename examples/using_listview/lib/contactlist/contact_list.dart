import 'package:flutter/material.dart';
import 'package:using_listview/contactlist/contact_list_item.dart';
import 'package:using_listview/contactlist/model/contact.dart';

class ContactList extends StatelessWidget {
  final List<ContactModel> _contactModel;

  ContactList(this._contactModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _buildContactsList(),
    );
  }

  List<ContactListItem> _buildContactsList() {
    return _contactModel.map((contact) => ContactListItem(contact)).toList();
  }
}