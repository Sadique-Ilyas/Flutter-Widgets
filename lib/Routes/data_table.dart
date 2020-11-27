import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ItemInfo {
  String itemName, itemPrice;

  ItemInfo({this.itemName, this.itemPrice});
}

var items = <ItemInfo>[
  ItemInfo(itemName: "Iphone XS MAX", itemPrice: "\$1000"),
  ItemInfo(itemName: "Iphone 11 PRO MAX", itemPrice: "\$1200"),
  ItemInfo(itemName: "Iphone 11 PRO", itemPrice: "\$1800"),
  ItemInfo(itemName: "Iphone X", itemPrice: "\$2200"),
];

class myDataTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myDataTableState();
  }
}

class myDataTableState extends State<myDataTable> {
  List<ItemInfo> selectedItems = new List<ItemInfo>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table'),
        centerTitle: true,
      ),
      body: Container(
        child: DataTable(
          // Wrap Data Table in SingleChildScrollView to handle overflow
          sortAscending: true,
          columns: <DataColumn>[
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Price")),
          ],
          rows: items
              .map((itemRow) => DataRow(
                      selected: selectedItems.contains(itemRow),
                      onSelectChanged: (bool selected) {
                        onSelectedRow(selected, itemRow);
                        print(selectedItems.length);
                      },
                      cells: [
                        DataCell(Text(itemRow.itemName),
                            showEditIcon: false, placeholder: false, onTap: () {
                          Fluttertoast.showToast(
                              msg: "" + itemRow.itemName,
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        }),
                        DataCell(Text(itemRow.itemPrice),
                            showEditIcon: true, placeholder: false, onTap: () {
                          Fluttertoast.showToast(
                              msg: "" + itemRow.itemPrice,
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        })
                      ]))
              .toList(),
        ),
      ),
    );
  }

  void onSelectedRow(bool selected, ItemInfo itemRow) {
    setState(() {
      if (selected) {
        selectedItems.add(itemRow);
      } else {
        selectedItems.remove(itemRow);
      }
    });
  }
}
