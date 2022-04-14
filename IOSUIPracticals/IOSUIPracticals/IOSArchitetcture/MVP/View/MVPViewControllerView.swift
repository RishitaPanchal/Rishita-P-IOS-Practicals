//
//  MVPViewControllerView.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 13/04/22.
//

import UIKit

protocol ViewProtocol {
    func success(comments: [Comments])
    func failure(message: String)
}

class MVPViewControllerView: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Instance variables
    private let presenter = MVPPresenter()
    private var userDetails = [Comments]()
    
    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        presenter.viewDelegate = self
        presenter.showUsersComments()
    }

}

// MARK: Extention conforming TableviewDelegate
extension MVPViewControllerView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}

// MARK: Extension Conforming TableviewDatasource
extension MVPViewControllerView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return MVPUsersCell.loadData(tableView, userDetails, indexPath)
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        presenter.didTapUser(user: userDetails[indexPath.row])
//    }
//
}

extension MVPViewControllerView: ViewProtocol {
    

func success(comments: [Comments]) {
    self.userDetails = comments
    DispatchQueue.main.async {
        self.tableView.reloadData()
    }
}

func failure(message: String) {
    print("Error")
}
}
