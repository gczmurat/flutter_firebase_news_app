import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_firebase_news_app/product/utility/base/base_firebase_model.dart';


class news extends Equatable implements IdModel, BaseFirebaseModel<news> {

  String? ctegory;
  String? categoryId;
  String? title;
  String? banner;
  @override
  String? id;

  news({
    this.ctegory,
    this.categoryId,
    this.title,
    this.banner,
    this.id,
  });

  @override
  List<Object?> get props => [ctegory, categoryId, title, banner, id];

  news copyWith({
    final String? ctegory,
    final String? categoryId,
    final String? title,
    final String? banner,
    final String? id,
  }) {
    return news(
      ctegory: ctegory ?? this.ctegory,
      categoryId: categoryId ?? this.categoryId,
      title: title ?? this.title,
      banner: banner ?? this.banner,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ctegory': ctegory,
      'categoryId': categoryId,
      'title': title,
      'banner': banner,
      'id': id,
    };
  }

  @override
  news fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    return news(
      ctegory: json['ctegory'] as String?,
      categoryId: json['categoryId'] as String?,
      title: json['title'] as String?,
      banner: json['banner'] as String?,
      id: json['id'] as String?,
    );
  }

  @override
  news? fromFirebase(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    // TODO: implement fromFirebase
    throw UnimplementedError();
    
  }
}
