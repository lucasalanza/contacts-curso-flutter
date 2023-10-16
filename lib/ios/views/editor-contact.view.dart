// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:contacts/models/contact.model.dart';
import 'package:flutter/cupertino.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel model;

  EditorContactView({required this.model});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: model.name == ""
                ? Text("Novo Contato")
                : Text("Editar Contato"),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                child: Column(
                  children: <Widget>[
                    CupertinoTextField(
                      placeholder: model.name != "" ? model.name : "Nome",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CupertinoTextField(
                      placeholder: model.phone != "" ? model.phone : "Telefone",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CupertinoTextField(
                      placeholder: model.email != "" ? model.email : "E-mail",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: CupertinoButton.filled(
                        onPressed: () {},
                        child: Text(
                          "Salvar",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
