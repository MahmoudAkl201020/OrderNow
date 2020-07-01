//
//  OrderDetailsViewController.swift
//  OrderNow
//
//  Created by Mahmoud Akl on 4/23/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit
import GoogleMaps
import CoreLocation

class OrderDetailsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, CLLocationManagerDelegate {
    
    var detailsVC : OrderDetailsViewCell?
    var orders = SampleData.generateTaskData()
    let locationManager = CLLocationManager()
//    var currentLocation: CLLocation!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return orders.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailsViewCell", for: indexPath) as! OrderDetailsViewCell
        let task = orders[indexPath.row]
        cell.task = task
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 0.9 * collectionView.frame.width,height: 0.98 * collectionView.frame.height)
    }

   
    @IBOutlet weak var mapView: GMSMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        

    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        
        
        //        currentLocation.coordinate.latitude
        let camera = GMSCameraPosition.camera(withLatitude: (locationManager.location?.coordinate.latitude)!, longitude: (locationManager.location?.coordinate.longitude)!, zoom: 15.0)
        //        mapView.camera = camera
        self.mapView.animate(to: camera)
        //        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        //        view = mapView
        
        // Creates a marker in the center of the map.
        let sourceMarker = GMSMarker()
        sourceMarker.position = CLLocationCoordinate2D(latitude: (locationManager.location?.coordinate.latitude)!, longitude: (locationManager.location?.coordinate.longitude)!)
        sourceMarker.title = "Source"
        sourceMarker.snippet = ""
        sourceMarker.map = mapView
        
        let destinationMarker = GMSMarker()
        destinationMarker.position = CLLocationCoordinate2D(latitude:51.513621 , longitude: -0.141244)
        destinationMarker.title = "Destination"
        destinationMarker.snippet = ""
        destinationMarker.map = mapView
        
            let path = GMSMutablePath()
            path.add(sourceMarker.position)
            path.add(destinationMarker.position)
        
            let polyline = GMSPolyline(path: path)
            polyline.strokeColor = .blue
            polyline.strokeWidth = 5.0
            polyline.map = mapView
        
        let mapType = UserDefaults.standard.integer(forKey: "MAPTYPE")
        switch mapType {
        case 1:
            mapView.mapType = .normal
        case 2:
            mapView.mapType = .satellite
        case 3:
            mapView.mapType = .terrain
        case 4:
            mapView.mapType = .hybrid
        default:
            mapView.mapType = .normal
        }
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
