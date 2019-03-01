//
//  BeerBasicInfoTVCell.swift
//  PagSeguroTest
//
//  Created by camila oliveira on 01/03/19.
//  Copyright © 2019 Aliamcami. All rights reserved.
//

import UIKit

class BeerBasicInfoTVCell: UITableViewCell {

    @IBOutlet weak var beerImageView: UIImageView!
    @IBOutlet weak var abvLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var beer: Beer? {
        didSet{
            if let beer = self.beer{
                self.updateInfo(beer: beer)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    private func updateInfo(beer: Beer){
        self.abvLabel.text = "Teor alcoólico: \(beer.abv)"
        self.nameLabel.text = beer.name.uppercased()
        self.beerImageView.setImage(from: beer.image_url)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
