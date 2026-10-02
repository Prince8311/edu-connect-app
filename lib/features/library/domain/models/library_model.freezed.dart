// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookListModel {

@JsonKey(name: 'list') List<BookItemModel>? get list;@JsonKey(name: 'totalCount') int? get totalCount;@JsonKey(name: 'currentPage') int? get currentPage;
/// Create a copy of BookListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookListModelCopyWith<BookListModel> get copyWith => _$BookListModelCopyWithImpl<BookListModel>(this as BookListModel, _$identity);

  /// Serializes this BookListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookListModel&&const DeepCollectionEquality().equals(other.list, list)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list),totalCount,currentPage);

@override
String toString() {
  return 'BookListModel(list: $list, totalCount: $totalCount, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class $BookListModelCopyWith<$Res>  {
  factory $BookListModelCopyWith(BookListModel value, $Res Function(BookListModel) _then) = _$BookListModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'list') List<BookItemModel>? list,@JsonKey(name: 'totalCount') int? totalCount,@JsonKey(name: 'currentPage') int? currentPage
});




}
/// @nodoc
class _$BookListModelCopyWithImpl<$Res>
    implements $BookListModelCopyWith<$Res> {
  _$BookListModelCopyWithImpl(this._self, this._then);

  final BookListModel _self;
  final $Res Function(BookListModel) _then;

/// Create a copy of BookListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = freezed,Object? totalCount = freezed,Object? currentPage = freezed,}) {
  return _then(BookListModel(
list: freezed == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<BookItemModel>?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookListModel].
extension BookListModelPatterns on BookListModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookListModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookListModel value)  $default,){
final _that = this;
switch (_that) {
case _BookListModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookListModel value)?  $default,){
final _that = this;
switch (_that) {
case _BookListModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'list')  List<BookItemModel>? list, @JsonKey(name: 'totalCount')  int? totalCount, @JsonKey(name: 'currentPage')  int? currentPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookListModel() when $default != null:
return $default(_that.list,_that.totalCount,_that.currentPage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'list')  List<BookItemModel>? list, @JsonKey(name: 'totalCount')  int? totalCount, @JsonKey(name: 'currentPage')  int? currentPage)  $default,) {final _that = this;
switch (_that) {
case _BookListModel():
return $default(_that.list,_that.totalCount,_that.currentPage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'list')  List<BookItemModel>? list, @JsonKey(name: 'totalCount')  int? totalCount, @JsonKey(name: 'currentPage')  int? currentPage)?  $default,) {final _that = this;
switch (_that) {
case _BookListModel() when $default != null:
return $default(_that.list,_that.totalCount,_that.currentPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookListModel implements BookListModel {
  const _BookListModel({@JsonKey(name: 'list')  List<BookItemModel>? list, @JsonKey(name: 'totalCount') this.totalCount, @JsonKey(name: 'currentPage') this.currentPage}): _list = list;
  factory _BookListModel.fromJson(Map<String, dynamic> json) => _$BookListModelFromJson(json);

 final  List<BookItemModel>? _list;
@override@JsonKey(name: 'list') List<BookItemModel>? get list {
  final value = _list;
  if (value == null) return null;
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'totalCount') final  int? totalCount;
@override@JsonKey(name: 'currentPage') final  int? currentPage;

/// Create a copy of BookListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookListModelCopyWith<_BookListModel> get copyWith => __$BookListModelCopyWithImpl<_BookListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookListModel&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),totalCount,currentPage);

@override
String toString() {
  return 'BookListModel(list: $list, totalCount: $totalCount, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class _$BookListModelCopyWith<$Res> implements $BookListModelCopyWith<$Res> {
  factory _$BookListModelCopyWith(_BookListModel value, $Res Function(_BookListModel) _then) = __$BookListModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'list') List<BookItemModel>? list,@JsonKey(name: 'totalCount') int? totalCount,@JsonKey(name: 'currentPage') int? currentPage
});




}
/// @nodoc
class __$BookListModelCopyWithImpl<$Res>
    implements _$BookListModelCopyWith<$Res> {
  __$BookListModelCopyWithImpl(this._self, this._then);

  final _BookListModel _self;
  final $Res Function(_BookListModel) _then;

/// Create a copy of BookListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = freezed,Object? totalCount = freezed,Object? currentPage = freezed,}) {
  return _then(_BookListModel(
list: freezed == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<BookItemModel>?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$BookItemModel {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'inst_id') String? get instId;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'short_code') String? get shortCode;@JsonKey(name: 'cover_image') String? get coverImage;@JsonKey(name: 'class') String? get className;@JsonKey(name: 'subject') String? get subject;@JsonKey(name: 'author') String? get author;@JsonKey(name: 'uploaded_by_name') String? get uploadedByName;@JsonKey(name: 'uploaded_at') String? get uploadedAt;
/// Create a copy of BookItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookItemModelCopyWith<BookItemModel> get copyWith => _$BookItemModelCopyWithImpl<BookItemModel>(this as BookItemModel, _$identity);

  /// Serializes this BookItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.instId, instId) || other.instId == instId)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.className, className) || other.className == className)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.author, author) || other.author == author)&&(identical(other.uploadedByName, uploadedByName) || other.uploadedByName == uploadedByName)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instId,name,shortCode,coverImage,className,subject,author,uploadedByName,uploadedAt);

@override
String toString() {
  return 'BookItemModel(id: $id, instId: $instId, name: $name, shortCode: $shortCode, coverImage: $coverImage, className: $className, subject: $subject, author: $author, uploadedByName: $uploadedByName, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class $BookItemModelCopyWith<$Res>  {
  factory $BookItemModelCopyWith(BookItemModel value, $Res Function(BookItemModel) _then) = _$BookItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'inst_id') String? instId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_code') String? shortCode,@JsonKey(name: 'cover_image') String? coverImage,@JsonKey(name: 'class') String? className,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'author') String? author,@JsonKey(name: 'uploaded_by_name') String? uploadedByName,@JsonKey(name: 'uploaded_at') String? uploadedAt
});




}
/// @nodoc
class _$BookItemModelCopyWithImpl<$Res>
    implements $BookItemModelCopyWith<$Res> {
  _$BookItemModelCopyWithImpl(this._self, this._then);

  final BookItemModel _self;
  final $Res Function(BookItemModel) _then;

/// Create a copy of BookItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? instId = freezed,Object? name = freezed,Object? shortCode = freezed,Object? coverImage = freezed,Object? className = freezed,Object? subject = freezed,Object? author = freezed,Object? uploadedByName = freezed,Object? uploadedAt = freezed,}) {
  return _then(BookItemModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,instId: freezed == instId ? _self.instId : instId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortCode: freezed == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,uploadedByName: freezed == uploadedByName ? _self.uploadedByName : uploadedByName // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookItemModel].
extension BookItemModelPatterns on BookItemModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookItemModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookItemModel value)  $default,){
final _that = this;
switch (_that) {
case _BookItemModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _BookItemModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'inst_id')  String? instId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_code')  String? shortCode, @JsonKey(name: 'cover_image')  String? coverImage, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'author')  String? author, @JsonKey(name: 'uploaded_by_name')  String? uploadedByName, @JsonKey(name: 'uploaded_at')  String? uploadedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookItemModel() when $default != null:
return $default(_that.id,_that.instId,_that.name,_that.shortCode,_that.coverImage,_that.className,_that.subject,_that.author,_that.uploadedByName,_that.uploadedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'inst_id')  String? instId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_code')  String? shortCode, @JsonKey(name: 'cover_image')  String? coverImage, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'author')  String? author, @JsonKey(name: 'uploaded_by_name')  String? uploadedByName, @JsonKey(name: 'uploaded_at')  String? uploadedAt)  $default,) {final _that = this;
switch (_that) {
case _BookItemModel():
return $default(_that.id,_that.instId,_that.name,_that.shortCode,_that.coverImage,_that.className,_that.subject,_that.author,_that.uploadedByName,_that.uploadedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'inst_id')  String? instId, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'short_code')  String? shortCode, @JsonKey(name: 'cover_image')  String? coverImage, @JsonKey(name: 'class')  String? className, @JsonKey(name: 'subject')  String? subject, @JsonKey(name: 'author')  String? author, @JsonKey(name: 'uploaded_by_name')  String? uploadedByName, @JsonKey(name: 'uploaded_at')  String? uploadedAt)?  $default,) {final _that = this;
switch (_that) {
case _BookItemModel() when $default != null:
return $default(_that.id,_that.instId,_that.name,_that.shortCode,_that.coverImage,_that.className,_that.subject,_that.author,_that.uploadedByName,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookItemModel implements BookItemModel {
  const _BookItemModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'inst_id') this.instId, @JsonKey(name: 'name') this.name, @JsonKey(name: 'short_code') this.shortCode, @JsonKey(name: 'cover_image') this.coverImage, @JsonKey(name: 'class') this.className, @JsonKey(name: 'subject') this.subject, @JsonKey(name: 'author') this.author, @JsonKey(name: 'uploaded_by_name') this.uploadedByName, @JsonKey(name: 'uploaded_at') this.uploadedAt});
  factory _BookItemModel.fromJson(Map<String, dynamic> json) => _$BookItemModelFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'inst_id') final  String? instId;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'short_code') final  String? shortCode;
