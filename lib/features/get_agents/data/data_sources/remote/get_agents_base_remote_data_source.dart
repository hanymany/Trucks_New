import 'package:trucks/features/get_agents/data/models/get_agents_response_model.dart';

abstract interface class GetAgentsBaseRemoteDataSource {

  Future<List<GetAgentsResponseModel>>getAgents();
}
