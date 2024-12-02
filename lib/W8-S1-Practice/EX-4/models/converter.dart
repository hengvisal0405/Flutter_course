enum Device {
  euro(0.95),
  riel(4100),
  dong(25382);

  final double rate;
  const Device(this.rate);
}
