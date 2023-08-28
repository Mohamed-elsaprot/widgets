import 'package:flutter/material.dart';

class Data_Table extends StatelessWidget {
  const Data_Table({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.white);
    const TextStyle style2 = TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.black);

    return Center(
      child: DataTable(
          border: TableBorder.all(
              color: Colors.black,
              width: 2,
              borderRadius: BorderRadius.circular(10),
          ),
          decoration:  BoxDecoration(
              gradient: const LinearGradient(
              colors: [
                Colors.white30,
                Colors.blueGrey,
                Colors.blueGrey,
          ]),
           // color: Colors.black54,
              borderRadius: BorderRadius.circular(10),
          ),
          headingRowHeight: 80,
          columnSpacing: 50,
          headingTextStyle: style2,
          dataTextStyle: style,
          columns: const [
            DataColumn(
                label: Text(
              'Name',
            )),
            DataColumn(
                label: Text(
              'Age',
            )),
            DataColumn(
                label: Text(
              'Job',
            )),
          ],
          rows: const [
            DataRow(
              cells: [
                DataCell(Text('Mohamed')),
                DataCell(Text('22')),
                DataCell(Text('mobile apps dev')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('Ahmed')),
                DataCell(Text('22')),
                DataCell(Text('mobile apps dev')),
              ],
            ),
          ]),
    );
  }
}
