//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Emin Roblack on 1/30/19.
//  Copyright © 2019 emiN Roblack. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
  
  var childCoordinators = [Coordinator]()
  var navigationController: UINavigationController
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let vc = ViewController.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
  
  //MARK:- Creating storyboards ------------------------------------------------
  
  func testOne() {
    let vc = TestVC_1.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
  
  func testTwo() {
    let vc = TestVC_2.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
  
  //------------------------------------------------------------------------
  
  
  
}
