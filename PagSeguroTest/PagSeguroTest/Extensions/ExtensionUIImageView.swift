//
//  ExtensionUIImageView.swift
//  PagSeguroTest
//
//  Created by camila oliveira on 01/03/19.
//  Copyright © 2019 Aliamcami. All rights reserved.
//

import UIKit

extension UIImageView{
    func setBeerImage(_ beer: Beer){
        func setImage(data: Data){
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }
        
        if let data = beer.imageData{
            setImage(data: data)
            return
        }
        
        let task = URLSession.shared.dataTask(with: beer.image_url) { (data, resp, err) in
            guard let data = data else{ return }
            beer.imageData = data
            setImage(data: data)
        }
        
        task.resume()
    }
}


