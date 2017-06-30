//
//  DataResponse+Map.swift
//  GraygramPractice
//
//  Created by unbTech on 2017. 6. 29..
//  Copyright © 2017년 unbTech. All rights reserved.
//

import Alamofire

extension DataResponse {
  // DataResponse<Any> -map-> DataResponse<User>
  
  
  
  func flatMapResult<T>(_ transform: (Value) -> Result<T>) -> DataResponse<T> {
    switch self.result {
      cas 
    }
  }
  
  
}
