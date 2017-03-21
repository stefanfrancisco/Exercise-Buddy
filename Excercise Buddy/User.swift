//
//  CardioExercises.swift
//  Excercise Buddy
//
//  Created by Kevin Manan on 3/20/17.
//  Copyright © 2017 Kevin Manan. All rights reserved.
//

import Foundation
import FirebaseDatabase

/**
 * Feel free to add more if you think user needs more variables
 */
struct User {
    
    //Registration items
    let name: String
    let email: String
    let password: String
    
    //Cardio statistics
    var numberOfMiles: Int
    var numberOfRuns: Int
    var averagePace: Double
    
    //Birthday, Weight, Height?
    
    
    let ref: FIRDatabaseReference?
    
    init(name: String, email: String, password: String, numberOfMiles: Int, numberOfRuns: Int, averagePace: Double){
        self.name = name
        self.email = email
        self.password = password
        self.numberOfMiles = numberOfMiles
        self.numberOfRuns = numberOfRuns
        self.averagePace = averagePace
        self.ref = nil
    }
    
    
    init(snapshot: FIRDataSnapshot) {
        //key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        name = snapshotValue["name"] as! String
        email = snapshotValue["email"] as! String
        password = snapshotValue["password"] as! String
        numberOfMiles = snapshotValue["numberOfMiles"] as! Int
        numberOfRuns = snapshotValue["numberOfRuns"] as! Int
        averagePace = snapshotValue["averagePace"] as! Double
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "name": name,
            "email": email,
            "password": password,
            "numberOfMiles": numberOfMiles,
            "numberOfRuns": numberOfRuns,
            "averagePace": averagePace
        ]
    }
    
}
