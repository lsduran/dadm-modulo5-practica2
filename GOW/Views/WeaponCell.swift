//
//  WeaponCell.swift
//  GOW
//
//  Created by Luis Sergio Duran Arenas on 05/08/23.
//

import UIKit

class WeaponCell: UITableViewCell {

    @IBOutlet var lblName: UILabel!
    
    @IBOutlet var imgWeapon: UIImageView!
    
    @IBOutlet var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
