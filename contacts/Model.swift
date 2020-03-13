//
//  Model.swift
//  contacts
//
//  Created by Karthik on 13/03/20.
//  Copyright © 2020 Karthik. All rights reserved.
//

import Foundation


struct User : Codable {
    let contacts : [Contact]
}

struct  Contact : Codable {
    let name : String
    let email : String
    let gender : String
}
