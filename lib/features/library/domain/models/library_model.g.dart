// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BookListModel _$BookListModelFromJson(Map<String, dynamic> json) =>
    _BookListModel(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => BookItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BookListModelToJson(_BookListModel instance) =>
    <String, dynamic>{
      'list': instance.list,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
    };

_BookItemModel _$BookItemModelFromJson(Map<String, dynamic> json) =>
    _BookItemModel(
      id: json['id'] as String?,
      instId: json['inst_id'] as String?,
      name: json['name'] as String?,
      shortCode: json['short_code'] as String?,
      coverImage: json['cover_image'] as String?,
      className: json['class'] as String?,
      subject: json['subject'] as String?,
      author: json['author'] as String?,
      uploadedByName: json['uploaded_by_name'] as String?,
      uploadedAt: json['uploaded_at'] as String?,
    );

Map<String, dynamic> _$BookItemModelToJson(_BookItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inst_id': instance.instId,
      'name': instance.name,
      'short_code': instance.shortCode,
      'cover_image': instance.coverImage,
      'class': instance.className,
      'subject': instance.subject,
      'author': instance.author,
      'uploaded_by_name': instance.uploadedByName,
      'uploaded_at': instance.uploadedAt,
    };

_BookChapterListModel _$BookChapterListModelFromJson(
  Map<String, dynamic> json,
) => _BookChapterListModel(
  list: (json['list'] as List<dynamic>?)
      ?.map((e) => BookChapterItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCount: (json['totalCount'] as num?)?.toInt(),
  currentPage: (json['currentPage'] as num?)?.toInt(),
);

Map<String, dynamic> _$BookChapterListModelToJson(
  _BookChapterListModel instance,
) => <String, dynamic>{
  'list': instance.list,
  'totalCount': instance.totalCount,
  'currentPage': instance.currentPage,
};

_BookChapterItemModel _$BookChapterItemModelFromJson(
  Map<String, dynamic> json,
) => _BookChapterItemModel(
  id: json['id'] as String?,
  chapterIndex: json['chapter_index'] as String?,
  name: json['name'] as String?,
  fileName: json['file_name'] as String?,
);

Map<String, dynamic> _$BookChapterItemModelToJson(
  _BookChapterItemModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'chapter_index': instance.chapterIndex,
  'name': instance.name,
  'file_name': instance.fileName,
};
