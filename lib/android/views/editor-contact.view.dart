import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel model;

  EditorContactView({required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.id == "" ? "Novo Contato" : "Editar Contato"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        //este objeto singlechild é como se fosse um listview.
        //mas com um unico filho para o teclado nao espremer os dados da tela
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                initialValue: model.name,
                onSaved: (val) {
                  //toda vez que o form é salvo o valor do input é colocado no model
                  model.name = val!;
                },
              ),
              TextFormField(
                initialValue: model.phone,
                onSaved: (val) {
                  model.phone = val!;
                },
              ),
              TextFormField(
                initialValue: model.email,
                onSaved: (val) {
                  model.email = val!;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.save,
                    color: Theme.of(context).accentColor,
                  ),
                  label: Text(
                    "Salvar",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
