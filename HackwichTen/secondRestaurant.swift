//
//  secondRestaurant.swift
//  HackwichTen - PROBLEM SET #1
//
//  Created by Aina Kodaira on 11/11/23.
//

/* 
 Problem Set #1 (6 points):
 1. (2 points) Get the latitude and longitude coordinates of a second restaurant near Kalapawai in Kapolei from Google Maps. Check out this video if you need to learn how to get coordinates from Google maps. <-- DONE
 21.33085443314223, -158.09409331057617
 ^ for GyuKaku Kapolei
 
 2. (2 points) Add an annotation for that second restaurant so it appears on your map. Please be sure to add a title and type of restaurant to your map annotation. Hint: Look back at Hackwich #10: Part 7 in which you added the first annotation to your map for Kalapawai restaurant. <-- DONE
 3. 🤔Code Switch: (2 points) Make a code switch so that the “type” of the restaurant shows up in the annotation rather than the title of the restaurant.<-- DONE
 4. 📽️ (6 points) Record your simulator and push up your final code to Github. Please note: select your annotation to demonstrate that you accomplished the code switch (#3). Please keep in mind that in order to receive full credit, your maps and annotations must display in your simulator.
 Submit your recording link in Laulima for this assignment.
 */

import UIKit
import MapKit

class secondRestaurant: NSObject {
    // PS#1-#2 MKAnnotation
    let secondRestaurantTitle: String?
    let secondRestaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
             {
                 self.secondRestaurantTitle = title
                 self.secondRestaurantType = type
                 self.coordinate = coordinate
                 
                 super.init()
                 
             } // init closing bracket
    
    var subtitle: String?
        {
            //Problem Set#1-#3 Code Switch
            return secondRestaurantType
        } // var subtitle closing bracket
     
}

