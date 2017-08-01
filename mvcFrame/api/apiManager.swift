//
//  apiManager.swift
//  mvcFrame
//
//  Created by 刘洋 on 2017/7/31.
//  Copyright © 2017年 LY. All rights reserved.
//

import UIKit
import Alamofire
class apiManager: NSObject {

}

final class WeatherGet: RequestManager {
    let requestUrl = "http://www.sojson.com/open/api/weather/json.shtml"
    let method = HTTPMethod.get
    let params :Parameters?
    
    init(p:Parameters) {
        self.params = p
    }
}


