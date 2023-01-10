import 'package:flutter/material.dart';
import '../../data/repository/contacts_repository.dart';

class DraggableScrollableSheetScreen extends StatefulWidget {
  const DraggableScrollableSheetScreen({super.key});

  @override
  State<DraggableScrollableSheetScreen> createState() =>
      _DraggableScrollableSheetScreenState();
}

class _DraggableScrollableSheetScreenState
    extends State<DraggableScrollableSheetScreen> {
  //List<Contacts> contatoSelecionadio = [];
  String nomeSelecionado = '';
  String imageSelecionado = '';
  @override
  Widget build(BuildContext context) {
    final contacts = ContactsRepository.usersContacts;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffD6D6D6),
        title: const Text(
          'Draggable Scroll Sheet',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'Lista de contatos',
                      ),
                    ),
                    Container(
                        color: Colors.transparent,
                        width: 200,
                        height: 200,
                        child: CircleAvatar(
                          backgroundColor: const Color(0xffD6D6D6),
                          backgroundImage: NetworkImage(imageSelecionado),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        nomeSelecionado,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: .3,
              minChildSize: .15,
              maxChildSize: .5,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white60,
                  ),
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: contacts.length,
                    itemBuilder: (context, index) {
                      final contacts =
                          ContactsRepository.usersContacts.elementAt(index);
                      return ListTile(
                        //selected: contatoSelecionadio.contains(contacts),
                        //selectedColor: Colors.red,
                        onTap: () {
                          setState(() {
                            nomeSelecionado = contacts.name;
                            imageSelecionado = contacts.imageUrl;
                          });
                          // (contatoSelecionadio.contains(contacts))
                          //     ? contatoSelecionadio.remove(contacts)
                          //     : contatoSelecionadio.add(contacts);
                          // debugPrint(contacts.name);
                        },
                        leading: CircleAvatar(
                          backgroundColor: const Color(0xffD6D6D6),
                          backgroundImage: NetworkImage(
                              contacts.imageUrl.toString(),
                              scale: 10),
                        ),
                        title: Text(contacts.name),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