@override@JsonKey(name: 'cover_image') final  String? coverImage;
@override@JsonKey(name: 'class') final  String? className;
@override@JsonKey(name: 'subject') final  String? subject;
@override@JsonKey(name: 'author') final  String? author;
@override@JsonKey(name: 'uploaded_by_name') final  String? uploadedByName;
@override@JsonKey(name: 'uploaded_at') final  String? uploadedAt;

/// Create a copy of BookItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookItemModelCopyWith<_BookItemModel> get copyWith => __$BookItemModelCopyWithImpl<_BookItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.instId, instId) || other.instId == instId)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.coverImage, coverImage) || other.coverImage == coverImage)&&(identical(other.className, className) || other.className == className)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.author, author) || other.author == author)&&(identical(other.uploadedByName, uploadedByName) || other.uploadedByName == uploadedByName)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,instId,name,shortCode,coverImage,className,subject,author,uploadedByName,uploadedAt);

@override
String toString() {
  return 'BookItemModel(id: $id, instId: $instId, name: $name, shortCode: $shortCode, coverImage: $coverImage, className: $className, subject: $subject, author: $author, uploadedByName: $uploadedByName, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$BookItemModelCopyWith<$Res> implements $BookItemModelCopyWith<$Res> {
  factory _$BookItemModelCopyWith(_BookItemModel value, $Res Function(_BookItemModel) _then) = __$BookItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'inst_id') String? instId,@JsonKey(name: 'name') String? name,@JsonKey(name: 'short_code') String? shortCode,@JsonKey(name: 'cover_image') String? coverImage,@JsonKey(name: 'class') String? className,@JsonKey(name: 'subject') String? subject,@JsonKey(name: 'author') String? author,@JsonKey(name: 'uploaded_by_name') String? uploadedByName,@JsonKey(name: 'uploaded_at') String? uploadedAt
});




}
/// @nodoc
class __$BookItemModelCopyWithImpl<$Res>
    implements _$BookItemModelCopyWith<$Res> {
  __$BookItemModelCopyWithImpl(this._self, this._then);

  final _BookItemModel _self;
  final $Res Function(_BookItemModel) _then;

/// Create a copy of BookItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? instId = freezed,Object? name = freezed,Object? shortCode = freezed,Object? coverImage = freezed,Object? className = freezed,Object? subject = freezed,Object? author = freezed,Object? uploadedByName = freezed,Object? uploadedAt = freezed,}) {
  return _then(_BookItemModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,instId: freezed == instId ? _self.instId : instId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortCode: freezed == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String?,coverImage: freezed == coverImage ? _self.coverImage : coverImage // ignore: cast_nullable_to_non_nullable
as String?,className: freezed == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,uploadedByName: freezed == uploadedByName ? _self.uploadedByName : uploadedByName // ignore: cast_nullable_to_non_nullable
as String?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$BookChapterListModel {

@JsonKey(name: 'list') List<BookChapterItemModel>? get list;@JsonKey(name: 'totalCount') int? get totalCount;@JsonKey(name: 'currentPage') int? get currentPage;
/// Create a copy of BookChapterListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookChapterListModelCopyWith<BookChapterListModel> get copyWith => _$BookChapterListModelCopyWithImpl<BookChapterListModel>(this as BookChapterListModel, _$identity);

  /// Serializes this BookChapterListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookChapterListModel&&const DeepCollectionEquality().equals(other.list, list)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list),totalCount,currentPage);

@override
String toString() {
  return 'BookChapterListModel(list: $list, totalCount: $totalCount, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class $BookChapterListModelCopyWith<$Res>  {
  factory $BookChapterListModelCopyWith(BookChapterListModel value, $Res Function(BookChapterListModel) _then) = _$BookChapterListModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'list') List<BookChapterItemModel>? list,@JsonKey(name: 'totalCount') int? totalCount,@JsonKey(name: 'currentPage') int? currentPage
});




}
/// @nodoc
class _$BookChapterListModelCopyWithImpl<$Res>
    implements $BookChapterListModelCopyWith<$Res> {
  _$BookChapterListModelCopyWithImpl(this._self, this._then);

  final BookChapterListModel _self;
  final $Res Function(BookChapterListModel) _then;

/// Create a copy of BookChapterListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = freezed,Object? totalCount = freezed,Object? currentPage = freezed,}) {
  return _then(BookChapterListModel(
list: freezed == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<BookChapterItemModel>?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookChapterListModel].
extension BookChapterListModelPatterns on BookChapterListModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookChapterListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookChapterListModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookChapterListModel value)  $default,){
final _that = this;
switch (_that) {
case _BookChapterListModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookChapterListModel value)?  $default,){
final _that = this;
switch (_that) {
case _BookChapterListModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'list')  List<BookChapterItemModel>? list, @JsonKey(name: 'totalCount')  int? totalCount, @JsonKey(name: 'currentPage')  int? currentPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookChapterListModel() when $default != null:
return $default(_that.list,_that.totalCount,_that.currentPage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'list')  List<BookChapterItemModel>? list, @JsonKey(name: 'totalCount')  int? totalCount, @JsonKey(name: 'currentPage')  int? currentPage)  $default,) {final _that = this;
switch (_that) {
case _BookChapterListModel():
return $default(_that.list,_that.totalCount,_that.currentPage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'list')  List<BookChapterItemModel>? list, @JsonKey(name: 'totalCount')  int? totalCount, @JsonKey(name: 'currentPage')  int? currentPage)?  $default,) {final _that = this;
switch (_that) {
case _BookChapterListModel() when $default != null:
return $default(_that.list,_that.totalCount,_that.currentPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookChapterListModel implements BookChapterListModel {
  const _BookChapterListModel({@JsonKey(name: 'list')  List<BookChapterItemModel>? list, @JsonKey(name: 'totalCount') this.totalCount, @JsonKey(name: 'currentPage') this.currentPage}): _list = list;
  factory _BookChapterListModel.fromJson(Map<String, dynamic> json) => _$BookChapterListModelFromJson(json);

 final  List<BookChapterItemModel>? _list;
@override@JsonKey(name: 'list') List<BookChapterItemModel>? get list {
  final value = _list;
  if (value == null) return null;
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'totalCount') final  int? totalCount;
@override@JsonKey(name: 'currentPage') final  int? currentPage;

/// Create a copy of BookChapterListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookChapterListModelCopyWith<_BookChapterListModel> get copyWith => __$BookChapterListModelCopyWithImpl<_BookChapterListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookChapterListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookChapterListModel&&const DeepCollectionEquality().equals(other._list, _list)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list),totalCount,currentPage);

@override
String toString() {
  return 'BookChapterListModel(list: $list, totalCount: $totalCount, currentPage: $currentPage)';
}


}

/// @nodoc
abstract mixin class _$BookChapterListModelCopyWith<$Res> implements $BookChapterListModelCopyWith<$Res> {
  factory _$BookChapterListModelCopyWith(_BookChapterListModel value, $Res Function(_BookChapterListModel) _then) = __$BookChapterListModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'list') List<BookChapterItemModel>? list,@JsonKey(name: 'totalCount') int? totalCount,@JsonKey(name: 'currentPage') int? currentPage
});




}
/// @nodoc
class __$BookChapterListModelCopyWithImpl<$Res>
    implements _$BookChapterListModelCopyWith<$Res> {
  __$BookChapterListModelCopyWithImpl(this._self, this._then);

  final _BookChapterListModel _self;
  final $Res Function(_BookChapterListModel) _then;

/// Create a copy of BookChapterListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = freezed,Object? totalCount = freezed,Object? currentPage = freezed,}) {
  return _then(_BookChapterListModel(
list: freezed == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<BookChapterItemModel>?,totalCount: freezed == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$BookChapterItemModel {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'chapter_index') String? get chapterIndex;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'file_name') String? get fileName;
/// Create a copy of BookChapterItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookChapterItemModelCopyWith<BookChapterItemModel> get copyWith => _$BookChapterItemModelCopyWithImpl<BookChapterItemModel>(this as BookChapterItemModel, _$identity);

  /// Serializes this BookChapterItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookChapterItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.chapterIndex, chapterIndex) || other.chapterIndex == chapterIndex)&&(identical(other.name, name) || other.name == name)&&(identical(other.fileName, fileName) || other.fileName == fileName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chapterIndex,name,fileName);

@override
String toString() {
  return 'BookChapterItemModel(id: $id, chapterIndex: $chapterIndex, name: $name, fileName: $fileName)';
}


}

/// @nodoc
abstract mixin class $BookChapterItemModelCopyWith<$Res>  {
  factory $BookChapterItemModelCopyWith(BookChapterItemModel value, $Res Function(BookChapterItemModel) _then) = _$BookChapterItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'chapter_index') String? chapterIndex,@JsonKey(name: 'name') String? name,@JsonKey(name: 'file_name') String? fileName
});




}
/// @nodoc
class _$BookChapterItemModelCopyWithImpl<$Res>
    implements $BookChapterItemModelCopyWith<$Res> {
  _$BookChapterItemModelCopyWithImpl(this._self, this._then);

  final BookChapterItemModel _self;
  final $Res Function(BookChapterItemModel) _then;

/// Create a copy of BookChapterItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? chapterIndex = freezed,Object? name = freezed,Object? fileName = freezed,}) {
  return _then(BookChapterItemModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,chapterIndex: freezed == chapterIndex ? _self.chapterIndex : chapterIndex // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookChapterItemModel].
extension BookChapterItemModelPatterns on BookChapterItemModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookChapterItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookChapterItemModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookChapterItemModel value)  $default,){
final _that = this;
switch (_that) {
case _BookChapterItemModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookChapterItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _BookChapterItemModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'chapter_index')  String? chapterIndex, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'file_name')  String? fileName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookChapterItemModel() when $default != null:
return $default(_that.id,_that.chapterIndex,_that.name,_that.fileName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'chapter_index')  String? chapterIndex, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'file_name')  String? fileName)  $default,) {final _that = this;
switch (_that) {
case _BookChapterItemModel():
return $default(_that.id,_that.chapterIndex,_that.name,_that.fileName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'chapter_index')  String? chapterIndex, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'file_name')  String? fileName)?  $default,) {final _that = this;
switch (_that) {
case _BookChapterItemModel() when $default != null:
return $default(_that.id,_that.chapterIndex,_that.name,_that.fileName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookChapterItemModel implements BookChapterItemModel {
  const _BookChapterItemModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'chapter_index') this.chapterIndex, @JsonKey(name: 'name') this.name, @JsonKey(name: 'file_name') this.fileName});
  factory _BookChapterItemModel.fromJson(Map<String, dynamic> json) => _$BookChapterItemModelFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'chapter_index') final  String? chapterIndex;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'file_name') final  String? fileName;

