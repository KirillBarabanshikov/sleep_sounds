// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackModelImpl _$$PackModelImplFromJson(Map<String, dynamic> json) =>
    _$PackModelImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      imageCover: json['imageCover'] as String,
      imageDetail: json['imageDetail'] as String,
      category: json['category'] as String,
      songs: (json['songs'] as List<dynamic>)
          .map((e) => SongModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorite: json['isFavorite'] as bool,
    );

Map<String, dynamic> _$$PackModelImplToJson(_$PackModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'imageCover': instance.imageCover,
      'imageDetail': instance.imageDetail,
      'category': instance.category,
      'songs': instance.songs,
      'isFavorite': instance.isFavorite,
    };

_$SongModelImpl _$$SongModelImplFromJson(Map<String, dynamic> json) =>
    _$SongModelImpl(
      name: json['name'] as String,
      song: json['song'] as String,
    );

Map<String, dynamic> _$$SongModelImplToJson(_$SongModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'song': instance.song,
    };
