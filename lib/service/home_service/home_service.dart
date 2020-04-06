import 'package:flutterapp/service/http_request.dart';
import 'home_service_config.dart';

class HomeService {
	static void movieTop250(Map<String, dynamic> params) async {
//		final movieUrl = '/movie/top250?start=0&count=20&apikey=0df993c66c0c636e29ecbb5344252a4a';
		final movieUrl = HomeServiceConfig.MOVIE_URL;

		final result = await HttpRequest.request(movieUrl, params: params);
		final subjects = result['subjects'];
	}
}