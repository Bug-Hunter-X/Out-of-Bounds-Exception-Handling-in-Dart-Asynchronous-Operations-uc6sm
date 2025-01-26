# Out of Bounds Exception Handling in Dart Asynchronous Operations

This repository demonstrates a common error in Dart when working with asynchronous operations and JSON data: accessing an index that might be out of bounds. The `bug.dart` file shows the erroneous code, and `bugSolution.dart` provides a solution to handle potential out of bounds exceptions.

## The Bug

The `fetchData` function in `bug.dart` fetches JSON data from an API.  It then attempts to access the element at index 10 (`jsonData[10]`). If the JSON array's length is less than 11, an `IndexOutOfRangeException` is thrown, causing the application to crash or produce unexpected results.

## The Solution

The `bugSolution.dart` file shows a corrected version of the `fetchData` function. It checks the length of the JSON array before accessing any element to prevent out of bound exceptions.  Appropriate error handling is implemented to provide a better user experience.

## How to Run

1. Clone this repository.
2. Ensure you have Dart SDK installed.
3. Navigate to the directory containing `bug.dart` or `bugSolution.dart`.
4. Run the file using the Dart command line: `dart bug.dart` or `dart bugSolution.dart`