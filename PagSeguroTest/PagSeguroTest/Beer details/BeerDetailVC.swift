//
//  BeerDetailVC.swift
//  PagSeguroTest
//
//  Created by camila oliveira on 01/03/19.
//  Copyright © 2019 Aliamcami. All rights reserved.
//

import UIKit

class BeerDetailVC: UIViewController {
    var beer: Beer?
    var image: UIImage?
    
    @IBOutlet weak var abvLabel: UILabel! //teor alcolico
    @IBOutlet weak var ibuLabel: UILabel! //amargor
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var taglineLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var headerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let beer = self.beer{
            abvLabel.text = "Teor alcoólico: \(beer.abv)"
            ibuLabel.text = "Amargor: \(beer.ibu ?? 0)"
            nameLabel.text = beer.name
            taglineLabel.text = beer.tagline
            descriptionTextView.text = beer.description
            if image == nil{
                headerImageView.setImage(from: beer.image_url)
            }else{
                headerImageView.image = image
            }
        }
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
