//
//  OrderDetailsViewCell.swift
//  OrderNow
//
//  Created by Mahmoud Akl on 4/23/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class OrderDetailsViewCell: UICollectionViewCell {
    var id: Int?
    var orderDetails : OrderDetailsViewController?
    
    @IBOutlet weak var collectionCellView: UIView!
    
    
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var cost: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    
    var viewItem: DataArr!
    func setCellView(view: DataArr){
        viewItem = view
        amount.text = view.amount
        cost.text = view.value
        title.text = view.address
        descLabel.text = view.descripion
        //        id = view.id
    }
    
    // MARK: - Properties
    var task: DataArr? {
        didSet {
            guard let task = task else { return }
            
            amount.text = task.amount
            cost.text = task.value
            title.text = task.address
            descLabel.text = task.descripion
            //            id = task.id
            
            //            locationImageView.image = image(forRating: task.location)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //cellView style
        collectionCellView.layer.cornerRadius = 5
        collectionCellView.layer.shadowColor = UIColor.black.cgColor
        collectionCellView.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        collectionCellView.layer.shadowRadius = 1.7
        collectionCellView.layer.shadowOpacity = 0.3
    }
}
