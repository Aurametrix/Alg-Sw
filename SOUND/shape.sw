protocol Drawable {}

struct Polygon: Drawable {
  var corners: [CGPoint] = []
}

struct Circle: Drawable {
  var center: CGPoint
  var radius: CGFloat
}

struct Diagram: Drawable {
  var elements: [Drawable] = []
}
