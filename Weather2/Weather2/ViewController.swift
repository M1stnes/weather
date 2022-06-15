//
//  ViewController.swift
//  Weather2
//
//  Created by Гость on 15.06.2022.
//

import UIKit
import CoreLocation
class ViewController: UIViewController {
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        startLocationManager()
       
    }
    func startLocationManager() {
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
            locationManager.pausesLocationUpdatesAutomatically = false
            locationManager.stopUpdatingLocation()
        }
    }
    func updateWeatherInfo(latitude: Double, longtitude: Double) {
        let session = URLSession.shared
        let url = URL(String: )
    }
}
extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdatelocations locations: [CLLocation]) {
        if let lastLocation = locations.last{
            print(lastLocation.coordinate.latitude, lastLocation.coordinate.longitude)
        }
    }
}
