//
//  MainScreenModel.swift
//  TC
//
//  Created by Дарья Полковова on 23.04.2023.
//

import Foundation

struct Task: Codable {
    let id: Int
    let dateStart: String
    let dateFinish: String
    let name: String
    let description: String
}
