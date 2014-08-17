//
//  variableSample.swift
//  SwiftPractice
//
//  Created by jun.hashimoto on 2014/08/17.
//
//

import Foundation
import UIKit

class variableSample {
    func sample() {
        /* 変数・定数 */
        // 定数はletで定義する
        let CONSTANTS = 1
        // 変数はvarで定義する
        var variables = 0
        
        // 型を明示的に示す場合は変数名の後ろにコロンを付ける
        let CONSTANTS_DOUBLE: Double = 1.0
        
        // キャストする場合は型()で呼び出す
        var messageHeader: String = "CONSTANTS_DOUBLE is "
        var message: String = messageHeader + String(CONSTANTS)
        println("message : " + message)
        
        // 型を明示された変数はキャスト出来ない
        // var message: String = messageHeader + String(CONSTANTS_DOUBLE)
        
        // ダブルクォートされたString内に変数を入れる場合は、\()で定義する
        let NUM_OF_APPLES: NSInteger = 5
        var appleSentence: String = "I have \(NUM_OF_APPLES) apples"
        println(appleSentence)

        /* 配列・連想配列 */
        // 配列は[]で定義する
        var arraySample = ["Lincle", "tricoro", "SPADA"]
        var currentIIDXVersion = arraySample[2]
        println("Current IIDX Version is \(currentIIDXVersion)")
        
        // 連想配列はコロンで結合する
        var hashSample = [
            "度胸兄弟" : "DIAVOLO",
            "ユニバーサル度胸兄弟" : "Thor's Hammer"
        ]
        // 要素を追加する場合は変数名の後に[]をつける
        hashSample["ギュ〜っとしたい♥Prim"] = "キャトられ♥恋はモ～モク"
        
        // 空の配列や連想配列を定義する場合は、以下のように宣言
        var emptyArraySample = [String]()
        var emptyArraySample2 = [] // 型を明示しない場合
        var emptyHashSample = [String: String]()
        var emptyHashSample2 = [:] // 型を明示しない場合
        
        /* optional value */
        // 変数の型の後ろに?をつけるとoptional valueとして取り扱われる
        var optionalString: String? = "this is optional value"
        println (optionalString)  // Optional("this is optional value")と出力される
        println (optionalString?) // Optional("this is optional value")と出力される
        println (optionalString!) // this is optional valueと出力される
        optionalString = nil // nilを代入可能
        println (optionalString)
        // ?をつけないとnilは代入できない
        var notOptionalString: String = "this is not optional value"
        // notOptionalString = nil // エラーになる
        
    }
}