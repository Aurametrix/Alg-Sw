 func bubbleSort(numberList: Array<Int>) -> 

Array<Int> { 

          //check for trivial case 
          guard numberList.count > 1 else { 
              return numberList 
          } 
          //mutated copy 
          var output = numberList 
          
          for primaryIndex in 0..<numberList.count { 
          let passes = (output.count - 1) - 
  primaryIndex 
  
          for secondaryIndex in 0..<passes { 
              let key = output[secondaryIndex] 
              
              //compare / swap positions 
              
              if (key > output[secondaryIndex + 1]) { 
                  swap(&output[secondaryIndex], &output[secondaryIndex + 1]) } 
              } 
              
          } 
          return output 
          
  } 
