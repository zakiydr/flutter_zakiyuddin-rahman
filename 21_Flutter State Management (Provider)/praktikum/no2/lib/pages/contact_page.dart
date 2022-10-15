import 'package:state_provider2/models/getcontacts.dart';
import 'package:flutter/material.dart';
import 'package:state_provider2/models/contact.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
    required this.contact,
  }) : super(key: key);
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final contactItems = contact.contacts;
    return Container(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        itemCount: contactItems.length,
        itemBuilder: (context, index) {
          GetContact item = contactItems[index];
          return Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16, right: 16),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person_pin,
                    size: 40,
                    color: Colors.grey[600],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        item.phone,
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    contact.delete(
                      index,
                    );
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
      ),
    );
  }
}
