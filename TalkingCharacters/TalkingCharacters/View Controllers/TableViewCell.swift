//
//  TableViewCell.swift
//  TalkingCharacters
//
//  Created by Jessie Ann Griffin on 8/1/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var characterImageView: UIImageView!

    let character1 = Model.shared
    
    var character: Model.Animation? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let character = character else { return }
        
        characterImageView.image = character1.image(for: character)
    }
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
