import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/di/dependency_injection.dart';
import 'package:task/core/routing/routes.dart';
import 'package:task/features/presentation/companies/companies_cubit.dart';
import 'package:task/features/screens/homeView.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<CompaniesCubit>()..filterCompanies(),
            child: const SearchScreen(),
          ),
        );
      case Routes.filterview:
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('مسار غير معروف'))),
        );
    }
  }
}
