import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router_navigation/pages/details_page.dart';
import 'package:go_router_navigation/pages/home_page.dart';
import 'package:go_router_navigation/pages/main_page.dart';
import 'package:go_router_navigation/pages/profile_page.dart';
import 'package:go_router_navigation/pages/settings_page.dart';

class ApplicationRouter {

static final router = GoRouter(
  routes: [
      ShellRoute(
        builder: (context, state, child) {
          return MainPage(child: child);
        },
        routes: [
          GoRoute(
                path: '/',
                builder: (BuildContext context, GoRouterState state) {
                  return const HomePage();
                },
                routes:  [
                  GoRoute(
                    path: 'details/:id',
                    builder: (BuildContext context, GoRouterState state) {
                      final params = state.pathParameters['id'];
                      return DetailsPage(id: params,);
                    },
                  ),
                ],
              ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsPage(),
          ),
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                      key: state.pageKey,
                      child: const ProfilePage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                          );
                      },
                    );
              }
          )
        ])
  ],
);
}


