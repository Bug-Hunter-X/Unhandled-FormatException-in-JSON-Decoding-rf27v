# Unhandled FormatException in JSON Decoding (Dart)

This repository demonstrates a common error in Dart applications involving JSON decoding: failing to handle `FormatException` when the JSON data is invalid.

The `bug.dart` file contains the flawed code. The `bugSolution.dart` file provides the corrected version.

## Problem

The original code uses a generic `catch` block to handle all exceptions, obscuring potential errors related to malformed JSON.  A more specific `catch` statement is needed for better error handling and debugging.

## Solution

The solution uses a `try-catch` block to specifically handle `FormatException`, providing more informative error messages and preventing crashes due to invalid JSON data. 