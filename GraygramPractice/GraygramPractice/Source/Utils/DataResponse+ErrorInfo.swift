//
//  DataResponse+ErrorInfo.swift
//  GraygramPractice
//
//  Created by unbTech on 2017. 6. 29..
//  Copyright © 2017년 unbTech. All rights reserved.
//

import Alamofire

extension DataResponse {
  func errorInfo() -> (field: String, message: String)? {
    guard let data = self.data,
      let json = (try? JSONSerialization.jsonObject(with: data)) as? [String: Any],
      let errorInfo = json["error"] as? [String: Any],
      let field = errorInfo["field"] as? String,
      let message = errorInfo["message"] as? String
      else { return nil}
    return (field, message)
    
  }
}
