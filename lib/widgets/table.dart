import 'package:flutter/material.dart';

class Table_Widget extends StatelessWidget {
  const Table_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: DefaultTextStyle(
              style: const TextStyle(fontSize: 20),
              child: SizedBox(
                width: 300,
                child: Table(
                  border: TableBorder.all(color: Colors.white54, width: 2),
                  children: [
                    const TableRow(
                        decoration: BoxDecoration(color: Colors.black54),
                        children: [
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Num'),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Title 1'),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Title 2'),
                            ),
                          ),
                        ]),
                    ...List.generate(
                      50,
                      (index) => TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text('${index + 1}'),
                            ),
                          ),
                          const TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text('Cell 1'),
                            ),
                          ),
                          const TableCell(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text('Cell 2'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
