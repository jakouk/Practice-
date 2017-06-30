//
//  Feed.swift
//  GraygramPractice
//
//  Created by unbTech on 2017. 6. 29..
//  Copyright © 2017년 unbTech. All rights reserved.
//

import ObjectMapper

struct Feed: Mappable {
    var posts: [Post]?
    var nextURLString: String?
    
    init?(map: Map){
    }
    
    mutating func mapping(map: Map){
        self.posts <- map["data"]
        self.nextURLString <- map["paging.next"]
    }
}
