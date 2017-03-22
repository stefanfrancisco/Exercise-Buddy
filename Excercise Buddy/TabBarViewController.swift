//
//  TabBarViewController.swift
//  Excercise Buddy
//
//  Created by Stefan Francisco on 3/22/17.
//  Copyright © 2017 Kevin Manan. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor.black
        setupTabBarSeparators()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setupTabBarSeparators() {
        let itemWidth = floor(self.tabBar.frame.size.width / CGFloat(self.tabBar.items!.count))
        
        // this is the separator width.  0.5px matches the line at the top of the tab bar
        let separatorWidth: CGFloat = 0.5
        
        // iterate through the items in the Tab Bar, except the last one
        for i in 0...(self.tabBar.items!.count - 1) {
            // make a new separator at the end of each tab bar item
            let separator = UIView(frame: CGRect(x: itemWidth * CGFloat(i + 1) - CGFloat(separatorWidth / 2), y: 0, width: CGFloat(separatorWidth), height: self.tabBar.frame.size.height))
            
            // set the color to light gray (default line color for tab bar)
            separator.backgroundColor = UIColor.lightGray
            
            self.tabBar.addSubview(separator)
        }
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
