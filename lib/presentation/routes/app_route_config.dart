
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sahitya_application/presentation/landing_page/landing_page.dart';
import 'package:sahitya_application/presentation/pages/store.dart';
import 'package:sahitya_application/presentation/pages/draft.dart';
import 'package:sahitya_application/presentation/routes/app_route_constants.dart';
import 'package:sahitya_application/utils/sections/upcommingevents.dart';

import '../pages/addsahitya.dart';

import '../pages/home.dart';
import '../pages/profile.dart';

class SahityaRouter {
GoRouter router = GoRouter(
  routes: [
    
    GoRoute(
      name: SahityaAppRouteConstants.landing,
      path: '/',
      pageBuilder: (context, state) {
        return MaterialPage(child: LandingPage());
      },
    ),

    
    GoRoute(
      name: SahityaAppRouteConstants.home,
      path: '/home',
      pageBuilder: (context, state) {
        return MaterialPage(child: Home());
      },
    ),

    

     GoRoute(
      name: SahityaAppRouteConstants.profile,
      path: '/profile',
      pageBuilder: (context, state) {
        return MaterialPage(child: Profile());
      },
      ),

    //  GoRoute(
    //   name: SahityaAppRouteConstants.addsahitya,
    //   path: '/addsahitya',
    //   pageBuilder: (context, state) {
    //     return MaterialPage(child: AddSahitya());
    //   },
    //   ),
      
     GoRoute(
      name: SahityaAppRouteConstants.draft,
      path: '/draft',
      pageBuilder: (context, state) {
        return MaterialPage(child: Draft());
      },
      ),
     
     GoRoute(
      name: SahityaAppRouteConstants.store,
      path: '/store',
      pageBuilder: (context, state) {
        return MaterialPage(child: Store());
      },
      ),
    GoRoute(
      name: SahityaAppRouteConstants.upcommingevents,
      path: '/UpComming_Events',
      pageBuilder: (context, state) {
        return MaterialPage(child: UpComming_Events());
      },
      ),

     
  ],
  errorPageBuilder: (context, state) {
        return MaterialPage(child: Scaffold());
      },
);
}