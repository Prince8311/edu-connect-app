// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookListModelImpl _$$BookListModelImplFromJson(Map<String, dynamic> json) =>
    _$BookListModelImpl(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => BookItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BookListModelImplToJson(_$BookListModelImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
    };

_$BookItemModelImpl _$$BookItemModelImplFromJson(Map<String, dynamic> json) =>
    _$BookItemModelImpl(
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

Map<String, dynamic> _$$BookItemModelImplToJson(_$BookItemModelImpl instance) =>
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
