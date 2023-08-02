import 'package:alpha_matching_game/core/constants/app_image.dart';
import 'package:alpha_matching_game/store/app/game/model/game_model.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
part 'game_store.g.dart';

class GameStore = GameStoreBase with _$GameStore;

abstract class GameStoreBase with Store {

  GameModel pokemon = GameModel(
      title: "pokemon_title".tr,
      mainLogo: AppImage.pokemonMainLogo,
      gameLogo: AppImage.pokemonGameLogo,
      easyLevelImageList: AppImage.pokemonEasyLevelImageList,
      mediumLevelImageList: AppImage.pokemonMediumLevelImageList,
      hardLevelImageList: AppImage.pokemonHardLevelImageList);
}
