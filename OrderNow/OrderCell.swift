//
//  OrderCell.swift
//  OrderNow
//
//  Created by Mahmoud Akl on 4/22/18.
//  Copyright © 2018 Mahmoud Akl. All rights reserved.
//

import UIKit

class OrderCell: UITableViewCell {

    var id: Int?
    var orderController : OrderTableViewController?
    
    @IBOutlet weak var locationImageView: UIImageView!
    @IBOutlet weak var calenderLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    var viewItem: DataArr!
    func setCellView(view: DataArr){
        viewItem = view
        calenderLabel.text = view.calender
        amountLabel.text = view.amount
        costLabel.text = view.value
        titleLabel.text = view.address
        descriptionLabel.text = view.descripion
        id = view.id
    }
    
    
    // MARK: - Properties
    var task: DataArr? {
        didSet {
            guard let task = task else { return }
            
            calenderLabel.text = task.calender
            amountLabel.text = task.amount
            costLabel.text = task.value
            titleLabel.text = task.address
            descriptionLabel.text = task.descripion
            id = task.id
            
            //            locationImageView.image = image(forRating: task.location)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //cellView style
        cellView.layer.cornerRadius = 5
        cellView.layer.shadowColor = UIColor.black.cgColor
        cellView.layer.shadowOffset = CGSize(width: 0, height: 1.75)
        cellView.layer.shadowRadius = 1.7
        cellView.layer.shadowOpacity = 0.3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
