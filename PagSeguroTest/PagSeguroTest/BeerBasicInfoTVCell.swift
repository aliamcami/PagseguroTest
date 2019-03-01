//
//  BeerBasicInfoTVCell.swift
//  PagSeguroTest
//
//  Created by camila oliveira on 01/03/19.
//  Copyright © 2019 Aliamcami. All rights reserved.
//

import UIKit

class BeerGeneralInfoTVCell: UITableViewCell {

    @IBOutlet weak var beerImageView: UIImageView!
    @IBOutlet weak var abvLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    private var beer: Beer?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setBeer(beer: Beer){
        self.beer = beer
        self.abvLabel.text = "Teor alcoólico: \(beer.abv)"
        self.nameLabel.text = beer.name.uppercased()
        self.beerImageView.setImage(from: beer.image_url)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
