//
//  AppSingleton.swift
//  ProAssistant
//
//  Created by Jiaxian Gan on 15/9/18.
//  Copyright © 2018 Jiaxian Gan. All rights reserved.
//

import Foundation

class AppSingleton {
  static let sharedInstance = AppSingleton()
  var user: User!
  var requests: [Request]!
  private init() {
    user = User()
    requests = Array()
  }
}
