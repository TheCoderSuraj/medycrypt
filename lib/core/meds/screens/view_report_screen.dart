import 'package:flutter/material.dart';
import 'package:medycrypt/core/meds/models/medical_report_model.dart';
import 'package:medycrypt/widgets/screen_page_setup.dart';

class ViewReportScreen extends StatefulWidget {
  static const id = "ViewReportScreenId";
  const ViewReportScreen({super.key});

  @override
  State<ViewReportScreen> createState() => _ViewReportScreenState();
}

class _ViewReportScreenState extends State<ViewReportScreen> {
  // MedicalReportModel dummyList[index] = MedicalReportModel.demo();
  List<MedicalReportModel> dummyList =
      List.generate(23, (index) => MedicalReportModel.demo());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medical Reports"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ScreenPageSetup(
          children: [
            DataTable(
              columns: const [
                DataColumn(
                  label: Text("S.N."),
                  numeric: true,
                ),
                DataColumn(
                  label: Text("Name"),
                ),
                DataColumn(
                  label: Text("Gender"),
                ),
                DataColumn(
                  label: Text("Age(yrs)"),
                  numeric: true,
                ),
                DataColumn(
                  label: Text("Weight (KG)"),
                  numeric: true,
                ),
                DataColumn(
                  label: Text("Height (CM)"),
                  numeric: true,
                ),
                DataColumn(
                  label: Text("RBC count"),
                  numeric: true,
                ),
                DataColumn(
                  label: Text("WBC count"),
                  numeric: true,
                ),
                DataColumn(
                  label: Text("Disease Desc"),
                ),
              ],
              rows: List.generate(
                dummyList.length,
                (index) => DataRow(
                  cells: [
                    DataCell(
                      Text(index.toString()),
                    ),
                    DataCell(
                      Text(dummyList[index].name),
                    ),
                    DataCell(
                      Text(dummyList[index].gender),
                    ),
                    DataCell(
                      Text(dummyList[index].age.toString()),
                    ),
                    DataCell(
                      Text(dummyList[index].weight.toString()),
                    ),
                    DataCell(
                      Text(dummyList[index].height.toString()),
                    ),
                    DataCell(
                      Text(dummyList[index].rbcCount.toString()),
                    ),
                    DataCell(
                      Text(dummyList[index].wbcCount.toString()),
                    ),
                    DataCell(
                      Text(dummyList[index].diseaseDesc),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
