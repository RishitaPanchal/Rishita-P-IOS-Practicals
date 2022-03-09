//
//  FirstVCCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/03/22.
//

import Foundation
import UIKit

class HomeVCCoordinator: Coordinator {
    
    // MARK: Instance method
    var HomeNavController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        HomeNavController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        if let firstVC = UIStoryboard(name: "NavigationController", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController {
            HomeNavController?.pushViewController(firstVC, animated: true)
        }
    }
    
    func goToSecond() {
        if let navController = HomeNavController {
            let secondVC = VCOneCoordinator(navController)
            secondVC.start()
        }
    }
    
    func finish() {
        HomeNavController?.popViewController(animated: true)
    }
  
}
