import 'dart:math';
import 'package:flutter/material.dart';
import '../models/dice_roll.dart';

class DiceRollerController {
  final Random _random = Random();
  List<String> _rollHistory = [];

  late AnimationController rollAnimationController;
  late Animation<double> rollAnimation;

  void initAnimation({required TickerProvider vsync}) {
    rollAnimationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: vsync,
    );
    rollAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: rollAnimationController, curve: Curves.bounceOut),
    );
  }

  void dispose() {
    rollAnimationController.dispose();
  }

  List<int> rollDice(int sides, int count) {
    return List.generate(count, (index) => _random.nextInt(sides) + 1);
  }

  void performRoll(int sides, int count, int modifier, String description) {
    rollAnimationController.forward().then((_) {
      rollAnimationController.reset();
    });

    final rolls = rollDice(sides, count);
    final total = rolls.fold(0, (sum, roll) => sum + roll) + modifier;
    
    String resultText = '$description: ${rolls.join(' + ')} = $total';

    if (sides == 20 && rolls.length == 1) {
      if (rolls[0] == 20) {
        resultText += ' CRITICAL!';
      } else if (rolls[0] == 1) {
        resultText += ' FUMBLE!';
      }
    }

    _rollHistory.insert(0, resultText);
    if (_rollHistory.length > 20) {
      _rollHistory.removeLast();
    }
  }
}
