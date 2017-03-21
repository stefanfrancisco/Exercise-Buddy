//
//  FirstViewController.swift
//  Excercise Buddy
//
//  Created by Kevin Manan on 3/20/17.
//  Copyright © 2017 Kevin Manan. All rights reserved.
//

import UIKit
import FirebaseDatabase


class CardioViewController: UIViewController {
    var initialized = false;
    @IBOutlet var numberOfMilesDisplay: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeBackground()
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
  

}

