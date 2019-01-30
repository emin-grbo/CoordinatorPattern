//
//  Storyboarded.swift
//  Coordinators
//
//  Created by Emin Roblack on 1/30/19.
//  Copyright © 2019 emiN Roblack. All rights reserved.
//

import UIKit

protocol Storyboarded {
  static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
  
  static func instantiate() -> Self {
    // this pulls out "MyApp.MyViewController"
    let fullName = NSStringFromClass(self)
    
    // this splits the dot and uses everything after
    let className = fullName.components(separatedBy: ".")[1]
    
    // load out storyboard
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    
    // Instantiate vc with the identifier and force cast it as the type that was requested from
    return storyboard.instantiateViewController(withIdentifier: className) as! Self
  }
}
