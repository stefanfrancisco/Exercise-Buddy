//
//  FirstViewController.swift
//  Excercise Buddy
//
//  Created by Kevin Manan on 3/20/17.
//  Copyright © 2017 Kevin Manan. All rights reserved.
//

import UIKit
import FirebaseDatabase
import EFCountingLabel

class CardioViewController: UIViewController {
    var initialized = false;
    @IBOutlet weak var numberOfMilesDisplay: EFCountingLabel!
    @IBOutlet var menuButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeBackground()
        setupLabels()
        startCount()
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
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
        imageView.alpha = 0.6
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }
  
    func setupLabels(){
        //storyboard
        self.numberOfMilesDisplay.method = .easeInOut
        self.numberOfMilesDisplay.format = "%d"
        
        
    }
    func startCount() {
        self.numberOfMilesDisplay.countFrom(0, to: 328)
    }

}

