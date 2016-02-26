//
//  ViewController.swift
//  WeatherForecast
//
//  Created by 杨振 on 16/2/24.
//  Copyright © 2016年 杨振. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var infoModel = WeatherForecaseInfo();
        infoModel.getWeatherForecastInfoByInternet();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

