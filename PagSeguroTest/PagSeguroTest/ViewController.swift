//
//  ViewController.swift
//  PagSeguroTest
//
//  Created by camila oliveira on 01/03/19.
//  Copyright © 2019 Aliamcami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let api = Punkapi()
        api.beerList { beers in
            guard let first = beers.first else{ return }
            self.imageView.setImage(from: first.image_url)
        }
    }
}

