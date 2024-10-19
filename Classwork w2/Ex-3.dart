class CustomDuration {
  final int _milliseconds;

  CustomDuration(int milliseconds) : _milliseconds = (milliseconds >= 0) ? milliseconds : 0;

  CustomDuration.fromHours(int hours) : _milliseconds = (hours >= 0) ? hours * 60 * 60 * 1000 : 0;

  CustomDuration.fromMinutes(int minutes) : _milliseconds = (minutes >= 0) ? minutes * 60 * 1000 : 0;

  CustomDuration.fromSeconds(int seconds) : _milliseconds = (seconds >= 0) ? seconds * 1000 : 0;

  int get inMilliseconds => _milliseconds;

  bool operator >(CustomDuration other) {
    return this._milliseconds > other._milliseconds;
  }

  CustomDuration operator +(CustomDuration other) {
    return CustomDuration(this._milliseconds + other._milliseconds);
  }

  CustomDuration operator -(CustomDuration other) {
    if (this._milliseconds >= other._milliseconds) {
      return CustomDuration(this._milliseconds - other._milliseconds);
    } else {
      return CustomDuration(0);
    }
  }

  @override
  String toString() {
    return 'Duration: $_milliseconds milliseconds';
  }
}

void main() {
  CustomDuration duration1 = CustomDuration.fromHours(2);
  print(duration1); 

  CustomDuration duration2 = CustomDuration.fromMinutes(30); 
  print(duration2); 

  CustomDuration totalDuration = duration1 + duration2;
  print(totalDuration); 

  CustomDuration remainingDuration = duration1 - duration2;
  print(remainingDuration); 

  print(duration1 > duration2);
}
