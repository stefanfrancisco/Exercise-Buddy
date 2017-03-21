//
//  PilotViewController.swift
//  Excercise Buddy
//
//  Created by Stefan Francisco on 3/21/17.
//  Copyright © 2017 Kevin Manan. All rights reserved.
//

import UIKit
import QuartzCore
class PilotViewController: UIViewController {

    @IBOutlet var loginButton: UIButton!
    @IBAction func loginButtonAction(_ sender: UIButton) {
    }
    
    @IBOutlet var tourButton: UIButton!
    @IBAction func tourButtonAction(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeBackground()
        tourButton.layer.borderColor = UIColor.white.cgColor
        
       // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     * Creates Background
     */
    func initializeBackground(){
        let background = UIImage(named: "Cardio")
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
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
