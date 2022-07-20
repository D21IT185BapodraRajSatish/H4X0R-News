//
//  PostData.swift
//  H4X0R News
//
//  Created by Raj  on 20/06/22.
//

import Foundation
class Results:Decodable{
    var hits:[Post]
}
struct Post:Decodable,Identifiable{
    var id:String{
        return objectID
    }
    var objectID:String
    var points:Int
    var title:String
    var url:String?
}
