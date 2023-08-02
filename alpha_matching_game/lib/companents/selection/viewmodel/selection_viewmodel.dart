import 'package:mobx/mobx.dart';
part 'selection_viewmodel.g.dart';

class SelectionViewModel = SelectionViewModelBase with _$SelectionViewModel;

abstract class SelectionViewModelBase with Store {}
