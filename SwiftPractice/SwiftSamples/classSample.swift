//
//  classSample.swift
//  SwiftPractice
//
//  Created by jun.hashimoto on 2014/08/17.
//
//

import Foundation

class classSample {
    var name: String
    
    // イニシャライザはfuncをつけない
    init(name: String) {
        self.name = name
    }
    
    func test() {
        println("This is test function")
    }
}