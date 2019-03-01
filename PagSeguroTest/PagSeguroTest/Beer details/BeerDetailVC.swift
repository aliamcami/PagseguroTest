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
        setDetails()
    }
    
    private func setDetails(){
        
        if let beer = self.beer{
            abvLabel.text = "Teor alcoólico: \(beer.abv)"
            ibuLabel.text = "Amargor: \(beer.ibu ?? 0)"
            nameLabel.text = beer.name
            taglineLabel.text = beer.tagline
            descriptionTextView.attributedText = formatLineHeight(beer.description)
            if image == nil{
                headerImageView.setImage(from: beer.image_url)
            }else{
                headerImageView.image = image
            }
            
//            headerImageView.image.insets
        }
    }
    
    private func formatLineHeight(_ text: String) -> NSAttributedString{
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 7
        let atributes = [NSAttributedString.Key.paragraphStyle: style,
                         NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15),
                         NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        return NSAttributedString(string: text, attributes: atributes)
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
