//
//  UserService.swift
//  GraygramPractice
//
//  Created by unbTech on 2017. 6. 29..
//  Copyright © 2017년 unbTech. All rights reserved.
//

import Alamofire
import ObjectMapper

struct UserService: APIServiceType {
    static func me(_ completion: @escaping (DataResponse<User>) -> Void) {
        let urlString = self.url("/me")
        Alamofire.request(urlString)
            .validate(statusCode: 200..<400)
            .responseJSON {_ in }
    }
}
