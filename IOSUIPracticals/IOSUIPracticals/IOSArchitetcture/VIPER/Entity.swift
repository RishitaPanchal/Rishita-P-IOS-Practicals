//
//  Entity.swift
//  IOSUIPracticals
//
//  Created by Rishita Panchal on 15/04/22.
//

import Foundation
// MARK: - Data class for MVP, MVC, MVVM
struct UserComments: Codable {
    
    let postID, id: Int
    let name, email, body: String

    enum CodingKeys: String, CodingKey {
        case postID = "postId"
        case id, name, email, body
    }
    
}
