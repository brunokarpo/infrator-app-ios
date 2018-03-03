//
//  CelVoosTableViewCell.swift
//  infraero-app
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class CelVoosTableViewCell: UITableViewCell {

    @IBOutlet weak var vrNumero: UILabel!
    @IBOutlet weak var vrCompanhia: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
