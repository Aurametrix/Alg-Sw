let a = [1, 2, 3, 4, 5]
println(a.reduce(0, +)) // prints 15
println(a.reduce(1, *)) // prints 120
 
println(reduce(a, 0, +)) // prints 15
println(reduce(a, 1, *)) // prints 120

import Foundation
 
let input = NSFileHandle.fileHandleWithStandardInput()
 
let data = input.availableData
let str = NSString(data: data, encoding: NSUTF8StringEncoding)!
 
let nums = str.componentsSeparatedByString(" ")
let a = (nums[0] as String).toInt()!
let b = (nums[1] as String).toInt()!
 
print(" \(a + b)")
