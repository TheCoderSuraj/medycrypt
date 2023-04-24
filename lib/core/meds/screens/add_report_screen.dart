import 'package:flutter/material.dart';
import 'package:medycrypt/utils/constants.dart';
import 'package:medycrypt/widgets/action_button.dart';
import 'package:medycrypt/widgets/designed_container.dart';
import 'package:medycrypt/widgets/input_field.dart';
import 'package:medycrypt/widgets/screen_page_setup.dart';

class AddReportScreen extends StatefulWidget {
  static const id = "AddReportScreenId";
  const AddReportScreen({super.key});

  @override
  State<AddReportScreen> createState() => _AddReportScreenState();
}

class _AddReportScreenState extends State<AddReportScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _hieghtController = TextEditingController();
  final TextEditingController _rbcController = TextEditingController();
  final TextEditingController _wbcController = TextEditingController();
  final TextEditingController _diseaseController = TextEditingController();
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Report"),
      ),
      body: ScreenPageSetup(
        children: [
          InputField(
            labelText: 'Name',
            controller: _nameController,
            keyboardType: TextInputType.name,
          ),
          const SizedBox(height: 15),
          ReportElement(
            controller: _ageController,
            title: "Age: ",
            hint: "23",
            tailing: "Years.",
          ),
          const SizedBox(height: 15),
          ReportElement(
            controller: _weightController,
            title: "Weight: ",
            hint: "43",
            tailing: "KG.",
          ),
          const SizedBox(height: 15),
          ReportElement(
            controller: _rbcController,
            title: "RBC count: ",
            hint: "43",
          ),
          const SizedBox(height: 15),
          ReportElement(
            controller: _wbcController,
            title: "WBC count: ",
            hint: "43",
          ),
          const SizedBox(height: 15),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ActionButton(
                widthRatio: 0.35,
                title: 'Cancel',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              ActionButton(
                widthRatio: 0.35,
                title: 'Add',
                onPressed: () {
                  //Todo:  Logic to add report to cloud
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ReportElement extends StatelessWidget {
  const ReportElement({
    super.key,
    required TextEditingController controller,
    required this.title,
    this.tailing,
    this.hint,
  }) : _ageController = controller;

  final TextEditingController _ageController;
  final String title;
  final String? tailing;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return DesignedContainer(
      child: Row(
        children: [
          Text(
            title,
            style: kSemiBoldTextStyle,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: InputField(
              // labelText: 'Age',
              hintText: hint,
              controller: _ageController,
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(width: 15),
          if (tailing != null)
            Text(
              tailing!,
              style: kSemiBoldTextStyle,
            ),
        ],
      ),
    );
  }
}
