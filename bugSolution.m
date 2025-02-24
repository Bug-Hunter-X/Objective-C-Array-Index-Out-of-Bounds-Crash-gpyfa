The solution is to check the index before accessing the array element, ensuring it's within the valid range. 

```objectivec
NSArray *myArray = @[@1, @2, @3];
NSInteger index = 5;

NSNumber *value = nil; // Initialize to nil
if (index >= 0 && index < myArray.count) {
    value = myArray[index];
} else {
    NSLog(@"Index out of bounds: %ld", (long)index); // Handle the error gracefully
}

NSLog(@"Value: %@
", value); 
```

This improved code prevents crashes by first checking if the index is valid. If the index is out of bounds, it handles the situation by printing a message to the console, which is a more robust approach than simply letting the program crash.