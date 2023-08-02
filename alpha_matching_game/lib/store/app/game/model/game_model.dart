class GameModel {
  final String title;
  final String mainLogo;
  final String gameLogo;
  final List<String> easyLevelImageList;
  final List<String> mediumLevelImageList;
  final List<String> hardLevelImageList;
  GameModel({
    required this.title,
    required this.mainLogo,
    required this.gameLogo,
    required this.easyLevelImageList,
    required this.mediumLevelImageList,
    required this.hardLevelImageList,
  });
}
