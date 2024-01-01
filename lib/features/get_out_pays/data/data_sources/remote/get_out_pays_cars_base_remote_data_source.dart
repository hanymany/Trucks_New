import 'package:trucks/features/get_out_pays/data/models/get_out_pays_cars_response_model.dart';

abstract interface class GetOutPaysCarsBaseRemoteDataSource {

  Future<List<GetOutPaysCarsResponseModel>>getOutPaysCars();
}
