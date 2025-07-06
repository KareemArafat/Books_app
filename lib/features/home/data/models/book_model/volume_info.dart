import 'image_links.dart';

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  int? pageCount;
  List<String>? categories;
  num? averageRating;
  num? ratingsCount;
  String? contentVersion;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.pageCount,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.contentVersion,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
    title: json['title'] as String?,
    authors: (json['authors'] as List<dynamic>?)?.cast<String>(),
    publisher: json['publisher'] as String?,
    publishedDate: json['publishedDate'] as String?,
    description: json['description'] as String?,
    pageCount: json['pageCount'] as int?,
    categories: (json['categories'] as List<dynamic>?)?.cast<String>(),
    averageRating: json['averageRating'] as num?,
    ratingsCount: json['ratingsCount'] as num?,
    contentVersion: json['contentVersion'] as String?,
    imageLinks:
        json['imageLinks'] == null
            ? null
            : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
    language: json['language'] as String?,
    previewLink: json['previewLink'] as String?,
    infoLink: json['infoLink'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'title': title,
    'authors': authors,
    'publisher': publisher,
    'publishedDate': publishedDate,
    'description': description,
    'pageCount': pageCount,
    'categories': categories,
    'averageRating': averageRating,
    'ratingsCount': ratingsCount,
    'contentVersion': contentVersion,
    'imageLinks': imageLinks?.toJson(),
    'language': language,
    'previewLink': previewLink,
    'infoLink': infoLink,
  };
}
