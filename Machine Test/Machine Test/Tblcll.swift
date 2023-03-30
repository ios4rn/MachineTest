//
//  Tblcll.swift
//  Machine Test
//
//  Created by Rabin on 30/03/23.
//

import UIKit

class Tblcll: UITableViewCell {

    @IBOutlet weak var imgV: UIImageView!
    
    @IBOutlet weak var CllView: UIView!
    @IBOutlet weak var lblUrl: UILabel!
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
