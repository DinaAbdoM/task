import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/di/dependency_injection.dart';
import 'package:task/core/routing/routes.dart';
import 'package:task/features/presentation/cubits/companies/companies_cubit.dart';
import 'package:task/features/presentation/cubits/filter/filter_cubit.dart';
import 'package:task/features/presentation/screens/search_screen.dart';

abstract class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeView:
        // return MaterialPageRoute(
        //   builder: (_) => BlocProvider(
        //     create: (context) =>
        //         getIt<CompaniesCubit>()..filterCompanies(),
        //     child: SearchScreen(),
        //   ),
        // );return MultiBlocProvider(
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<CompaniesCubit>()..filterCompanies(),
              ),
              BlocProvider(create: (_) => getIt<FilterCubit>()..loadFilters()),
            ],
            child: const SearchScreen(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
