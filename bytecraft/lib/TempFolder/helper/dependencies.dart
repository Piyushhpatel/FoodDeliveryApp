import 'package:bytecraft/TempFolder/controllers/popular_product_controller.dart';
import 'package:bytecraft/TempFolder/data/api/api_client.dart';
import 'package:bytecraft/TempFolder/data/repository/popular_product_repo.dart';
import 'package:bytecraft/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<void> init() async {
  //Api Client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //Repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

  Get.find<PopularProductController>().getPopularProductList();
}
