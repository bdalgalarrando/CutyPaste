//
//  ViewController.swift
//  CutyPaste
//
//  Created by Catalina Balmaceda on 20-08-15.
//  Copyright (c) 2015 Catalina Balmaceda. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

//class PostInfo {
//    let url: String
//    let title:String
//    let date: String
//    let content: String
//    let slug: String
//    
//    init(data: JSON) {
//        //println("\n\n\(data)")
//        self.url = data["url"].stringValue
//        self.title = data["title"].stringValue
//        self.slug = data["slug"].stringValue
//        self.date = data["date"].stringValue
//        self.content = data["content"].stringValue
//    }
//}
//
//class PostInfoController{
//    var listaPosts: [PostInfo] = []
//    
//    func addPosts(info: JSON){
//        for (index: String, subJson: JSON) in info {
//            let post = PostInfo(data: subJson)
//            listaPosts.append(post)
//        }
//    }
//}
//
//class Category {
//    let vitrina: String
//    let belleza:String
//    let moda: String
//    let estiloDeVida: String
//    let tendencia: String
//    let noticias: String
//    
//    init(data: JSON) {
//        self.vitrina = data[0]["vitrina"].stringValue
//        self.belleza = data[0]["belleza"].stringValue
//        self.moda = data[0]["moda"].stringValue
//        self.estiloDeVida = data[0]["estilo de vida"].stringValue
//        self.tendencia = data[0]["tendencia"].stringValue
//        self.noticias = data[0]["noticias"].stringValue
//    }
//}

class ViewController: UIViewController {

//    let postsController = PostInfoController()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        read()
//        
//        //let CPData = PostInfo(data: data["posts"] as JSON
//        
//        // Do any additional setup after loading the view, typically from a nib.
//
//    }
//
//    func read(){
//    
//        Alamofire.request(.GET,"http://www.cutypaste.com/api/get_posts")
//            .validate()
//            .responseJSON { (_, _, json, _) -> Void in
//                
//                let data = JSON(json!)
//                let listaPosts = data["posts"] as JSON
//                
//                self.postsController.addPosts(listaPosts)
//                
//                dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                    println(self.postsController.listaPosts.count)
//                })
//        }
//
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//        }
}

