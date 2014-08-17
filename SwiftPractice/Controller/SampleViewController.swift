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
    
    @IBAction func onClickButton() {
        initializeSamples()
        
        _variableSample?.sample()
    }
    
    func initializeSamples() {
        _variableSample = variableSample()
    }
}
