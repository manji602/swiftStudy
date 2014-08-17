//
//  SampleViewController.swift
//  SwiftPractice
//
//  Created by jun.hashimoto on 2014/08/10.
//
//

import Foundation
import UIKit

class SampleViewController: UIViewController {
    @IBOutlet var button:UIButton?
    var _variableSample:variableSample?
    var _conditionalStatementSample:conditionalStatementSample?
    
    @IBAction func onClickButton() {
        initializeSamples()
        
        _variableSample?.sample()
        _conditionalStatementSample?.sample()
    }
    
    func initializeSamples() {
        _variableSample = variableSample()
        _conditionalStatementSample = conditionalStatementSample()
    }
}
