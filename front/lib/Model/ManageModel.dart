import 'package:front/Model/FactorModel.dart';
import 'TaskModel.dart';

class ManageModel {
  final String stdTaskCd;
  final String stdRiskFactorSeq;
  final String stdSafetyMeasure;

  ManageModel(this.stdTaskCd, this.stdRiskFactorSeq, this.stdSafetyMeasure);

  factory ManageModel.formJson(Map<String, dynamic> json){
    return ManageModel(json["stdTaskCd"], json["stdRiskFactorSeq"].toString(), json["stdSafetyMeasure"]);
  }

  static List<ManageModel> fromJsonList(List<dynamic> list){
    return list.map((e) => ManageModel.formJson(e)).toList();
  }

  bool isUnderFactor(FactorModel model) {
    return stdRiskFactorSeq == model.stdRiskFactorSeq;
  }

  bool isUnderTask(TaskModel model) {
    return stdTaskCd == model.stdTaskCd;
  }

  @override
  String toString() => stdSafetyMeasure;
}