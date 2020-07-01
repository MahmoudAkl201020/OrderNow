//
//  SettingsTableViewController.swift
//  OrderNow
//
//  Created by Mahmoud Akl on 4/24/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    @IBOutlet weak var chooseLanguageLabel: UILabel!
    @IBOutlet weak var mapLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            chooseLanguageLabel.becomeFirstResponder()
        }
    }
}


// MARK: - IBActions
extension SettingsTableViewController {
    
    @IBAction func cancelToSettingViewController(_ segue: UIStoryboardSegue) {
        dismiss(animated: true)
    }
}
