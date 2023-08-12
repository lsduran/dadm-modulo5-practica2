//
//  MenuOptionCell.swift
//  GOW
//
//  Created by Luis Sergio Duran Arenas on 05/08/23.
//

import UIKit

class MenuOptionCell: UITableViewCell {

    @IBOutlet var lblMenu: UILabel!
    
    @IBOutlet var imgMenu: UIImageView!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        lblMenu.customFont(fontFamily: "CGF Locust Resistance", fontSize: 17, fontStyle: .title1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
