import 'package:milestone_project/core/models/requests/base_request_params.dart';

abstract class HomeRepository {
  Future<dynamic> getListItem(BaseParams req);
}
