//
//  Date+Format.swift
//  ProAssistant
//
//  Created by Jiaxian Gan on 16/9/18.
//  Copyright © 2018 Jiaxian Gan. All rights reserved.
//

import Foundation

extension Date {
  
  static func dayNumberOfWeek() -> Int? {
    return Calendar.current.dateComponents([.weekday], from: Date()).weekday
  }
  
  static func currentDayString() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    return formatter.string(from: Date())
  }
  
  static func currentHour() -> Int {
    return Calendar.current.component(.hour, from: Date())
  }
  
  static func currentMinute() -> Int {
    return Calendar.current.component(.minute, from: Date())
  }
  
}
