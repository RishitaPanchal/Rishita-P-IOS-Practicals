//
//  SecondVCCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/03/22.
//

import Foundation
import UIKit

class VCOneCoordinator: Coordinator {
    
    // MARK: Instance variable
    var FirstNavController: UINavigationController?
    
    // MARK: Initializer
    init(_ navigationController: UINavigationController) {
        FirstNavController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        if let firstVc = UIStoryboard(name: "NavigationController", bundle: nil).instantiateViewController(withIdentifier: "FirstViewControllerByCoordinator") as? ViewControllerOneByCoordinator {
            firstVc.coordinator = self
            FirstNavController?.pushViewController(firstVc, animated: true)
        }
    }
    
    func finish() {
        FirstNavController?.popViewController(animated: true)
    }
    
    func goToThirdVC(to data: [String], _ delegate: BackWardDataPassing) {
        if let navController = FirstNavController {
            let secondVC = VCTwoCoordinator(navController)
            secondVC.startWithData(to: data, delegate)
        }
    }
    
}
