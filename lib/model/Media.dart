import 'package:hello_world/common/Util.dart';

class Media {
  int id;
  double voteAverage;
  String title;
  String posterPath;
  String backdropPath;
  String overview;
  String releaseDate;
  List<dynamic> genreIds;

  String getPosertUrl() => getMediumPictureUrl(posterPath);
  String getBackDroptUrl() => getLargePictureUrl(backdropPath);
  String getGenres() => getGenreValues(genreIds);
  factory Media(Map jsonMap) {
    return new Media.deserialize(jsonMap);
  }

  Media.deserialize(Map json)
      : id = json["id"].toInt(),
        voteAverage = json["vote_average"].toDouble(),
        title = json["title"].toString(),
        posterPath = json["poster_path"].toString(),
        backdropPath = json["backdrop_path"].toString(),
        overview = json["overview"].toString(),
        releaseDate = json["release_date"].toString(),
        genreIds = json["genre_ids"].toList();
}
