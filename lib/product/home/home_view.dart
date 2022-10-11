import 'package:flutter/material.dart';
import 'package:flutter_infpage/product/home/home_viewmodel.dart';
import '../../core/component/custom_field.dart';
import '../../core/component/text_button.dart';
import '../../core/service/dialog_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String _appbarTitle = 'KAYIT EKRANI';
  final String _alertHeader = 'Kişi Kayıt';
  HomeViewmodel viewmodel = HomeViewmodel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _homeAppbar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {
            DialogService().show(
              context,
              AlertDialog(
                title: Text(_alertHeader),
                content: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      viewmodel.items.length,
                      (index) => CustomField(
                        controller: viewmodel.items[index].controller,
                        errorText: viewmodel.items[index].errorText,
                        labelText: viewmodel.items[index].labelText,
                        onChanged: (val) {
                          String? data = viewmodel.checkData(val);
                          setState(() {
                            viewmodel.items[index].errorText = data;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                actions: [
                  CustomButton(title: 'IPTAL', onPressed: () => print("IPTAL")),
                  CustomButton(title: 'KAYDET', onPressed: () => print("KAYDET")),
                ],
              ),
            );
          });
        },
      ),
    );
  }

  AppBar _homeAppbar() {
    return AppBar(backgroundColor: Colors.blueGrey, centerTitle: true, title: Text(_appbarTitle, style: const TextStyle(color: Colors.amberAccent, fontSize: 20)));
  }
}
