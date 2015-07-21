var s = ""
if s.isEmpty { // alternately, s == ""
  println("s is empty")
} else {
  println("s is not empty")
}

let bat = "BAT"
let man = "MAN"

let batman = "\(bat)\(man)" // "BATMAN" - \(bat) will be replaced with "BAT" and \(man) with "MAN" 

println("\(bat) + \(man) = \(batman)")
// "BAT + MAN = BATMAN"
