//
//  ViewController.swift
//  RefertreeNative
//
//  Created by Adarsha on 29/09/16.
//  Copyright © 2016 NousInfosystems. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
        if( self.revealViewController() != nil){
        menuBtn.target = self.revealViewController()
            menuBtn.action = #selector(SWRevealViewController.revealToggle(_:))
            print("Added Somtyhinghds")
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

