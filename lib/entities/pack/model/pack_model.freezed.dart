// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackModel _$PackModelFromJson(Map<String, dynamic> json) {
  return _PackModel.fromJson(json);
}

/// @nodoc
mixin _$PackModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageCover => throw _privateConstructorUsedError;
  String get imageDetail => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<SongModel> get songs => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackModelCopyWith<PackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackModelCopyWith<$Res> {
  factory $PackModelCopyWith(PackModel value, $Res Function(PackModel) then) =
      _$PackModelCopyWithImpl<$Res, PackModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      String imageCover,
      String imageDetail,
      String category,
      List<SongModel> songs,
      bool isFavorite});
}

/// @nodoc
class _$PackModelCopyWithImpl<$Res, $Val extends PackModel>
    implements $PackModelCopyWith<$Res> {
  _$PackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? imageCover = null,
    Object? imageDetail = null,
    Object? category = null,
    Object? songs = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageCover: null == imageCover
          ? _value.imageCover
          : imageCover // ignore: cast_nullable_to_non_nullable
              as String,
      imageDetail: null == imageDetail
          ? _value.imageDetail
          : imageDetail // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      songs: null == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongModel>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackModelImplCopyWith<$Res>
    implements $PackModelCopyWith<$Res> {
  factory _$$PackModelImplCopyWith(
          _$PackModelImpl value, $Res Function(_$PackModelImpl) then) =
      __$$PackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String imageCover,
      String imageDetail,
      String category,
      List<SongModel> songs,
      bool isFavorite});
}

/// @nodoc
class __$$PackModelImplCopyWithImpl<$Res>
    extends _$PackModelCopyWithImpl<$Res, _$PackModelImpl>
    implements _$$PackModelImplCopyWith<$Res> {
  __$$PackModelImplCopyWithImpl(
      _$PackModelImpl _value, $Res Function(_$PackModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? imageCover = null,
    Object? imageDetail = null,
    Object? category = null,
    Object? songs = null,
    Object? isFavorite = null,
  }) {
    return _then(_$PackModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageCover: null == imageCover
          ? _value.imageCover
          : imageCover // ignore: cast_nullable_to_non_nullable
              as String,
      imageDetail: null == imageDetail
          ? _value.imageDetail
          : imageDetail // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      songs: null == songs
          ? _value._songs
          : songs // ignore: cast_nullable_to_non_nullable
              as List<SongModel>,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackModelImpl implements _PackModel {
  const _$PackModelImpl(
      {required this.name,
      required this.description,
      required this.imageCover,
      required this.imageDetail,
      required this.category,
      required final List<SongModel> songs,
      required this.isFavorite})
      : _songs = songs;

  factory _$PackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackModelImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String imageCover;
  @override
  final String imageDetail;
  @override
  final String category;
  final List<SongModel> _songs;
  @override
  List<SongModel> get songs {
    if (_songs is EqualUnmodifiableListView) return _songs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_songs);
  }

  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'PackModel(name: $name, description: $description, imageCover: $imageCover, imageDetail: $imageDetail, category: $category, songs: $songs, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageCover, imageCover) ||
                other.imageCover == imageCover) &&
            (identical(other.imageDetail, imageDetail) ||
                other.imageDetail == imageDetail) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._songs, _songs) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      imageCover,
      imageDetail,
      category,
      const DeepCollectionEquality().hash(_songs),
      isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackModelImplCopyWith<_$PackModelImpl> get copyWith =>
      __$$PackModelImplCopyWithImpl<_$PackModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackModelImplToJson(
      this,
    );
  }
}

abstract class _PackModel implements PackModel {
  const factory _PackModel(
      {required final String name,
      required final String description,
      required final String imageCover,
      required final String imageDetail,
      required final String category,
      required final List<SongModel> songs,
      required final bool isFavorite}) = _$PackModelImpl;

  factory _PackModel.fromJson(Map<String, dynamic> json) =
      _$PackModelImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get imageCover;
  @override
  String get imageDetail;
  @override
  String get category;
  @override
  List<SongModel> get songs;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$PackModelImplCopyWith<_$PackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SongModel _$SongModelFromJson(Map<String, dynamic> json) {
  return _SongModel.fromJson(json);
}

/// @nodoc
mixin _$SongModel {
  String get name => throw _privateConstructorUsedError;
  String get song => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongModelCopyWith<SongModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongModelCopyWith<$Res> {
  factory $SongModelCopyWith(SongModel value, $Res Function(SongModel) then) =
      _$SongModelCopyWithImpl<$Res, SongModel>;
  @useResult
  $Res call({String name, String song});
}

/// @nodoc
class _$SongModelCopyWithImpl<$Res, $Val extends SongModel>
    implements $SongModelCopyWith<$Res> {
  _$SongModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? song = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongModelImplCopyWith<$Res>
    implements $SongModelCopyWith<$Res> {
  factory _$$SongModelImplCopyWith(
          _$SongModelImpl value, $Res Function(_$SongModelImpl) then) =
      __$$SongModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String song});
}

/// @nodoc
class __$$SongModelImplCopyWithImpl<$Res>
    extends _$SongModelCopyWithImpl<$Res, _$SongModelImpl>
    implements _$$SongModelImplCopyWith<$Res> {
  __$$SongModelImplCopyWithImpl(
      _$SongModelImpl _value, $Res Function(_$SongModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? song = null,
  }) {
    return _then(_$SongModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      song: null == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongModelImpl implements _SongModel {
  const _$SongModelImpl({required this.name, required this.song});

  factory _$SongModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongModelImplFromJson(json);

  @override
  final String name;
  @override
  final String song;

  @override
  String toString() {
    return 'SongModel(name: $name, song: $song)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.song, song) || other.song == song));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, song);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongModelImplCopyWith<_$SongModelImpl> get copyWith =>
      __$$SongModelImplCopyWithImpl<_$SongModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongModelImplToJson(
      this,
    );
  }
}

abstract class _SongModel implements SongModel {
  const factory _SongModel(
      {required final String name,
      required final String song}) = _$SongModelImpl;

  factory _SongModel.fromJson(Map<String, dynamic> json) =
      _$SongModelImpl.fromJson;

  @override
  String get name;
  @override
  String get song;
  @override
  @JsonKey(ignore: true)
  _$$SongModelImplCopyWith<_$SongModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