/// Create a copy of BookChapterItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookChapterItemModelCopyWith<_BookChapterItemModel> get copyWith => __$BookChapterItemModelCopyWithImpl<_BookChapterItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookChapterItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookChapterItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.chapterIndex, chapterIndex) || other.chapterIndex == chapterIndex)&&(identical(other.name, name) || other.name == name)&&(identical(other.fileName, fileName) || other.fileName == fileName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chapterIndex,name,fileName);

@override
String toString() {
  return 'BookChapterItemModel(id: $id, chapterIndex: $chapterIndex, name: $name, fileName: $fileName)';
}


}

/// @nodoc
abstract mixin class _$BookChapterItemModelCopyWith<$Res> implements $BookChapterItemModelCopyWith<$Res> {
  factory _$BookChapterItemModelCopyWith(_BookChapterItemModel value, $Res Function(_BookChapterItemModel) _then) = __$BookChapterItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'chapter_index') String? chapterIndex,@JsonKey(name: 'name') String? name,@JsonKey(name: 'file_name') String? fileName
});




}
/// @nodoc
class __$BookChapterItemModelCopyWithImpl<$Res>
    implements _$BookChapterItemModelCopyWith<$Res> {
  __$BookChapterItemModelCopyWithImpl(this._self, this._then);

  final _BookChapterItemModel _self;
  final $Res Function(_BookChapterItemModel) _then;

/// Create a copy of BookChapterItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? chapterIndex = freezed,Object? name = freezed,Object? fileName = freezed,}) {
  return _then(_BookChapterItemModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,chapterIndex: freezed == chapterIndex ? _self.chapterIndex : chapterIndex // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
