import 'package:flutter/material.dart';
import 'package:whatsapp_app/colors.dart';
import 'package:whatsapp_app/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
            Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: info.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {} ,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        title: Text(
                          info[index]['name'].toString(),
                          style: const TextStyle(fontSize: 18),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            info[index]['name'].toString(),
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                        leading: const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('entities/profilePhoto2.png')
                        ),
                        trailing: Text(
                          info[index]['time'].toString(),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  );
                },
            ),
          ),
          const Divider(color: dividerColor,indent: 85,)
        ],
      ),
    );
  }
}
