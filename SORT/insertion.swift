func insertionSort(numberList: Array<Int>) -> Array<Int> { 

   //check for trivial case 

   guard numberList.count > 1 else { 
      return numberList 
  } 
  
  //mutated copy 
  var output = numberList 
  
  for primaryIndex in 0..<output.count { 
     let key = output[primaryIndex] 
     
     for var secondaryIndex = primaryIndex; secondaryIndex > -1; secondaryIndex-- { 
     
        if key < output[secondaryIndex] { 
        
           //move into correct position 
           output.removeAtIndex(secondaryIndex + 1) 
           
           output.insert(key, atIndex: secondaryIndex) 
           } 
        } 
    } 
    return output 
} 
