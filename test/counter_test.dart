import 'package:flutter_test/flutter_test.dart';
import 'package:testing_project/logic/counter_class.dart';

void main() {
  late Counter myCount;

  setUp(() {
    myCount = Counter();
  });

  group("Counter-Class", () {
    test(
        "given the counter class when its intiated the count value should be zero ",
        () {
      var count = myCount.counter;

      expect(count, 0);
    });

    test(
        "when the increment button is pressed the values should be incremented ",
        () {
      myCount.incrementCounter();
      var count = myCount.counter;

      expect(count, 1);
    });
    test(
        "when the decrement button is pressed the values should be decremented ",
        () {
      myCount.decrementCounter();
      var count = myCount.counter;

      expect(count, -1);
    });
    test("when the reset button is pressed the values should be decremented ",
        () {
      myCount.resetCouner();
      var count = myCount.counter;

      expect(count, 0);
    });
  });
}
