import 'package:flutter/material.dart';
import 'package:movies_data_project/screens/move%20detail%20screen/search_movie_detail.dart';
import '../../components/appbar.dart';
import '../../components/scaffold.dart';
import '../../constants.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final movieId = ModalRoute.of(context)?.settings.arguments as String;
    return MyScaffold(
      extendBody: true,
      appBar: CustomAppBar(
        colour: Colors.transparent,
        actionList: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: secondaryColor,
                    ),
                  ),
                  Text(
                    'Watch',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: SearchMovieDetail(movieId: movieId),
    );
  }
}
