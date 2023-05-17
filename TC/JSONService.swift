//
//  JSONService.swift
//  TC
//
//  Created by Дарья Полковова on 23.04.2023.
//getJsonFromFile

import Foundation

class JSONService {
    func getJsonFromFile(filename fileName: String) -> [Task]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let jsonData = try decoder.decode([Task].self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}
