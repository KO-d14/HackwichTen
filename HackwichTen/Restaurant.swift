//
//  Restaurant.swift
//  HackwichTen --- INTRO TO MAPKIT (IN CLASS ASSIGNMENT)
//
//  Created by Aina Kodaira on 11/9/23.
//

/*
//Part 4: Create a Restaurant Object to hold data & display in annotation (7 points)
    1. Go to File-New-File
    2. Select, Cocoa Touch Class
    3. Name the new class, “Restaurant” and be sure it's a subclass of NSObject.
*/
import UIKit
/*PART4-#4. Because we’re creating a map annotation, we need to:
    A)Import MapKit Framework
    B) >>> code below
*/
import MapKit

//>>> PART4-#4.B. Adopt the MKAnnotation protocol
class Restaurant: NSObject, MKAnnotation {
  /*
PART4-#5. Let’s set up the Restaurant class.
    A.)  Declare three variables that will hold data that the annotation will access 
    B.)
   */
    let restaurantTitle: String?
    let restaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    // >>> PART4-#5 Initialize the MKAnnotation object
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
             {
                 self.restaurantTitle = title
                 self.restaurantType = type
                 self.coordinate = coordinate
                 
                 super.init()
                 
             } // init closing bracket 
    
    var subtitle: String?
        {
            //Problem Set #3 Code Switch
            return restaurantType
        } // var subtitle closing bracket
}
