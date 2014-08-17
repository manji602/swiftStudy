//
//  functionSample.swift
//  SwiftPractice
//
//  Created by jun.hashimoto on 2014/08/17.
//
//

import Foundation

class functionSample {
    func sample() {
        var greeting: String = functionSampleWithName("Bob", age: 20) // Swift公式ドキュメントと異なる部分、第二引数にはラベルを付けないといけない模様
        println(greeting)
        
        var hash = functionSampleReturnsHash()
        println(hash.min)
        println(hash.max)
        
        var arraySample = ["A", "B", "C"]
        functionSampleWithArray(arraySample)
        
        var sum = functionSampleWithVariableArray(1, 2, 3, 4)
        
        
        // mapのサンプル
        var numberArray1 = [ 1 ,2 ,3, 4 ]
        numberArray1.map({
            (number: Int) -> Int in
            return 3 * number
        })
        var numberArray2 = [ 10, 20, 30, 40 ]
        numberArray2.map({ number in 3 * number })
        
        // sortのサンプル
        var numberArray3 = [ 5, 1, 3, 199 ]
        sorted(numberArray3) { $0 > $1 }
    }
    // StringとNSIntgerを受け取ってStringを返す関数のサンプル
    func functionSampleWithName(name: String, age: Int) -> String {
        return "Hello \(name), your age is \(age)"
    }
    // 連想配列を返す関数のサンプル
    func functionSampleReturnsHash() -> (min: Int, max: Int) {
        var min: Int = 0
        var max: Int = 100
        return (min, max)
    }
    // 配列を受け取る関数のサンプル
    func functionSampleWithArray(array: [String]) {
        for element in array {
            println(element)
        }
    }
    // 可変な引数の数を受け取れる関数のサンプル
    func functionSampleWithVariableArray(numbers: Int...) -> Int {
        var sum: Int = 0
        for element in numbers {
            sum = sum + element
        }
        return sum
    }
    // 関数はネストできる
    func functionSampleNest() {
        func nestedFunction() {
            println("this is nested function")
        }
        nestedFunction()
    }
    // 関数を戻り値にすることもできる
    func functionSampleReturnsFunction1() -> (String -> String) {
        func returnFunctionWithMessage(message: String) -> String {
            return "This is returned function " + message
        }
        return returnFunctionWithMessage
    }
    func functionSampleReturnsFunction2() -> () {
        func returnFunction() {
            println("This is returned function")
        }
        return returnFunction()
    }
    // 関数を引数にすることもできる
    func functionSampleWithFunction(function: String -> String) {
        var returnString: String = function("Hello")
        println(returnString)
    }
}