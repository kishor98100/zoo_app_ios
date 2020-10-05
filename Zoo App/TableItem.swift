//
//  TableItem.swift
//  Zoo App
//
//  Created by Kishor Mainali on 10/5/20.
//

import UIKit

class TableItem: UITableViewCell {

    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    
    @IBOutlet weak var itemDescription: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setItem(animal:Animal)  {
        self.itemName.text = animal.name
        self.itemDescription.text = animal.description
        self.itemImage.image = UIImage(named: animal.image)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
