//
//  TableViewCell.swift
//  HomeWork N5 (3)
//
//  Created by Magdiel Altynbekov on 10/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var imageKfc: UIImageView!
    
    @IBOutlet weak var headName: UILabel!
    
    @IBOutlet weak var info: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
