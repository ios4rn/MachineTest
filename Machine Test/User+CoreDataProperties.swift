//
//  User+CoreDataProperties.swift
//  Machine Test
//
//  Created by Rabin on 29/03/23.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchUserRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var username: String?
    @NSManaged public var password: String?

}

extension User : Identifiable {

}
