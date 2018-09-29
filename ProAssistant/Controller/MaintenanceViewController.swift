//
//  MaintenanceViewController.swift
//  ProAssistant
//
//  Created by Jiaxian Gan on 12/9/18.
//  Copyright © 2018 Jiaxian Gan. All rights reserved.
//

import UIKit
import PKHUD

class MaintenanceViewController: UIViewController {
  
  @IBOutlet weak var titleTextField: UITextField!
  @IBOutlet weak var descriptionTextView: UITextView!
  
  @IBOutlet weak var contactTextField: UITextField!
  
  @IBOutlet weak var phoneTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func backAction(_ sender: Any) {
    self.navigationController?.popViewController(animated: true)
  }
  
  @IBAction func createRequestAction(_ sender: Any) {
    
    let request = Request()
    request.title = titleTextField.text
    request.status = " WORKING IN PROGRESS "
    request.time = Date.currentDayString()
    request.contactName = contactTextField.text
    request.detail = descriptionTextView.text
    request.phone = phoneTextField.text
    
    AppSingleton.sharedInstance.requests.append(request)
    
    HUD.flash(.success, delay: 0.3) { finished in
      self.navigationController?.popViewController(animated: true)
    }
  }
  
  
}
