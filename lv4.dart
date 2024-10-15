class Distance {
  final double _meters;

  const Distance(this._meters);

  Distance.kms(double kilometers) : _meters = kilometers * 1000;

  Distance.meters(double meters) : _meters = meters;

  Distance.cms(double centimeters) : _meters = centimeters / 100;

  double get kms => _meters / 1000;

  double get meters => _meters;

  double get cms => _meters * 100;

  Distance operator +(Distance other) {
    return Distance(this._meters + other._meters);
  }
  @override
  String toString() {
    return 'Distance: ${_meters} meters';
  }
}

void main() {
  Distance d1 = Distance.kms(3.4);    
  Distance d2 = Distance.meters(1000); 

  Distance result = d1 + d2;
  print('Total Distance in kilometers: ${result.kms} kms');  
  print('Total Distance in meters: ${result.meters} meters'); 
  print('Total Distance in centimeters: ${result.cms} cms'); 
}
