//
//  Coordinator.swift
//  Coordinators
//
//  Created by Emin Roblack on 1/30/19.
//  Copyright © 2019 emiN Roblack. All rights reserved.
//

import UIKit

/**
 # Protocol description here
 */

protocol Coordinator {
  var childCoordinators: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  
  func start()
}


