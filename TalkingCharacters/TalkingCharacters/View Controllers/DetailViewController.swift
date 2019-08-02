//
//  DetailViewController.swift
//  TalkingCharacters
//
//  Created by Jessie Ann Griffin on 8/1/19.
//  Copyright © 2019 Jessie Griffin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterImageViewDetail: UIImageView!
    
    var character: Model.Animation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let character = character else { return }
        
        characterNameLabel.text = character.rawValue
        
        let cells = Model.shared.cells(for: character)
        characterImageViewDetail.animationImages = cells
        characterImageViewDetail.animationRepeatCount = 0
        characterImageViewDetail.animationDuration = Double(cells.count) / 15.0 // FIGURE THIS PART OUT
        characterImageViewDetail.startAnimating()
    }
}

