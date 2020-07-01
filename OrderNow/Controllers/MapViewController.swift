//
//  MapViewController.swift
//  OrderNow
//
//  Created by Mahmoud Akl on 4/25/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    let defaults = UserDefaults.standard
    var orderDetails : OrderDetailsViewController?
    
    @IBAction func normalButton(_ sender: Any) {
        defaults.set(1, forKey: "MAPTYPE")
        
    }
    @IBAction func satelliteButton(_ sender: Any) {
        defaults.set(2, forKey: "MAPTYPE")
    }
    @IBAction func terranButton(_ sender: Any) {
        defaults.set(3, forKey: "MAPTYPE")
    }
    @IBAction func hybridButton(_ sender: Any) {
        defaults.set(4, forKey: "MAPTYPE")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}
