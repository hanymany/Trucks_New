import 'package:trucks/features/get_charged_cars/data/models/get_charged_cars_response_model.dart';

abstract interface class GetChargedCarsBaseRemoteDataSource {

  Future<List<GetChargedCarsResponseModel>>getChargedCars();
}
