// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookListModel _$BookListModelFromJson(Map<String, dynamic> json) {
  return _BookListModel.fromJson(json);
}

/// @nodoc
mixin _$BookListModel {
  @JsonKey(name: 'list')
  List<BookItemModel>? get list => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentPage')
  int? get currentPage => throw _privateConstructorUsedError;

  /// Serializes this BookListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookListModelCopyWith<BookListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookListModelCopyWith<$Res> {
  factory $BookListModelCopyWith(
          BookListModel value, $Res Function(BookListModel) then) =
      _$BookListModelCopyWithImpl<$Res, BookListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'list') List<BookItemModel>? list,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'currentPage') int? currentPage});
}

/// @nodoc
class _$BookListModelCopyWithImpl<$Res, $Val extends BookListModel>
    implements $BookListModelCopyWith<$Res> {
  _$BookListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
    Object? totalCount = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<BookItemModel>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookListModelImplCopyWith<$Res>
    implements $BookListModelCopyWith<$Res> {
  factory _$$BookListModelImplCopyWith(
          _$BookListModelImpl value, $Res Function(_$BookListModelImpl) then) =
      __$$BookListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'list') List<BookItemModel>? list,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'currentPage') int? currentPage});
}

/// @nodoc
class __$$BookListModelImplCopyWithImpl<$Res>
    extends _$BookListModelCopyWithImpl<$Res, _$BookListModelImpl>
    implements _$$BookListModelImplCopyWith<$Res> {
  __$$BookListModelImplCopyWithImpl(
      _$BookListModelImpl _value, $Res Function(_$BookListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
    Object? totalCount = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_$BookListModelImpl(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<BookItemModel>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookListModelImpl implements _BookListModel {
  const _$BookListModelImpl(
      {@JsonKey(name: 'list') final List<BookItemModel>? list,
      @JsonKey(name: 'totalCount') this.totalCount,
      @JsonKey(name: 'currentPage') this.currentPage})
      : _list = list;

  factory _$BookListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookListModelImplFromJson(json);

  final List<BookItemModel>? _list;
  @override
  @JsonKey(name: 'list')
  List<BookItemModel>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @override
  @JsonKey(name: 'currentPage')
  final int? currentPage;

  @override
  String toString() {
    return 'BookListModel(list: $list, totalCount: $totalCount, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookListModelImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_list), totalCount, currentPage);

  /// Create a copy of BookListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookListModelImplCopyWith<_$BookListModelImpl> get copyWith =>
      __$$BookListModelImplCopyWithImpl<_$BookListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookListModelImplToJson(
      this,
    );
  }
}

abstract class _BookListModel implements BookListModel {
  const factory _BookListModel(
          {@JsonKey(name: 'list') final List<BookItemModel>? list,
          @JsonKey(name: 'totalCount') final int? totalCount,
          @JsonKey(name: 'currentPage') final int? currentPage}) =
      _$BookListModelImpl;

  factory _BookListModel.fromJson(Map<String, dynamic> json) =
      _$BookListModelImpl.fromJson;

  @override
  @JsonKey(name: 'list')
  List<BookItemModel>? get list;
  @override
  @JsonKey(name: 'totalCount')
  int? get totalCount;
  @override
  @JsonKey(name: 'currentPage')
  int? get currentPage;

  /// Create a copy of BookListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookListModelImplCopyWith<_$BookListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookItemModel _$BookItemModelFromJson(Map<String, dynamic> json) {
  return _BookItemModel.fromJson(json);
}

/// @nodoc
mixin _$BookItemModel {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'inst_id')
  String? get instId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_code')
  String? get shortCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_image')
  String? get coverImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  String? get className => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject')
  String? get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'uploaded_by_name')
  String? get uploadedByName => throw _privateConstructorUsedError;
  @JsonKey(name: 'uploaded_at')
  String? get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this BookItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookItemModelCopyWith<BookItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookItemModelCopyWith<$Res> {
  factory $BookItemModelCopyWith(
          BookItemModel value, $Res Function(BookItemModel) then) =
      _$BookItemModelCopyWithImpl<$Res, BookItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'inst_id') String? instId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'short_code') String? shortCode,
      @JsonKey(name: 'cover_image') String? coverImage,
      @JsonKey(name: 'class') String? className,
      @JsonKey(name: 'subject') String? subject,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'uploaded_by_name') String? uploadedByName,
      @JsonKey(name: 'uploaded_at') String? uploadedAt});
}

