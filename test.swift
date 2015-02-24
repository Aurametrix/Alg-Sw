#!/usr/bin/env xcrun swift

import Foundation

println("Content-Type: text/html")
println("Content:")
println("")
println("1. Process.argument(s):<br />")
for s in Process.arguments {
    println(s + "<br />")
}
println("<br />")

let env: Dictionary = NSProcessInfo().environment

if let requestMethod: Optional = env["REQUEST_METHOD"] {
    println("2. Request method is: \(requestMethod!)<br /><br />")
}

println("3. Number of environment variables: \(env.count)<br /><br />")

println("4. List environment:<br />")
for key in env.keys {
    println("\(key) == \(env[key]!)<br />")
}
