//
//  ThirdVCCoordinator.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/03/22.
//

import Foundation
import UIKit

class VCTwoCoordinator: Coordinator {
   
    // MARK: INstance variable
    var SecondNavController: UINavigationController?

    // MARK: Initializers
    init(_ navigationController: UINavigationController) {
        SecondNavController = navigationController
    }
    
    // MARK: Protocol methods
    func start() {
        if let secondVC = UIStoryboard(name: "NavigationController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewControllerByCoordinator") as? ViewControllerTwoByCoordinator {
            secondVC.coordinator = self
            SecondNavController?.pushViewController(secondVC, animated: true)
        }
    }
    
    func startWithData(to data: [String], _ delegate: BackWardDataPassing) {
        if let secondVC = UIStoryboard(name: "NavigationController", bundle: nil).instantiateViewController(withIdentifier: "SecondViewControllerByCoordinator") as? ViewControllerTwoByCoordinator {
            secondVC.coordinator = self
            secondVC.recievedItems = data
            secondVC.delegate = delegate
            SecondNavController?.pushViewController(secondVC, animated: true)
        }
    }
    
    func finish() {
        SecondNavController?.popViewController(animated: true)
    }

}
