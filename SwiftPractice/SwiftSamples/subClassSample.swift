//
//  subClassSample.swift
//  SwiftPractice
//
//  Created by jun.hashimoto on 2014/08/17.
//
//

import Foundation

class subClassSample : classSample {
    var age: Int = 0
    // メンバ変数にはgetter, setterを定義することができる
    var ageDays: Int {
        get {
            return age * 365
        }
    }
    
    init(name: String, age: Int) {
        super.init(name: name)
        self.age = age
    }

    // オーバーライドする場合はoverrideを先頭につける
    override func test() {
        println("This is overrided function")
    }
}