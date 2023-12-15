import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vishnumate/utils/routes/routes.dart';
import 'package:vishnumate/view_model/login_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sp = await SharedPreferences.getInstance();
  final String languageCode = sp.getString('language_code') ?? 'en';
  runApp(MyApp(locale: languageCode));
}

class MyApp extends StatelessWidget {
  final String locale;
  const MyApp({Key? key, required this.locale}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LoginViewModel()),
        ],
        child: ScreenUtilInit(
          designSize: Size(360, 800),
          child: MaterialApp(
            title: 'EV Charging Application',
            theme: ThemeData(
              colorScheme:
                  ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            // initialRoute: RoutesName.checkpoints,
            onGenerateRoute: Routes.generateRoute,
          ),
        ));
  }
}
