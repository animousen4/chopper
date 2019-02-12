import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:chopper/src/interceptor.dart';
import 'definition.dart';

main() async {
  final chopper = ChopperClient(
    baseUrl: "http://localhost:8000",
    services: [
      // the generated service
      MyService.create()
    ],
    converter: JsonConverter(),
  );

  final myService = chopper.service<MyService>(MyService);

  final response = await myService.getMapResource("1");
  print(response.body);

  final list = await myService.getListResources();
  print(list.body);

  chopper.dispose();
}

class _Converter implements Converter {
  @override
  FutureOr<Request> convertRequest(Request request) {
    // TODO: implement convertRequest
    return null;
  }

  @override
  FutureOr<Response<ConvertedResponseType>>
      convertResponse<ConvertedResponseType>(Response response) {
    // TODO: implement convertResponse
    return null;
  }
}
