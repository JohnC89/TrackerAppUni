//
//  RepCounter.swift
//  FitnessTrackerApp
//
//  Created by qubsys on 02/02/2021.
//

import Foundation

var plankCount = 0
var pressUpCount = 0

var plankState = false
var pressUpState = false


func repCounter (actionLabelCurrent: String) -> (movement: String, count: Int){
    
    if ((plankState == false) && (actionLabelCurrent == "Plank")){
        plankCount+=1
        plankState = true
    
        print("plank Count \(plankCount)")

        
        pressUpState = false
        
        return ("Plank", plankCount)
    }

if ((pressUpState == false) && (actionLabelCurrent == "Press-Up")){
    pressUpCount+=1
    pressUpState = true

    print("Press-Up Count \(pressUpCount)")

    
    plankState = false
    
    return ("Press-Up", pressUpCount)
}
    
    return ("", 0)

}
