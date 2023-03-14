import 'package:milestone_project/core/models/requests/base_request_params.dart';

class NutritionParams extends BaseParams {
  final String nutritionType;
  final String inGr;

  NutritionParams({
    required this.nutritionType,
    required this.inGr,
  });

  Map<String, dynamic> toMap() {
    return {
      'nutritionType': this.nutritionType,
      'inGr': this.inGr,
      'app_id': this.appId,
      'app_key': this.appKey,
    };
  }
}
