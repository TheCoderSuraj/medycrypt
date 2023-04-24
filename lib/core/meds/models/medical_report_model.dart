class MedicalReportModel {
  MedicalReportModel({
    required this.name,
    required this.gender,
    required this.age,
    required this.weight,
    required this.rbcCount,
    required this.wbcCount,
    required this.height,
    required this.diseaseDesc,
  });
  late String name;
  late String gender;
  late int age;
  late int weight;
  late int rbcCount;
  late int wbcCount;
  late int height;
  late String diseaseDesc;

  MedicalReportModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    gender = json['gender'];
    age = json['age'];
    weight = json['weight'];
    rbcCount = json['rbcCount'];
    wbcCount = json['wbcCount'];
    height = json['height'];
    diseaseDesc = json['diseaseDesc'];
  }
  MedicalReportModel.demo() {
    name = "mrno";
    gender = "male";
    age = 20;
    weight = 57;
    rbcCount = 12;
    wbcCount = 32;
    height = 132;
    diseaseDesc = "this is desc which describes ...";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['gender'] = gender;
    data['age'] = age;
    data['weight'] = weight;
    data['rbcCount'] = rbcCount;
    data['wbcCount'] = wbcCount;
    data['height'] = height;
    data['diseaseDesc'] = diseaseDesc;
    return data;
  }
}

// {
//   "name":"name",
//   "gender":"male",
//   "age":13,
//   "weight":13,
//   "rbcCount":12,
//   "wbcCount":31,
//   "height":32,
//   "diseaseDesc":"ew"
// }