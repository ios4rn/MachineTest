//
//  Entity+CoreDataProperties.swift
//  Machine Test
//
//  Created by Rabin on 29/03/23.
//
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }

    @NSManaged public var username: String?
    @NSManaged public var password: String?

}

extension Entity : Identifiable {

}
