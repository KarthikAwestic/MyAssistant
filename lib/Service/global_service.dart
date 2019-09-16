import 'package:get_it/get_it.dart';
import 'package:my_assistant/Service/prefrence_service.dart';


GetIt getIt = GetIt.instance;

Future setupLocator() async {  
  // Stroing Prefrence Instance
  var instance = await Prefrence.getInstance();
  return getIt.registerSingleton<Prefrence>(instance); 
}