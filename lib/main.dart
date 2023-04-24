import 'package:flutter/material.dart';
import 'package:single_state_provider_man/Provider/countprovider.dart';
import 'package:provider/provider.dart';
import 'Provider/sliderprovider.dart';
import 'Utils/route.dart';
import 'Utils/routename.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Multi-Provider State
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => MultiplesProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.mySlider,
        onGenerateRoute: Routes.generatesRoute,
      ),
    );

   //Single Provider State
  //  return  ChangeNotifierProvider(
  //     create: (_) => CountProvider(),
  //       child: const MaterialApp(
  //         debugShowCheckedModeBanner: false,
  //         initialRoute: RoutesName.mySlider,
  //         onGenerateRoute: Routes.generatesRoute,
  //       )
  //   );
  }
}
