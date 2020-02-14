import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:teste_app/controllers/exercise_controller.dart';

class ExercisePage extends StatefulWidget {
  @override
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  ExerciseController controller;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    controller = ExerciseController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exercise'),),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(12),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 10,),
                Observer(
                  builder: (_){
                    return TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters:[
                        WhitelistingTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: controller.isOK ? Colors.green : Colors.red)
                        ),
                        helperText: controller.isOK ? null : 'O número é maior que 1000..',
                        helperStyle: controller.isOK ? null : TextStyle(color: Colors.red),
                        hintText: 'Digite um número entre 1 e 1000..',
                        suffixStyle: const TextStyle(color: Colors.green),
                      ),
                      maxLength: 4,
                      onChanged: controller.onChangedNumber,
                    );
                  },
                ),
                SizedBox(height: 10,),
                Observer(builder: (_){
                  return Text('${controller.text}', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),);
                }),
                SizedBox(height: 10,),
                Observer(
                  builder: (_) {
                    return Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            child: Text('Enviar', style: TextStyle(color: Colors.white, fontSize: 17),),
                            onPressed: controller.isOK && controller.numberN.trim().length != 0 ? () => controller.sendNumber() : null,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: RaisedButton(
                            child: Text('Limpar', style: TextStyle(color: Colors.white, fontSize: 17),),
                            onPressed: () {
                              controller.clear();
                              _formKey.currentState.reset();
                            },
                            color: Colors.green,
                          ),
                        )
                      ],
                    );
                  },
                ),
                SizedBox(height: 20,),
                Observer(builder: (_){
                  return controller.numberSended > 0 ? Column(
                    children: <Widget>[
                      Text('Falta(m) ${controller.numberSended} número(s)', style: TextStyle(fontSize: 17, fontStyle: FontStyle.italic),),
                      SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                          ),
                          hintText: 'Digite ${controller.numberSended} número(s) entre -1000 e 1000..',
                          suffixStyle: const TextStyle(color: Colors.green),
                        ),
                        maxLength: 5,
                        onChanged: controller.onChangedNumberK,
                      ),
                      RaisedButton.icon(
                        onPressed: controller.enabledButton ? controller.addItemList : null,
                        icon: Icon(Icons.add, color: Colors.white,),
                        label: Text('Adicionar', style: TextStyle(color: Colors.white, fontSize: 17),),
                      ),
                    ],
                  ) : Container();
                },),
                Observer(builder: (_){
                  return Expanded(
                    child: ListView.separated(
                      itemCount: controller.listNumbers.length,
                      itemBuilder: (context, idx) {
                        return ListTile(title: Text('${controller.listNumbers[idx]}'),);
                      },
                      separatorBuilder: (context, idx) => Divider(color: Colors.grey,),
                    ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
