let makeRandom = Function(arc4random_uniform)              // Function<UInt32, UInt32>
let stringFromData = Function(String.init(data:encoding:)) // Function<(Data, String.Encoding), String?>
let increment = Function { (x: Int) in x + 1 }             // Function<Int, Int>

let random = makeRandom.apply(100)               // 42, perhaps
let parsed = stringFromData.apply(Data(), .utf8) // Optional<String>.some("")
let incremented = increment.apply(6)             // 7
