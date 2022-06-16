import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_contact_app/contact_model.dart';
import 'package:my_contact_app/constants/styles.dart';

class ContactDetailsView extends StatelessWidget {
  const ContactDetailsView({Key? key, required this.contact}) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text('Contact',
            style: kAppBarTitleStyle,),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: ListView(children: [
        const Center(
          child: CircleAvatar(
              radius: 60, backgroundImage: AssetImage('assets/contact_icon.png')),
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
            child: Text(contact.name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black))),
        Center(
            child: Text('${contact.region}, ${contact.country}',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black))),
        const SizedBox(
          height: 20,
        ),
        Container(
          color: const Color(0xffD2E5F1),
          child: Column(
            children: [
              ListTile(
                  title: const Text('Mobile',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                  subtitle: Text(contact.phone,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff959494))),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Icon(Icons.message, color: Colors.black),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                          )),
                      TextButton(
                          onPressed: () {},
                          child: const Icon(Icons.call, color: Colors.black),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                          ))
                    ],
                  )),
              ListTile(
                  title: const Text('Email',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                  subtitle: Text(contact.email,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff959494))),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Icon(Icons.email, color: Colors.black),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                          )),
                    ],
                  )),
              const ListTile(
                title: Text('Groups',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                subtitle: Text('Uni friends',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff959494))),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Account Linked',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
        ),
        Container(
          color: const Color(0xffD2E5F1),
          child: Column(children: [
            ListTile(
              title: const Text(
                'Telegram',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              trailing: Image.asset('assets/telegram.png'),
            ),
            ListTile(
              title: const Text(
                'WhatsApp',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              trailing: Image.asset('assets/whatsapp.png'),
            ),
          ]),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('More Options',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
        ),
        Container(
            color: const Color(0xffD2E5F1),
            child: Column(children: const [
              ListTile(
                title: Text(
                  'Share Contact',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
              ListTile(
                title: Text('QR Code',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.black)),
              )
            ]))
      ]),
    );
  }
}
