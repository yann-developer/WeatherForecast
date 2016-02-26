//
//  WeatherForecastInfo.swift
//  WeatherForecast
//
//  Created by 杨振 on 16/2/25.
//  Copyright © 2016年 杨振. All rights reserved.
//

import Foundation
import Alamofire

class WeatherForecaseInfo {
    /**    基本数据结构
    <?xml version="1.0" encoding="utf-8" ?>
    <root>
        <success>1</success>
        <result>
            <weaid>1</weaid>
            <days>2014-07-30</days>
            <week>星期三</week>
            <cityno>beijing</cityno>
            <citynm>北京</citynm>
            <cityid>101010100</cityid>
            <temperature>29℃/24℃</temperature>
            <humidity>84.2℉/75.2℉</humidity>
            <weather>阴转晴</weather>
            <weather_icon>http://api.k780.com:88/upload/weather/d/2.gif</weather_icon>
            <weather_icon1>http://api.k780.com:88/upload/weather/d/0.gif</weather_icon1>
            <wind>微风</wind>
            <winp>小于3级</winp>
            <temp_high>29</temp_high>
            <temp_low>24</temp_low>
            <humi_high>84.2</humi_high>
            <humi_low>75.2</humi_low>
            <weatid>3</weatid>
            <weatid1>1</weatid1>
            <windid>1</windid>
            <winpid>2</winpid>
        </result>
    </root>
    */
    var weaid:NSString?;
    var days:NSString?;
    var week:NSString?;
    var cityno:NSString?;
    var citynm:NSString?;
    var cityid:NSString?;
    var temperature:NSString?;
    var humidity:NSString?;
    var weather:NSString?;
    var weather_icon:NSString?;
    var wind:NSString?;
    var winp:NSString?;
    var temp_high:NSString?;
    var temp_low:NSString?;
    var humi_high:NSString?;
    var humi_low:NSString?;
    
    
    //根据地区编码获取天气信息
    func getWeatherForecastInfoByInternet(){
        Alamofire.request(.GET, "http://api.k780.com:88/?app=weather.today&weaid=1&appkey=10003&sign=b59bc3ef6191eb9f747dd4e83c99f2a4&format=json")
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }
}
