abstract class CheckboxEvent {}

class ToggleCheckbox extends CheckboxEvent {}


abstract class CheckboxState {}

class CheckboxInitial extends CheckboxState {}

class CheckboxChecked extends CheckboxState {
  final String selectedId;

  CheckboxChecked(this.selectedId);
}
class CheckboxUnchecked extends CheckboxState {}