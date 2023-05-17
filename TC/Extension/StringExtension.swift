//
//  StringExtension.swift
//  TC
//
//  Created by Дарья Полковова on 23.04.2023.
//

import Foundation

extension String {
    func getTime() -> String {
        guard let time = Int(self) else { return self }
        
        let timeInterval: TimeInterval = TimeInterval(time)
        let dateTime = Date(timeIntervalSince1970: timeInterval)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        let localDate = dateFormatter.string(from: dateTime)
        
        return localDate
    }
    
    func getDate() -> String {
        guard let time = Int(self) else { return self }
        let timeInterval: TimeInterval = TimeInterval(time)
        let dateTime = Date(timeIntervalSince1970: timeInterval)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let localDate = dateFormatter.string(from: dateTime)
        
        return localDate
    }
    
    func toDate() -> Date {
        guard let time = Int(self) else { return Date() }
        
        let timeInterval: TimeInterval = TimeInterval(time)
        let dateTime = Date(timeIntervalSince1970: timeInterval)
        
        return dateTime
    }
    
}
