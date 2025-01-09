import 'package:ambulance_booking/Screens/Driver_Screens/Hero_Screens/SOS/SOS_Screen.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/Hero_Screens/History/History_Screen.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/Hero_Screens/Home/Home_Screen.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/Secondary_Screens/Request/acceptRequest/accept_request.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/Secondary_Screens/UserData/profile/Profile_Screen.dart';
import 'package:ambulance_booking/Screens/Driver_Screens/UI_Components/Bottom_NavBar.dart';
import 'package:go_router/go_router.dart';

GoRouter appRouter = GoRouter(routes: [
  StatefulShellRoute.indexedStack(
    builder: (context, state, shell) => BottomNavbar(shell: shell),
    branches: [
      // Branch for Home and related pages
      StatefulShellBranch(routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => HomeScreen(
            route: '/acceptrequest',
          ),
        ),
        GoRoute(
          path: "/acceptrequest",
          builder: (context, state) => AcceptRequest(),
        ),
        GoRoute(
          path: "/profile",
          builder: (context, state) => ProfileScreen(),
        ),
      ]),
      // Branch for SOS
      StatefulShellBranch(routes: [
        GoRoute(
          path: "/sos",
          builder: (context, state) => SosScreen(),
        )
      ]),
      // Branch for History
      StatefulShellBranch(routes: [
        GoRoute(
          path: "/history",
          builder: (context, state) => HistoryScreen(),
        )
      ]),
    ],
  ),
]);


