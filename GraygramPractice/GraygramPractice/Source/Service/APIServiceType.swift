//
//  APIServiceType.swift
//  GraygramPractice
//
//  Created by unbTech on 2017. 6. 29..
//  Copyright © 2017년 unbTech. All rights reserved.
//

protocol APIServiceType {
    
}

extension APIServiceType {
    /// path를 가지고 url을 만들어서 반환합니다.
    /// 
    /// - parameter path: API path (e.g. /me)
    static func url(_ path: String) -> String {
        return "https://api.graygram.com" + path
    }
}
