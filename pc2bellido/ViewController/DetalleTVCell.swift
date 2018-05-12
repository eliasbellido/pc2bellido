//
//  DetalleTVCell.swift
//  pc2bellido
//
//  Created by Elias Daniel on 10/05/18.
//  Copyright © 2018 Elias Daniel. All rights reserved.
//

import UIKit

class DetalleTVCell: UITableViewCell {
    
    
    @IBOutlet weak var lblLlave: UILabel!
    
    @IBOutlet weak var lblValor: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
