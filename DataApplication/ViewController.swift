//
//  ViewController.swift
//  DataApplication
//
//  Created by Sundir Talari on 02/04/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://trell.co.in/expresso/interestCategories.php")
        URLSession.shared.dataTask(with: url!){(data,response,error) in
            guard let data = data else {return}
            
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
            }catch{
                print("json error : \(error.localizedDescription)")
            }
        }.resume()
        
    }

    


}

