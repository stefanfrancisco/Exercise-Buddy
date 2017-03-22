//
//  CardioNagivationViewController.swift
//  Excercise Buddy
//
//  Created by Stefan Francisco on 3/20/17.
//  Copyright © 2017 Kevin Manan. All rights reserved.
//

import UIKit
/**
 * Was going to use this for making a more transparent navigation header.
 * Will add on at a later time
 */
class CardioNagivationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
