//
//  User.swift
//  GraygramPractice
//
//  Created by unbTech on 2017. 6. 8..
//  Copyright © 2017년 unbTech. All rights reserved.
//

import ObjectMapper

struct User: Mappable {
    var id: Int!
    var username: String!
    var photoID: String?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        username <- map["username"]
        photoID <- map["photoid"]
    }
}
