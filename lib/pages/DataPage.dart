import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: DataTable(
        border: TableBorder.all(),
        headingTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        columns: [
            DataColumn(label: Text('roll no'),),
            DataColumn(label: Text('name'),),
            DataColumn(label: Text('course'),),
        ],
        
        rows: [
            DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Udit ')),
                DataCell(Text('Btech')),
            ]),
        
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Pawan ')),
                DataCell(Text('Btech')),
            ]),
        
              DataRow(cells: [
                DataCell(Text('3')),
                DataCell(Text('Prashant ')),
                DataCell(Text('Btech')),
            ]),
        ],
        ),
      ),
    );
  }
}