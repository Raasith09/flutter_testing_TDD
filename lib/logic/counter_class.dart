class Counter {
  int _count = 0;

  int get counter => _count;

  void incrementCounter() {
    _count++;
  }

  void decrementCounter() {
    _count--;
  }

  void resetCouner() {
    _count = 0;
  }
}
