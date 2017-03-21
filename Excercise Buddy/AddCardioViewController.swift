//
//  AddCardioViewController.swift
//  Excercise Buddy
//
//  Created by Kevin Manan on 3/20/17.
//  Copyright © 2017 Kevin Manan. All rights reserved.
//

import UIKit
import FirebaseDatabase

class AddCardioViewController: UIViewController {
    /**
     * See database. Sets it within user's account. 
     * Still need to learn how to call the path via user's name,
     * so user name is not hardcoded.
     * I would believe it is something with NSUserData
     */
    var ref = FIRDatabase.database().reference(withPath: "User/Stefan Francisco/Exercises")
    
    override func viewDidLoad() {
        super.viewDidLoad()

//ref.observe(.value, with: {snapshot in print(snapshot.value)})
//        ref.observe(.value, with: {snapshot in
//            var newItems: [CardioExercises] = []
//            
//            for item in snapshot.children{
//                let ExItem = CardioExercises(snapshot: item as! FIRDataSnapshot)
//                newItems.append(ExItem)
//            }
//            //self.Items.text = newItems.popLast()
//            print("\n\n" + String(describing: newItems.popLast()!.name) + "\n\n")
//        })
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var ExerciseName: UITextField!
    @IBOutlet var Distance: UITextField!
    @IBOutlet var Time: UITextField!
    @IBAction func AddExercise(_ sender: UIButton) {
        let date = Date()
        let name = ExerciseName.text
        let distance = Distance.text
        let time = Time.text
        let exercise = CardioExercises(name: name!, distance: distance!, time: time!)
        let ExerciseRef = self.ref.child(date.description)
        ExerciseRef.setValue(exercise.toAnyObject())
   
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
