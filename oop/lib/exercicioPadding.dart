void main() {
  Padding p = new Padding();
  var msg = p.toString();
  print(msg);
  Padding h = new Padding.horizontal(10);
  print(h);
  Padding v = new Padding.vertival(5);
  print(v);
  Padding sy = new Padding.symmetric(horizontal: 10 , vertical: 5);
  print(sy);
}
//----------------------------------------------------------------------//
class Padding {
  double? right;
  double? left;
  double? top;
  double? bottom;
//----------------------------------------------------------------------//
  Padding({this.top = 0, this.bottom = 0, this.left = 0, this.right = 0});
//----------------------------------------------------------------------//
  Padding.horizontal(double value) {
    this.left = value;
    this.right = value;
    this.bottom = 0;
    this.top = 0;
  }
//----------------------------------------------------------------------//
  Padding.vertival(double value) {
    this.bottom = value;
    this.top = value;
    this.right = 0;
    this.left = 0;
  }
//----------------------------------------------------------------------//
  Padding.symmetric({double horizontal = 0, double vertical = 0}){
    this.bottom = vertical;
    this.top = vertical;
    this.right = horizontal;
    this.left = horizontal;
  }
//----------------------------------------------------------------------//
  @override
  String toString() {
    return "Padding top: ${this.top}, Padding bottom: ${this.bottom}, Padding left: ${this.left}, Padding right: ${this.right}";
  }
}
