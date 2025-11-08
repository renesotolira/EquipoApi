//
//  Pokemon.swift
//  Api
//
//  Created by WIN603 on 07/11/25.
//

import Foundation

struct Pokemon: Decodable {
    let count: Int
    let next: String
    let previous: String?
    let results: [Results]
    
    struct Results: Decodable, Hashable{
        let name: String
        let url: String
    }
    
}
