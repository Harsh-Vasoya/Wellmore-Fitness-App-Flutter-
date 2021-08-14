import 'package:diet_app/setmealsscreen.dart';
import 'package:flutter/material.dart';
import 'breakfastdata.dart';

class BreakFast extends StatefulWidget {

  BreakFast() : super();

  @override
  BreakFastState createState() => BreakFastState();
}

class BreakFastState extends State<BreakFast> {
  var _textController = new TextEditingController();
  late List<BreakfastData> breakfastdatas;
  late List<BreakfastData> selectedBreakfastdatas;
  bool sort=false;


  @override
  void initState() {
   sort = false;
    selectedBreakfastdatas = [];
    breakfastdatas = BreakfastData.getBreakfastData();
    super.initState();
  }

  onSortColumn(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        breakfastdatas.sort((a, b) => a.Name.compareTo(b.Name));
      } else {
        breakfastdatas.sort((a, b) => b.Name.compareTo(a.Name));
      }
    }
  }

  onSelectedRow(bool selected, BreakfastData breakfastdata ) async {
    setState(() {
      if (selected) {
        selectedBreakfastdatas.add(breakfastdata);
      } else {
        selectedBreakfastdatas.remove(breakfastdata);
      }
    });
  }

  deleteSelected() async {
    setState(() {
      if (selectedBreakfastdatas.isNotEmpty) {
        List<BreakfastData> temp = [];
        temp.addAll(selectedBreakfastdatas);
        for (BreakfastData breakfastdata in temp) {
          breakfastdatas.remove(breakfastdata);
          selectedBreakfastdatas.remove(breakfastdata);
        }
      }
    });
  }

@override
  DataRow getRow(int index){
    final value = selectedBreakfastdatas[index];
    return DataRow.byIndex(index: index,
    cells: <DataCell>[
      DataCell(Text('${value.Name}')),
    ],
    );
  }
  @override
  int get rowCount => breakfastdatas.length;


  SingleChildScrollView dataBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        sortAscending: sort,
        sortColumnIndex: 0,
        columns: [
          DataColumn(
              label: Text("NAME"),
              numeric: false,
              tooltip: "This is First Name",
              onSort: (columnIndex, ascending) {
                setState(() {
                  sort = !sort;
                });
                onSortColumn(columnIndex, ascending);
              }),
          DataColumn(
            label: Text("Protein"),
            numeric: false,
            tooltip: "This is Protein",
          ),
          DataColumn(
            label: Text("Carbs"),
            numeric: false,
            tooltip: "This is Carbs",
          ),
          DataColumn(
            label: Text("Fats"),
            numeric: false,
            tooltip: "This is Fats",
          ),
          DataColumn(
            label: Text("Calories"),
            numeric: false,
            tooltip: "This is Calories",
          ),
        ],
        rows: breakfastdatas
            .map(
              (breakfastdata) => DataRow(
              selected: selectedBreakfastdatas.contains(breakfastdata),
              onSelectChanged: (b) {
                print("Onselect");
                onSelectedRow(b!, breakfastdata);
              },
              cells: [
                DataCell(
                  Text(breakfastdata.Name),
                  onTap: () {
                    print('Selected ${breakfastdata.Name}');
                  },
                ),
                DataCell(
                  Text(breakfastdata.Protein),
                ),
                DataCell(
                  Text(breakfastdata.Carbs),
                ),
                DataCell(
                  Text(breakfastdata.Fats),
                ),
                DataCell(
                  Text(breakfastdata.Calories),
                ),
              ]),
        )
            .toList(),
      ),
    );
  }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Add Breakfast"),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Expanded(
                child: dataBody(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: OutlinedButton(
                      child: Text('DELETE SELECTED'),
                      onPressed: selectedBreakfastdatas.isEmpty
                          ? null
                          : () {
                        deleteSelected();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: OutlinedButton(
                      child: Text('ADD SELECTED'),
                      onPressed: () {
                        @override
                        DataRow getRow(int index){
                          final value = selectedBreakfastdatas[index];
                          return DataRow.byIndex(index: index,
                            cells: <DataCell>[
                              DataCell(Text('${value.Name}')),
                              
                            ],
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }
  }
