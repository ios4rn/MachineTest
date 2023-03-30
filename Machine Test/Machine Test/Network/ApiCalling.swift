//
//  ApiCalling.swift
//  Machine Test
//
//  Created by Rabin on 29/03/23.
//

import Foundation
import Alamofire
import Kingfisher

class ApiCalling{
 
    static let api = ApiCalling()
    
    func getFunctions(url: String,complition: @escaping(Data?,Bool,String)-> Void){
        AF.request(url,method: .get,encoding: JSONEncoding.default).responseData { (resp) in
            switch resp.result{
                
            case .success(let succ):
                complition(succ,true,"api calling is succ")
            case .failure(let err):
                complition(nil,false,"sorry")
            }
        }
    }
}
