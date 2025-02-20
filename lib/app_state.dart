import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<MessageTypeStruct> _messages = [];
  List<MessageTypeStruct> get messages => _messages;
  set messages(List<MessageTypeStruct> value) {
    _messages = value;
  }

  void addToMessages(MessageTypeStruct value) {
    messages.add(value);
  }

  void removeFromMessages(MessageTypeStruct value) {
    messages.remove(value);
  }

  void removeAtIndexFromMessages(int index) {
    messages.removeAt(index);
  }

  void updateMessagesAtIndex(
    int index,
    MessageTypeStruct Function(MessageTypeStruct) updateFn,
  ) {
    messages[index] = updateFn(_messages[index]);
  }

  void insertAtIndexInMessages(int index, MessageTypeStruct value) {
    messages.insert(index, value);
  }
}
