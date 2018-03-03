//
//  CelAeroportoTableViewCell.swift
//  infraero-app
//
//  Created by Aluno on 03/03/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class CelAeroportoTableViewCell: UITableViewCell {

    @IBOutlet weak var vrImagem: UIImageView!
    @IBOutlet weak var vrLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated:animated)
    }

}
