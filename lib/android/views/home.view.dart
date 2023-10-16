import 'package:contacts/android/styles.dart';
import 'package:contacts/android/views/details.view.dart';
import 'package:contacts/android/views/editor-contact.view.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../models/contact.model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:
            0, //esse elevation é a "sombra" criado no componente. o 0 tira ela
        title: const Text("Meus Contatos"),
        centerTitle: true,
        /** este leading a prop que aparece na esquerda do app bar */
        leading: TextButton(
          /** RaisedButton foi removido e substituído pelo widget ElevatedButton
           * FlatButton foi removido e,  você deve usar o widget TextButton   */
          onPressed: () {
            // Ação a ser executada quando o botão for pressionado
          },
          child: const Icon(
            Icons.search,
            color: primaryColor,
          ),
        ),
        /**este action aparece na direita do app bar */
        // actions: const <Widget>[Text("1"), Text("2")],
      ),
      body: ListView(
        // scrollDirection: Axis.horizontal, sentido da rolagem
        children: [
          ListTile(
              leading: /*item da esquerda colado na margem* */ Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(48),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://avatars.githubusercontent.com/u/20438649?v=4"),
                  ),
                ),
              ),
              title: const Text("Lucas Lanza"),
              subtitle: const Text("18 98989-7777"),
              trailing: /**item da direita colado na margem*/
                  TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailsView()));
                },
                child: const Icon(Icons.chat, color: primaryColor),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(
                model: ContactModel(
                  id: "",
                  name: "",
                  email: "",
                  phone: "",
                ),
              ),
            ),
          );
        },
        backgroundColor: primaryColor,
        child: Icon(
          Icons.add,
          color: accentColor,
        ),
      ),
    );
  }
}
