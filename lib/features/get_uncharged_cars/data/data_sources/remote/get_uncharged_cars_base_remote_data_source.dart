import 'package:trucks/features/get_uncharged_cars/data/models/get_uncharged_cars_response_model.dart';

abstract interface class GetUnChargedCarsBaseRemoteDataSource {

  Future<List<GetUnChargedCarsResponseModel>>getUnChargedCars();
}
