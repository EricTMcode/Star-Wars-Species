//
//  Species.swift
//  Species
//
//  Created by Eric on 01/05/2023.
//

import Foundation

struct Species: Identifiable, Codable {
    let id = UUID().uuidString
    var name = ""
    var classification = ""
    var designation = ""
    var averageHeight = ""
    var averageLifespan = ""
    var language = ""
    var skinColors = ""
    var hairColors = ""
    var eyeColors = ""
    
    enum CodingKeys: String, CodingKey {
        case name, classification, designation, language
        case averageHeight = "average_height"
        case averageLifespan = "average_lifespan"
        case skinColors = "skin_colors"
        case hairColors = "hair_colors"
        case eyeColors = "eye_colors"
    }
}
