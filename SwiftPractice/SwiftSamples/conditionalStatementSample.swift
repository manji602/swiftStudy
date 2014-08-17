//
//  conditionalStatementSample.swift
//  SwiftPractice
//
//  Created by jun.hashimoto on 2014/08/17.
//
//

import Foundation

class conditionalStatementSample {
    func sample() {
        // 配列の繰り返しはfor [配列の要素] in [配列名]
        var arraySample = ["Lincle", "tricoro", "SPADA"]
        for version in arraySample {
            if version == "SPADA" {
                println("current version is " + version)
            }
        }
        var hashSample = [
            "key1" : "value1",
            "key2" : "value2",
            "key3" : "value3"
        ]
        for (key, value) in hashSample {
            println("key is " + key + " ,and value is " + value)
        }
        
        // switch文のsample
        var version = "IIDX Lincle"
        switch version {
        case "IIDX tricoro" :
            println("This is tricoro")
        case "IIDX SPADA" :
            println("This is SPADA")
        case var x where x.hasPrefix("IIDX") : // 先頭にIIDXという文字列がある場合
            println("This has prefix IIDX!!")
        case var x where x.hasSuffix("IIDX") : // 末尾にIIDXという文字列がある場合
            println("This has suffix IIDX!!")
        case "IIDX Lincle" :
            println("This is Lincle") // breakを書かなくてもこの行には飛ばない(デフォルトでbreakが入っている？)
        default : // defaultを宣言しないとエラーになる
            break
        }
        
        // while文のsample
        var count = 2
        while count < 100 {
            count = count + 2
        }
        
        do {
            count = count - 2
        } while count > 0
        
        // for文のsample
        for i in 1..<4 {
            println(i)
        }
        
        for var j = 0; j < 4; ++j { // =や<の前後にスペースを入れないとコンパイルエラーになる
            println(j)
        }
    }
}