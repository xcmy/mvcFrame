//
//  httpManager.swift
//  mvcFrame
//
//  Created by 刘洋 on 2017/7/31.
//  Copyright © 2017年 LY. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

protocol RequestManager {
    var requestUrl:String {get}
    var method:HTTPMethod {get}
    var params:Parameters? {get}
}

extension RequestManager {
    func start(completion: @escaping (JSON) ->()) {
        Alamofire.request(self.requestUrl, method: self.method, parameters: self.params, encoding: URLEncoding.default).responseJSON { (response) in
            switch response.result {
            case .success(_):
                completion(JSON(response.result.value!))
            case .failure(_):
                print("\(response)")
            }
        }
    }
}


// MARK: - httpManager
class httpManager: NSObject {
    
}






