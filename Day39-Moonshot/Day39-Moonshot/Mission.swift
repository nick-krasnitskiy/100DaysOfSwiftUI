//
//  Mission.swift
//  Day39-Moonshot
//
//  Created by Nick Krasnitskiy on 16.04.2025.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
