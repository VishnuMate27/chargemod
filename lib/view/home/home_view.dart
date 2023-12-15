import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vishnumate/consts/colors.dart';
import 'package:vishnumate/utils/routes/routes_name.dart';
import 'package:vishnumate/view/home/widgets/custom_bottom_navbar.dart';
import 'package:vishnumate/view/home/widgets/past_visited_places_card.dart';
import 'package:vishnumate/view/home/widgets/search_field.dart';
import 'package:vishnumate/view/home/widgets/tourist_place_card.dart';
import 'package:vishnumate/view_model/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg"),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        body: Center(child: Text("Home Screen")),
        bottomNavigationBar: CustomBottomNavbar(),
      ),
    );
  }
}

// Stack(
// children: [
// Image.asset('assets/images/map.png'),
// Scaffold(
// //Custom Bottom Navbar
// bottomNavigationBar: CustomBottomNavbar(),
// ),
// ],
// )
