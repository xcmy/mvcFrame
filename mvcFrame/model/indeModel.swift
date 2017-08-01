//
//  indeModel.swift
//  mvcFrame
//
//  Created by 刘洋 on 2017/7/31.
//  Copyright © 2017年 LY. All rights reserved.
//

import UIKit
import SwiftyJSON
class indeModel: NSObject {

}
struct Weather {
    let yesterday:NSDictionary
    let city:String
    let fx:String
    let aqi:String
    let forecast:NSArray
    let ganmao:String
    let wendu:String
}
extension Weather {
    init(data:JSON) {
        let json = data["data"]
        let yesterday = json["yesterday"].dictionaryValue as NSDictionary
        let city = json["city"].stringValue
        let fx = json["fx"].stringValue
        let aqi = json["aqi"].stringValue
        let forecast = json["forecast"].arrayValue as NSArray
        let ganmao = json["ganmao"].stringValue
        let wendu = json["wendu"].stringValue
        
        self.init(yesterday: yesterday, city: city, fx: fx, aqi: aqi, forecast: forecast, ganmao: ganmao, wendu: wendu)
    }
}


