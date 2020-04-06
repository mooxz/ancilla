class Person {
	String name;
	String avatarURL;

	Person.fromMap(Map<String, dynamic> json) {
		this.name = json['name'];
		this.avatarURL = json['avatars']['medium'];
	}
}

class Actor extends Person {
	Actor.fromMap(Map<String, dynamic> json) : super.fromMap(json);
}

class Director extends Person {
	Director.fromMap(Map<String, dynamic> json) : super.fromMap(json);
}

int _rankCount = 1;

class HomeMovieTop250Model {
	int rank;
	String imageURL;
	String title;
	String playDate;
	double rating;
	List<String> genres;
	List<Actor> casts;
	Director director;
	String originalTitle;

	HomeMovieTop250Model.fromMap(Map<String, dynamic> json) {
		this.rank = _rankCount++;
		this.imageURL = json["images"]["medium"];
		this.title = json["title"];
		this.playDate = json["year"];
		this.rating = json["rating"]["average"];
		this.genres = json["genres"].cast<String>();
		this.casts = (json['casts'] as List<dynamic>).map((item) {
			return Actor.fromMap(item);
		}).toList();
		this.director = Director.fromMap(json['directors'][0]);
		this.originalTitle = json["original_title"];
	}

	@override
	String toString() {
		return 'HomeMovieTop250Model{rank: $rank, imageURL: $imageURL, title: $title, playDate: $playDate, rating: $rating, genres: $genres, casts: $casts, director: $director, originalTitle: $originalTitle}';
	}
}