/// @nodoc
class _$BookItemModelCopyWithImpl<$Res, $Val extends BookItemModel>
    implements $BookItemModelCopyWith<$Res> {
  _$BookItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? instId = freezed,
    Object? name = freezed,
    Object? shortCode = freezed,
    Object? coverImage = freezed,
    Object? className = freezed,
    Object? subject = freezed,
    Object? author = freezed,
    Object? uploadedByName = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instId: freezed == instId
          ? _value.instId
          : instId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortCode: freezed == shortCode
          ? _value.shortCode
          : shortCode // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedByName: freezed == uploadedByName
          ? _value.uploadedByName
          : uploadedByName // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookItemModelImplCopyWith<$Res>
    implements $BookItemModelCopyWith<$Res> {
  factory _$$BookItemModelImplCopyWith(
          _$BookItemModelImpl value, $Res Function(_$BookItemModelImpl) then) =
      __$$BookItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'inst_id') String? instId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'short_code') String? shortCode,
      @JsonKey(name: 'cover_image') String? coverImage,
      @JsonKey(name: 'class') String? className,
      @JsonKey(name: 'subject') String? subject,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'uploaded_by_name') String? uploadedByName,
      @JsonKey(name: 'uploaded_at') String? uploadedAt});
}

/// @nodoc
class __$$BookItemModelImplCopyWithImpl<$Res>
    extends _$BookItemModelCopyWithImpl<$Res, _$BookItemModelImpl>
    implements _$$BookItemModelImplCopyWith<$Res> {
  __$$BookItemModelImplCopyWithImpl(
      _$BookItemModelImpl _value, $Res Function(_$BookItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? instId = freezed,
    Object? name = freezed,
    Object? shortCode = freezed,
    Object? coverImage = freezed,
    Object? className = freezed,
    Object? subject = freezed,
    Object? author = freezed,
    Object? uploadedByName = freezed,
    Object? uploadedAt = freezed,
  }) {
    return _then(_$BookItemModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      instId: freezed == instId
          ? _value.instId
          : instId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortCode: freezed == shortCode
          ? _value.shortCode
          : shortCode // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedByName: freezed == uploadedByName
          ? _value.uploadedByName
          : uploadedByName // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookItemModelImpl implements _BookItemModel {
  const _$BookItemModelImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'inst_id') this.instId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'short_code') this.shortCode,
      @JsonKey(name: 'cover_image') this.coverImage,
      @JsonKey(name: 'class') this.className,
      @JsonKey(name: 'subject') this.subject,
      @JsonKey(name: 'author') this.author,
      @JsonKey(name: 'uploaded_by_name') this.uploadedByName,
      @JsonKey(name: 'uploaded_at') this.uploadedAt});

  factory _$BookItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookItemModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'inst_id')
  final String? instId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'short_code')
  final String? shortCode;
  @override
  @JsonKey(name: 'cover_image')
  final String? coverImage;
  @override
  @JsonKey(name: 'class')
  final String? className;
  @override
  @JsonKey(name: 'subject')
  final String? subject;
  @override
  @JsonKey(name: 'author')
  final String? author;
  @override
  @JsonKey(name: 'uploaded_by_name')
  final String? uploadedByName;
  @override
  @JsonKey(name: 'uploaded_at')
  final String? uploadedAt;

  @override
  String toString() {
    return 'BookItemModel(id: $id, instId: $instId, name: $name, shortCode: $shortCode, coverImage: $coverImage, className: $className, subject: $subject, author: $author, uploadedByName: $uploadedByName, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.instId, instId) || other.instId == instId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortCode, shortCode) ||
                other.shortCode == shortCode) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.uploadedByName, uploadedByName) ||
                other.uploadedByName == uploadedByName) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, instId, name, shortCode,
      coverImage, className, subject, author, uploadedByName, uploadedAt);

  /// Create a copy of BookItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookItemModelImplCopyWith<_$BookItemModelImpl> get copyWith =>
      __$$BookItemModelImplCopyWithImpl<_$BookItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookItemModelImplToJson(
      this,
    );
  }
}

abstract class _BookItemModel implements BookItemModel {
  const factory _BookItemModel(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'inst_id') final String? instId,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'short_code') final String? shortCode,
          @JsonKey(name: 'cover_image') final String? coverImage,
          @JsonKey(name: 'class') final String? className,
          @JsonKey(name: 'subject') final String? subject,
          @JsonKey(name: 'author') final String? author,
          @JsonKey(name: 'uploaded_by_name') final String? uploadedByName,
          @JsonKey(name: 'uploaded_at') final String? uploadedAt}) =
      _$BookItemModelImpl;

  factory _BookItemModel.fromJson(Map<String, dynamic> json) =
      _$BookItemModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'inst_id')
  String? get instId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'short_code')
  String? get shortCode;
  @override
  @JsonKey(name: 'cover_image')
  String? get coverImage;
  @override
  @JsonKey(name: 'class')
  String? get className;
  @override
  @JsonKey(name: 'subject')
  String? get subject;
  @override
  @JsonKey(name: 'author')
  String? get author;
  @override
  @JsonKey(name: 'uploaded_by_name')
  String? get uploadedByName;
  @override
  @JsonKey(name: 'uploaded_at')
  String? get uploadedAt;

  /// Create a copy of BookItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookItemModelImplCopyWith<_$BookItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
