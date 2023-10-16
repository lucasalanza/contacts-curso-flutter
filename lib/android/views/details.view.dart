import 'package:contacts/android/views/address.view.dart';
import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'editor-contact.view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://avatars.githubusercontent.com/u/20438649?v=4"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Lucas Lanza",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "(18) 98110-2937",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            "Lucasalanza@gmail.com",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Ink(
                decoration: ShapeDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.phone,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              Ink(
                decoration: ShapeDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.email,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              Ink(
                decoration: ShapeDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_enhance,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Text(
              "Endereco",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            subtitle:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Rua do Desenvolvedor, 256",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
              Text(
                "Álvares Machado / SP",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              ),
            ]),
            isThreeLine: true,
            trailing: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddressView(),
                  ),
                );
              },
              child: Icon(
                Icons.pin_drop,
                color: Theme.of(context).primaryColor,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorContactView(
                model: ContactModel(
                  id: "1",
                  name: "André Baltieri",
                  email: "andre@balta.io",
                  phone: "11 97214-2255",
                ),
              ),
            ),
          );
        },
        child: Icon(
          Icons.edit,
          color: Theme.of(context).secondaryHeaderColor,
        ),
      ),
    );
  }
}
