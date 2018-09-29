//
//  ViewController.swift
//  ProAssistant
//
//  Created by Jiaxian Gan on 8/9/18.
//  Copyright © 2018 Jiaxian Gan. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let request = Request()
    request.title = "Fence is leaning"
    request.status = " WORKING IN PROGRESS "
    request.time = "14 March 2018"
    request.contactName = "Adam Sewell"
    request.phone = "012345678"
    request.detail = "The fence on the neigbour's boundary line is leaning. I am worried my doy will get out and run away. Please fix it ASAP."
    
    AppSingleton.sharedInstance.requests.append(request)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

