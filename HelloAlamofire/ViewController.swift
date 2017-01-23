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
        requestTopRatedMovies()
    }
    
    
    @IBAction func postButtonClick(_ sender: UIButton) {
        
    }

    @IBAction func getButtonClick(_ sender: UIButton) {
        requestTopRatedMovies()
    }
    
    func requestTopRatedMovies() -> Void {
        
//        https://api.themoviedb.org/3/movie/top_rated?api_key=xxx&language=en-US&page=1
//        https://image.tmdb.org/t/p/w500/xBKGJQsAIeweesB79KC89FpBrVr.jpg
        
        print("request top rated movies !!")
        
        let url = "https://api.themoviedb.org/3/movie/top_rated"
        let params: Parameters = ["api_key":"xxx"]
        Alamofire.request(url,parameters:params).responseJSON{ response in
            print("Response is \(response.result.value)")
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    


}

