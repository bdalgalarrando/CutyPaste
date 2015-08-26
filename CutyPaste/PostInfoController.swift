//
//  PostInfoController.swift
//  CutyPaste
//
//  Created by Benjamin Dalgalarrando on 8/24/15.
//  Copyright (c) 2015 Catalina Balmaceda. All rights reserved.
//

import Foundation
import SwiftyJSON



class PostInfoController{
    var listaPosts: [PostInfo] = []
    
    func addPosts(info: JSON){
        for (index: String, subJson: JSON) in info {
            let post = PostInfo(data: subJson)
            listaPosts.append(post)
        }
    }
}