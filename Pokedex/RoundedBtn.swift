//
//  RoundedBtn.swift
//  Pokedex
//
//  Created by Yaz on 12/1/15.
//  Copyright © 2015 Yasu Tanaka. All rights reserved.
//
import Foundation
import UIKit

class RoundedBtn: UIButton {
    
    required init(coder aDecoder: NSCoder) {
    
    super.init(coder: aDecoder)!
    self.layer.cornerRadius = 5.0
    }
    
}
