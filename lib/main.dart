import 'package:flutter/material.dart';
import 'calculadora.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 45, 0, 142)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Calculadora'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container( ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                      //  alignment: Alignment.center,
                      //  color: Colors.red,
                      //  child: Text('primeira coluna'),
                      ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 224, 224, 224),
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 10,
                            offset: Offset(5, 5),
                          )
                        ]),
                    child: const Calculadora(),
                  ),
                ),
                Expanded(
                  child: Container(
                      //  alignment: Alignment.center,
                      //  color: Colors.red,
                      //  child: Text('terceira coluna'),
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              //alignment: Alignment.center,
              //color: Colors.blue,
              //child: Text('Layout inferior'),
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        tooltip: 'Incremente',
        child: const Icon(Icons.add_alarm),
      ),
    );
  }
}
