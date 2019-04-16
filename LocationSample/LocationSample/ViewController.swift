//
//  ViewController.swift
//  LocationSample
//
//  Created by 伊藤凌也 on 2019/04/16.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    lazy var manager: CLLocationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        manager.requestWhenInUseAuthorization()
        manager.delegate = self
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            manager.distanceFilter = 10
            manager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        let latitude = location.coordinate.latitude
        let longitude = location.coordinate.longitude
        print("latitude: \(latitude), longitude: \(longitude)")
    }
}
