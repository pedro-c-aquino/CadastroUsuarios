//
//  TableViewCell.swift
//  CadastroUsuarios
//
//  Created by user208023 on 4/29/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(value: Usuario) {
        
        self.nameLabel.text = "\(value.name) \(value.lastName)"
        self.ageLabel.text = String(value.age)
        self.phoneLabel.text = value.phone
        self.emailLabel.text = value.email
        
    }
    

    
}
