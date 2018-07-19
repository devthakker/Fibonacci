import UIKit

func fibinacci(until : Int) -> String {
    var fibArray: Array = [0, 1]
    for fib in 0..<until {
        var addLastTwoArray = fibArray.suffix(2)
        func sum(array:[Int]) -> Int {
            var sum = 0
            for num in addLastTwoArray {
                sum += num
            }
            fibArray.append(sum)
            return sum
        }
        sum(array: fibArray)
    }
    let fibiacciNumbers = fibArray.map {
        String($0)
    }
    return String("numbers: \n \((fibiacciNumbers).joined(separator: ","))")
}
print(fibinacci(until: 50))

