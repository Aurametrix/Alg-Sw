func testBinarySearch(n: Int) {
  let odds = Array(stride(from: 1, through: n, by: 2))
  let result = flatMap(0...n) {binarySearch(odds, $0)}
  assert(result == Array(0..<odds.count))
  println("\(odds) are odd natural numbers")
  for it in result {
    println("\(it) is ordinal of \(odds[it])")
  }
}
 
testBinarySearch(12)
 
func flatMap<T, U>(source: [T], transform: (T) -> U?) -> [U] {
  return source.reduce([]) {(var xs, x) in if let x = transform(x) {xs.append(x)}; return xs}
}


//
//  Sort_PerformancesTests.swift
//  Sort PerformancesTests
//
//  Created by Ferdi Kızıltoprak on 22/04/15.
//  Copyright (c) 2015 Ferdi Kızıltoprak. All rights reserved.
//
import UIKit
import XCTest

class Sort_PerformancesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
