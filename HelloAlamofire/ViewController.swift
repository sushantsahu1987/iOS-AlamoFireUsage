//
//  ViewController.swift
//  HelloAlamofire
//
//  Created by Sushant Sahu on 06/01/17.
//  Copyright © 2017 Sushant Sahu. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    @IBAction func onGetButtonClick(_ sender: UIButton) {
        requestTopRatedMovies()
    }
    
    
    @IBAction func onPostButtonClick(_ sender: UIButton) {
        
    }
    
    
    func requestTopRatedMovies() -> Void {
        
        //http://localhost:3000/posts
        
        print("request top rated movies !!")
        
        let url = "http://localhost:3000/posts"
        Alamofire.request(url).responseJSON{ response in
            print("Response is \(response.result.value)")
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    


}

