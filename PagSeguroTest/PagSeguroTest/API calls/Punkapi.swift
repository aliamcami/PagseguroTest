//
//  Punkapi.swift
//  PagSeguroTest
//
//  Created by camila oliveira on 01/03/19.
//  Copyright © 2019 Aliamcami. All rights reserved.
//

import UIKit

class Punkapi: NSObject {
    private let url = URL(string: "https://api.punkapi.com/v2/beers")
    func beerList(completionHandler: @escaping (Array<Beer>) -> Void){
        guard let url = self.url else{ return }
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data,
            let beersData = self.toValidData(data: data)
                else {
                    return }
            
             let beers = self.instantiateBeers(beersData)
            completionHandler(beers ?? [])
        }
        
        task.resume()
    }
    
    private func instantiateBeers(_ data: Array<Any>) -> [Beer]?{
        var arr = [Beer]()
        for beer in data{
            do{
                let jsonData = try JSONSerialization.data(withJSONObject: beer, options: .prettyPrinted)
                let decoder = JSONDecoder()
                let beer = try decoder.decode(Beer.self, from: jsonData)
                arr.append(beer)
            }catch{
                print(error)
            }
        }
        return arr
    }
    
    private func toValidData(data: Data) -> Array<Any>?{
        do {
            let serialized = try JSONSerialization.jsonObject(with: data, options: [JSONSerialization.ReadingOptions.mutableContainers])
            
            return (serialized as? Array<Any>)
        } catch {
            print(error.localizedDescription)
            return nil
        }
        
    }
    
}
