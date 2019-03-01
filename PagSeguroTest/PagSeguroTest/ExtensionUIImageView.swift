//
//  ExtensionUIImageView.swift
//  PagSeguroTest
//
//  Created by camila oliveira on 01/03/19.
//  Copyright © 2019 Aliamcami. All rights reserved.
//

import UIKit

extension UIImageView{
    func setImage(from url: URL?){
        guard let url = url else{ return }
        let task = URLSession.shared.dataTask(with: url) { (data, resp, err) in
            guard let data = data else{ return }
            
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }
        
        task.resume()
    }
}


