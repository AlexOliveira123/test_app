import 'package:mobx/mobx.dart';
part 'exercise_controller.g.dart';

class ExerciseController = ExerciseControllerBase with _$ExerciseController;

abstract class ExerciseControllerBase with Store {
  @observable
  String numberN = '';

  @observable
  int numberSended = 0;

  @observable
  String text = 'Nenhum número escolhido';

  @observable
  bool isOK = true;

  @observable
  String numberK = '';

  @observable
  bool enabledButton = true;

  @observable
  ObservableList<int> listNumbers = ObservableList();

  @action
  onChangedNumber(String value) {
    numberN = value;
    isOK = true;

    if (numberN.trim().length == 0) {
      text = 'Nenhum número escolhido';
    } else if (num.parse(numberN) <= 1000){
      text = 'O número escolhido foi $numberN';
    } else {
      text = 'Número não permitido!';
      isOK = false;
    }
  }

  @action
  sendNumber() {
    numberSended = num.parse(numberN == '' ? 0 : numberN);
  }

  @action
  onChangedNumberK(String value) {
    numberK = value;

    int num = int.parse(numberK);
    RegExp numberRegExp = RegExp(r'(^[0-9]*$)');

    if (num > 1000 || num < -1000) {
      enabledButton = false;
    } else {
      enabledButton = true;
    }
  }

  @action
  addItemList() {
    numberSended--;

    int num = int.parse(numberK);

    if (!listNumbers.contains(num)) {
      listNumbers.add(int.parse(numberK));
    }

    listNumbers.sort();
  }

  @action
  clear(){
    numberN = '';
    numberSended = 0;
    listNumbers.clear();
    onChangedNumber(numberN);
  }
}