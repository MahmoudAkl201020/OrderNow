//
//  OrderTableViewController.swift
//  OrderNow
//
//  Created by Mahmoud Akl on 4/22/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit


class OrderTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var orderCell : OrderCell?
    var orders = SampleData.generateTaskData()
//    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        let status  = CLLocationManager.authorizationStatus()
//        if status == .notDetermined {
//            locationManager.requestAlwaysAuthorization()
//            locationManager.requestWhenInUseAuthorization()
//            return
//        }
//        if status == .denied || status == .restricted {
//            let alert = UIAlertController(title: "App Location Services Disabled", message: "Please enable Location Services in App Settings", preferredStyle: .alert)
//            let settingAction = UIAlertAction(title: "Settings", style: .default) { (action) in
//                if let url = URL(string: UIApplicationOpenSettingsURLString) {
//                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
//                }
//            }
//            let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
//            alert.addAction(cancelAction)
//            alert.addAction(settingAction)
//
//            present(alert, animated: true, completion: nil)
//            return
//        }
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.delegate = self
//        locationManager.startUpdatingLocation()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderCell",
                                                for: indexPath) as! OrderCell
        
        let order = orders[indexPath.row]
        cell.task = order
        cell.orderController = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //        let task = tasks[indexPath.row]
        performSegue(withIdentifier: "MasterToDetails", sender: nil)
    }
    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
//        print("locations = \(locValue.latitude) \(locValue.longitude)")
//        locationManager.stopUpdatingLocation()
//    }
//
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
//        print("Error \(error)")
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
