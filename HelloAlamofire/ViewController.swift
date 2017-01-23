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
        makeGetRequest()
    }
    
    
    @IBAction func onPostButtonClick(_ sender: UIButton) {
        makePostRequest()
    }
    
    
    func makeGetRequest() -> Void {
        
        //http://localhost:3000/posts
        
        print("request => Get")
        
        let url = "http://localhost:3000/posts"
        Alamofire.request(url).responseJSON{ response in
            print("Response is \(response.result.value)")
        }
        
    }
    
    func makePostRequest() -> Void {
        
        print("request => Post")
        let url = "http://localhost:3000/posts"
        
        let params:Parameters = [
            "id":2,
            "title":"Hope is a waste",
            "author":"Sushant Sahu"
        ]
        
        
        Alamofire.request(url,method:.post,parameters:params).responseJSON {
            response in print("response is \(response.result.value)")
        }
        
    }
    
    
    


}

