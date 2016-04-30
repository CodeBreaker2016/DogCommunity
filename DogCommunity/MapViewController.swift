//
//  MapViewController.swift
//  DogCommunity
//
//  Created by Alumno on 26/04/16.
//  Copyright © 2016 TEAM PUE. All rights reserved.
//

import UIKit

import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate{
    
    
    var manager = CLLocationManager()

    @IBOutlet weak var map: MKMapView!
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        map.delegate = self
        
        manager.delegate = self
        
        if (manager.respondsToSelector(Selector("requestWhenInUseAuthorization"))) {
        
            manager.requestWhenInUseAuthorization()
        }
    }

    
    override func didReceiveMemoryWarning() {

        super.didReceiveMemoryWarning()
    }

    
    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
     
        let region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 700, 700)
        
        map.setRegion(map.regionThatFits(region), animated: true)
        
        let point = MKPointAnnotation()
        
        point.coordinate = userLocation.coordinate
        
        point.title = "Can you see me?"
        
        point.subtitle = "Right Here!"
        
        map.addAnnotation(point)
    }

}
