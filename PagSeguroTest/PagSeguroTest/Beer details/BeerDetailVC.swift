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
    
    @IBOutlet weak var abvLabel: UILabel! //teor alcolico
    @IBOutlet weak var ibuLabel: UILabel! //amargor
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var taglineLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var defaultBeerBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setDetails()
        
        hero.isEnabled = true
        hero.modalAnimationType = .fade
        view.hero.modifiers = [.translate(y:100)]
        
    }
    
    private func setupNavigationBar(){
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
//        self.navigationController?.view.backgroundColor = UIColor.black
    }
    
    private func setDetails(){
        if let beer = self.beer{
            abvLabel.text = "Teor alcoólico: \(beer.abv)"
            ibuLabel.text = "Amargor: \(beer.ibu == nil ? "??" : "\(beer.ibu!)")"
            nameLabel.text = beer.name
            taglineLabel.text = beer.tagline
            descriptionTextView.attributedText = formatLineHeight(beer.description)
            headerImageView.setBeerImage(beer)
            
            abvLabel.hero.id = "abvLabel"
            nameLabel.hero.id = "nameLabel"
            headerImageView.hero.id = "beerImage"
            defaultBeerBackground.hero.id = "defaultBeerBackground"
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
