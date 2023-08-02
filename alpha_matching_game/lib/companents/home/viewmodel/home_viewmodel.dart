import 'package:mobx/mobx.dart';
part 'home_viewmodel.g.dart';

class HomeViewModel = HomeViewModelBase with _$HomeViewModel;

abstract class HomeViewModelBase with Store {
  @observable
  List<String> flipOnTouchList = [];

  @observable
  int point = 0;

  @observable
  int selectedFirstCardIndex = -1;

  @observable
  int selectedSecondCardIndex = -1;

  @action
  void toogleCard(int index) {
    if (selectedFirstCardIndex != -1) {
      selectedFirstCardIndex = index;
    } else {
      selectedSecondCardIndex = index;
    }
  }
}
