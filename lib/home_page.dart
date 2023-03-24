import 'package:flutter/material.dart';
import 'app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    //scaffold é para estilização
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favo Inovação'),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const CustomSwitch(),
          ],
        ),
        body: SizedBox(
          //preencher todo espaço
          width: double.infinity,
          height: double.infinity,
          child: Column(
            //alinhamento na coluna
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            //filhos -  vai colocar widgets enfileirados
            children: [
              Text('Contador: $counter'),
              // ignore: prefer_const_constructors
              CustomSwitch(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              //setState atualiza o dado em tempo real de exibição
              setState(() {
                counter++;
              });
            }));
  }
}

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() {
    return CustomSwitchState();
  }
}

class CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: (value) {
          setState(() {
            AppController.instance.changeTheme();
          });
        });
  }
}
