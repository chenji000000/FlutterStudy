import 'package:flutter/material.dart';
import 'package:using_listview/contactlist/contact_list.dart';
import 'package:using_listview/contactlist/model/contact.dart';

class ContactPage extends StatelessWidget {
  _buildContactList() {
    return <ContactModel>[
      const ContactModel(
          fullName: "Romain Hoogmood", email: "romain.hoogmoed@example.com"),
      const ContactModel(
          fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
      const ContactModel(
          fullName: 'Nishant Srivastava',
          email: 'nishant.srivastava@example.com'),
      const ContactModel(
          fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com'),
      const ContactModel(
          fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
      const ContactModel(
          fullName: 'Nishant Srivastava',
          email: 'nishant.srivastava@example.com'),
      const ContactModel(
          fullName: 'Romain Hoogmoed', email: 'romain.hoogmoed@example.com'),
      const ContactModel(
          fullName: 'Emilie Olsen', email: 'emilie.olsen@example.com'),
      const ContactModel(
          fullName: 'Nishant Srivastava',
          email: 'nishant.srivastava@example.com'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ContactList(_buildContactList()),
    );
  }
}
