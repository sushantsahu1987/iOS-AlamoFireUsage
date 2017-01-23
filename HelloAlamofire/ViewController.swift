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

    var postUrl = "http://localhost:3000/posts"

    
    @IBAction func onGetButtonClick(_ sender: UIButton) {
        makeGetRequest()
    }
    
    @IBAction func onPutButtonClick(_ sender: UIButton) {
        makePutRequest()
    }
    
    
    @IBAction func onDeleteButtonClick(_ sender: UIButton) {
        makeDeleteRequest()
    }
    
    
    @IBAction func onPostButtonClick(_ sender: UIButton) {
        makePostRequest()
    }
    
    
    func makeGetRequest() -> Void {
        
        print("request => Get")
        Alamofire.request(postUrl).responseJSON{ response in
            print("Response is \(response.result.value)")
        }
        
    }
    
    func makePostRequest() -> Void {
        
        print("request => Post")
        
        let params:Parameters = [
            "id":2,
            "title":"Hope is a waste",
            "author":"Sushant Sahu"
        ]
        
        Alamofire.request(postUrl,method:.post,parameters:params).responseJSON {
            response in print("response is \(response.result.value)")
        }
        
    }
    
    
    func makePutRequest() -> Void {
        
        print("request => Put")
        
        postUrl = postUrl.appending("/3")
        
        let params:Parameters = [
            "id":3,
            "title":"Lone warrior",
            "author":"Sushant Sahu"
        ]
        
        let request = Alamofire.request(postUrl, method:.put, parameters:params)
        
            request.responseJSON {
                response in
                print("response is \(response.result.value)")
        }

        
    }
    
    func makeDeleteRequest() -> Void {
        
        print("request => Delete")
        postUrl = postUrl.appending("/2")

        
        Alamofire.request(postUrl, method:.delete).responseJSON {
            response in print("response is \(response.result.value)")
        }
        
    }
    
    
    
    
    
    


}

