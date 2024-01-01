import 'package:trucks/features/get_received_cars/data/models/get_received_cars_response_model.dart';

abstract interface class GetReceivedCarsBaseRemoteDataSource {

  Future<List<GetReceivedCarsResponseModel>>getReceivedCars();
}
