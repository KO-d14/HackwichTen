//
//  ViewController.swift
//  HackwichTen ---- INTRO TO MAPKIT (IN CLASS ASSIGNMENT)
//
//  Created by Aina Kodaira on 11/9/23.
//


import UIKit
/*
**** HACKWICH 10 IN-CLASS ASSIGNMENTS (5 PARTS TOTAL) ****
PART 1 - (setup)
PART 2: Set up Map Kit View Object (4 points)
 #1. In the object library, drag and drop a “Map Kit View” on to your VC and stretch the view across your VC:
 #2. More set up for Map Kit View & import frameworks:
    A. >>> code below
    B. import MapKit framework
    C. import CoreLocation framework 
*/
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
//>>>PART2-#2.A) Create an outlet for your Map Kit View and name it “mapView”
    @IBOutlet weak var mapView: MKMapView!
    
//PART3-#1.A)Declare a constant “initialLocation” which is a CLLocation (or location object) and assign it to the latitude and longitude coordinates for the UHWO campus.
    let initialLocation = CLLocation(latitude: 21.361888, longitude:
         -158.056022)
//PART3-#1.B) Declare a constant “regionRadius” which represents the radius in meters that the map will display from “initialLocation” which is the location of UHWO in this example.
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//PART3-#3 displays the map when it first opens
        centerMapOnLocation(location: initialLocation)
        
/*
PART 5: Creating an Annotation to Display a Restaurant location on Map (3 points)
        Keep in mind that in order to display an annotation, we need to set the annotation to display in viewDidLoad. This means that the annotation will show when the app initially loads.

        1. Go to your ViewController.swift file, and in viewDidLoad enter the following lines of code:
*/
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American",
                       coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
                mapView.addAnnotation(restaurantOne)
        
// PROBLEM SET #1
        let restaurantTwo = Restaurant(title: "GyuKaku", type: "Japanese BBQ",
                       coordinate: CLLocationCoordinate2D(latitude: 21.33085443314223, longitude: -158.09409331057617))
                mapView.addAnnotation(restaurantTwo)
    }
    
//PART3-#2) Add the function,  centerMapOnLocation, underneath the viewDidLoad.
//This function, centerMapOnLocation centers the map around the CLLocation by setting the coordinate region and map region.
    func centerMapOnLocation(location:CLLocation)
           {
               let coordinateRegion = MKCoordinateRegion(center: location.coordinate,

               latitudinalMeters: CLLocationDistance(regionRadius),
               longitudinalMeters: CLLocationDistance(regionRadius))
               mapView.setRegion(coordinateRegion, animated: true)

           }
}



