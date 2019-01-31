//
//  ViewController.swift
//  Coordinators
//
//  Created by Emin Roblack on 1/30/19.
//  Copyright © 2019 emiN Roblack. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
  
  weak var coordinator: MainCoordinator?

  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }

  @IBAction func testOneTapped(_ sender: Any) {
    coordinator?.testOne()
  }
  
  @IBAction func testTwoTapped(_ sender: Any) {
    coordinator?.testTwo()
  }
}

