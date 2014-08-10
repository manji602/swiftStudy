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
    
    @IBAction func onClickButton() {
        NSLog("clicked!")
    }
}
