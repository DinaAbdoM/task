import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/presentation/companies/companies_cubit.dart';
import 'package:task/features/presentation/companies/companies_state.dart';
import 'package:task/features/screens/no_results_screen.dart';
import 'package:task/features/screens/widgets/constants.dart';
import 'package:task/features/screens/widgets/search_app_bar.dart';
import 'package:task/features/screens/widgets/search_content.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isMenuOpen = false;
  TextEditingController searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  static const int itemsPerPage = 6;
  int _currentMaxItems = 0;
  final bool _isLoadingMore = false;
  final bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    searchController.addListener(_performSearch);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    searchController.removeListener(_performSearch);
    searchController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    //   if (_scrollController.offset >=
    //           _scrollController.position.maxScrollExtent * 0.8 &&
    //       !_isLoadingMore &&
    //       _currentMaxItems < _filteredProperties.length) {
    //     _loadMoreItems();
    //   }
  }

  void loadMoreItems() {
    // setState(() {
    //   _isLoadingMore = true;
    // });

    // // Future.delayed(const Duration(milliseconds: 1000), () {
    // //   setState(() {
    // //     _currentMaxItems += itemsPerPage;
    // //     if (_currentMaxItems > _filteredProperties.length) {
    // //       _currentMaxItems = _filteredProperties.length;
    // //     }
    // //     _isLoadingMore = false;
    // //   });
    // // });
  }

  void _performSearch() {
    // final query = searchController.text.toLowerCase();

    // if (query.isEmpty) {
    //   _filteredProperties = mockProperties;
    // } else if (query.contains('لايوجد')) {
    //   _filteredProperties = [];
    // } else {
    //   _filteredProperties = mockProperties.where((property) {
    //     return property.title.toLowerCase().contains(query) ||
    //         property.subtitle.toLowerCase().contains(query);
    //   }).toList();
    // }

    // setState(() {
    //   _isSearching = query.isNotEmpty;
    //   _currentMaxItems = _filteredProperties.length > itemsPerPage
    //       ? itemsPerPage
    //       : _filteredProperties.length;
    // });
  }

  void toggleView() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SearchAppBar(
            searchController: searchController,
            isListView: isMenuOpen,
            onToggleView: toggleView,
            onPerformSearch: _performSearch,
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              padding: EdgeInsets.symmetric(horizontal: kPadding.w),
              child: BlocBuilder<CompaniesCubit, CompaniesState>(
                builder: (context, state) {
                  if (state is FilterCompaniesLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  Widget scrollableContent;
                  if (_isSearching || state is! FilterCompaniesSuccess) {
                    if (state is FilterCompaniesError) {
                      return Center(child: Text((state).error));
                    }
                    scrollableContent = NoResultsScreen(
                      searchController: searchController,
                    );
                  } else {
                    _currentMaxItems = (state).filterEntity.companies.length;
                    scrollableContent = SearchContent(
                      isListView: isMenuOpen,
                      isLoadingMore: _isLoadingMore,
                      currentMaxItems: _currentMaxItems,
                      filteredProperties: (state).filterEntity.companies,
                    );
                  }

                  return scrollableContent;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
