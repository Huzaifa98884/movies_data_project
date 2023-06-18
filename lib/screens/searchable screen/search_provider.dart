import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/search_cubit.dart';
import '../../cubit/search_done_cubit.dart';
import '../../cubit/total_searched_results.dart';
import 'before_search_screen.dart';

class SearchProvider extends StatelessWidget {
  const SearchProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SearchCubit(),
        ),
        BlocProvider(
          create: (_) => SearchDoneCubit(),
        ),
        BlocProvider(
          create: (_) => TotalSearchedResults(),
        ),
      ],
      child: SearchableScreen(),
    );
  }
}
