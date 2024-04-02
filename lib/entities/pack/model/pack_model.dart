import 'package:freezed_annotation/freezed_annotation.dart';

part 'pack_model.freezed.dart';
part 'pack_model.g.dart';

@freezed
class PackModel with _$PackModel {
  const factory PackModel({
    required String name,
    required String description,
    required String imageCover,
    required String imageDetail,
    required String category,
    required List<SongModel> songs,
  }) = _PackModel;

  factory PackModel.fromJson(Map<String, Object?> json) => _$PackModelFromJson(json);
}

@freezed
class SongModel with _$SongModel {
  const factory SongModel({
    required String name,
    required String song,
  }) = _SongModel;

  factory SongModel.fromJson(Map<String, Object?> json) => _$SongModelFromJson(json);
}
