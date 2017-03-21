//
//  CardioExercises.swift
//  Excercise Buddy
//
//  Created by Kevin Manan on 3/20/17.
//  Copyright © 2017 Kevin Manan. All rights reserved.
//

import Foundation
import FirebaseDatabase
//model for Cardio

struct CardioExercises {
    
    let name: String
    let distance: String
    let time: String
    let ref: FIRDatabaseReference?
    
    init(name: String, distance: String, time: String = "") {
        self.time = time
        self.name = name
        self.distance = distance
        self.ref = FIRDatabase.database().reference(withPath: "User/Stefan Francisco")
    }
    
    init(snapshot: FIRDataSnapshot) {
        //key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        name = snapshotValue["name"] as! String
        distance = snapshotValue["distance"] as! String
        time = snapshotValue["time"] as! String
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "name": name,
            "distance": distance,
            "time": time
        ]
    }
    
}
