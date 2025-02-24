# Objective-C Array Index Out of Bounds Crash

This repository demonstrates a common Objective-C error: accessing an array element using an index that's outside the valid range of indices (0 to array.count - 1).  This often results in a crash.

The `bug.m` file contains the erroneous code. The `bugSolution.m` file provides the corrected version, demonstrating how to safely check array bounds before accessing elements.

## How to Reproduce

1. Clone this repository.
2. Open the project in Xcode.
3. Run the `bug.m` code. It will likely crash. 
4. Now run the `bugSolution.m` code; it will run without crashing. 

## Solution

The key to fixing this is to always check the index before accessing the array element.  Using `if` statement to check the bounds, or other techniques like using `NSIndexSet` for more complex scenarios.  Consider handling the potential errors gracefully (e.g., logging an error message or returning a default value instead of crashing).