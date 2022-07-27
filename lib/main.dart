import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackathon/layout/home_screen.dart';
import 'package:hackathon/modules/login/login_screen.dart';
import 'package:hackathon/shared/components/constantse.dart';
import 'package:hackathon/shared/cubit/cubit.dart';
import 'package:hackathon/shared/network/local/cache_helper.dart';
import 'package:hackathon/shared/network/remote/dio_helper.dart';

import 'modules/adaption/adaption_feed_dogs_screen.dart';
import 'modules/adaption/info_about_shared_by_screen.dart';
import 'modules/filter/filter_screen.dart';
import 'modules/help_your_friend/help_your_friend_screen.dart';
import 'modules/request/request_screen.dart';
import 'modules/sign_up/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DioHelper.init();
  await CacheHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit()
        ..getFirstSectionData()
        ..getAboutInfoData()
        ,
      child: Builder(builder: (context) {
        token = CacheHelper.getData(key: 'token');
        Widget widget;
        if (token == null) {
          widget = const LoginScreen();
        } else {
          widget = const Home();
        }
        return MaterialApp(
          home: widget,
        );
      }),
    );
  }
}
//
// class AppRoot extends StatefulWidget {
//   const AppRoot({Key? key}) : super(key: key);
//
//   @override
//   State<AppRoot> createState() => _AppRootState();
// }
//
// class _AppRootState extends State<AppRoot> {
//   Offset pointer = Offset.zero;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => MainCubit()
//     ,
//       child: Builder(
//         builder: (context) {
//           token = CacheHelper.getData(key: 'token');
//           Widget widget;
//           if (token == null) {
//             widget = const LoginScreen();
//           } else {
//             widget = const Home();
//           }
//           return MaterialApp(
//             home: MouseRegion(
//               cursor: SystemMouseCursors.none,
//               onExit: (eve) {
//                 setState(() {
//                   pointer = eve.position;
//                 });
//               },
//               onEnter: (eve) {
//                 setState(() {
//                   pointer = eve.position;
//                 });
//               },
//               onHover: (eve) {
//                 setState(() {
//                   pointer = eve.position;
//                 });
//               },
//               child: Stack(
//                 children: [
//                   widget,
//                   // LoginScreen(),
//                   Positioned(
//                     left: pointer.dx,
//                     top: pointer.dy,
//                     child: const Image(
//                       height: 10,
//                       width: 10,
//                       image: AssetImage('assets/images/icon_legs_brown.png'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             debugShowCheckedModeBanner: false,
//           );
//         },
//       ),
//     );
//   }
// }
