//
//  ViewController.swift
//  OrderNow
//
//  Created by Mahmoud Akl on 4/12/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var helpBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //shadowView style
        shadowView.layer.cornerRadius = 5
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        shadowView.layer.shadowRadius = 2
        shadowView.layer.shadowOpacity = 0.3
        //buttons style
        startBtn.layer.cornerRadius = 3
        helpBtn.layer.cornerRadius = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    @IBAction func startButton(_ sender: Any) {
        self.phoneTextField.resignFirstResponder()
        self.passTextField.resignFirstResponder()
        self.urlTextField.resignFirstResponder()
        print("Start buutton tapped")
    }
    @IBAction func helpButton(_ sender: Any) {
        self.phoneTextField.resignFirstResponder()
        self.passTextField.resignFirstResponder()
        self.urlTextField.resignFirstResponder()
        print("Help button tapped")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

