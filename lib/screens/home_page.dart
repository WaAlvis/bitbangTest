import 'package:flutter/material.dart';
import 'package:prueba_tienda_deportiva_flutter/utilies/ProductDataSource.dart';
import 'package:prueba_tienda_deportiva_flutter/utilies/custom_widgets/list_view_widget.dart';
import 'package:prueba_tienda_deportiva_flutter/utilies/custom_widgets/open_popup.dart';


class HomePage extends StatelessWidget {
  static String id = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tienda deportiva colombia'),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            openPopup(context);
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
      body: ListViewWidgetCustom(),
    );
  }
}

