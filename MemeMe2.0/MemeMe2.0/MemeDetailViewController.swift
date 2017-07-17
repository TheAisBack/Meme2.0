//
//  MemeDetailViewController.swift
//  MemeMe2.0
//
//  Created by Alan Joseph Hekle on 2017-07-16.
//  Copyright © 2017 Alan Joseph Hekle. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {

    // MARK: Properties
    
    var memes: Meme!
    
    // MARK: Outlets
    
    @IBOutlet weak var memedImage: UIImageView!
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        memedImage.image = memes.memedImage
    }
}
