//
//  ItemsCell.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 12/04/22.
//

import UIKit

class MVCCeommentCell: UITableViewCell {
    
    // MARK: IBOutlets
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblComment: UILabel!
    
    // MARK: LoadData Fuction
    func loadData(_ tableView: UITableView, _ userDetails: [Comments], _ indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserDetailsCell", for: indexPath) as? MVCCeommentCell else { return UITableViewCell() }
        cell.lblEmail.text = String(userDetails[indexPath.row].email)
        cell.lblComment.text = String(userDetails[indexPath.row].body)
        return cell
    }
    
}
