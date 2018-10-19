for i in 0...100 {
        switch (i % 3, i % 5) {
            case (0, 0): print("FizzBuzz")
            case (0, _): print("Fizz")
            case (_, 0): print("Buzz")
            case (_, _): print("\(i)")
        }
    }
