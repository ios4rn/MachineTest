//
//  Model.swift
//  Machine Test
//
//  Created by Rabin on 29/03/23.
//

import Foundation
import UIKit
import CoreData

class UserModel{
    
    static let model = UserModel()
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var fetchedData = [User]()
    
    func save(name: String, pass: String){
        var user = User(context: context)
        user.username = name
        user.password = pass
        
        do{
            try context.save()
            print("ok")
        }catch{
            print("err")
        }
    }
    func fetch(){
        do{
            let result = try context.fetch(User.fetchUserRequest())
            self.fetchedData = result
        }catch{
            print("err")
        }
    }
}
