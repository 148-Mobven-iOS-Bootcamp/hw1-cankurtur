import UIKit

func findFibonacciNumbers(firstNumber: Int, secondNumber: Int) -> [Int] {
    var startNumber = 0
    var additionNumber = 1
    var result = 0

    var fiboNumbers = [Int]()

    while result < secondNumber {
        result = startNumber + additionNumber
        startNumber = additionNumber
        additionNumber = result

        if result >= firstNumber && result <= secondNumber {
            fiboNumbers.append(result)
        } else if result > secondNumber {
            break
        }
    }

    return fiboNumbers
}

var fiboNumberBetweenTwoNumbers = findFibonacciNumbers(firstNumber: 750, secondNumber: 1000)
print(fiboNumberBetweenTwoNumbers)
