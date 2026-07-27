import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_model.freezed.dart';
part 'library_model.g.dart';

@freezed
class BookListModel with _$BookListModel {
  const factory BookListModel({
    @JsonKey(name: 'list') List<BookItemModel>? list,
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'currentPage') int? currentPage,
  }) = _BookListModel;

  factory BookListModel.fromJson(Map<String, dynamic> json) =>
      _$BookListModelFromJson(json);
}

@freezed
class BookItemModel with _$BookItemModel {
  const factory BookItemModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'inst_id') String? instId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'short_code') String? shortCode,
    @JsonKey(name: 'cover_image') String? coverImage,
    @JsonKey(name: 'class') String? className,
    @JsonKey(name: 'subject') String? subject,
    @JsonKey(name: 'author') String? author,
    @JsonKey(name: 'uploaded_by_name') String? uploadedByName,
    @JsonKey(name: 'uploaded_at') String? uploadedAt,
  }) = _BookItemModel;

  factory BookItemModel.fromJson(Map<String, dynamic> json) =>
      _$BookItemModelFromJson(json);
}
