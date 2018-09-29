//
//  LoginViewController.swift
//  ProAssistant
//
//  Created by Jiaxian Gan on 8/9/18.
//  Copyright © 2018 Jiaxian Gan. All rights reserved.
//

import UIKit
import PKHUD

class LoginViewController: UIViewController {
  
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
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
  
  @IBAction func loginAction(_ sender: Any) {
    let user = User()
    user.email = emailTextField.text
    AppSingleton.sharedInstance.user = user
    
    HUD.flash(.success, delay: 0.3) { finished in
      // Completion Handler
      self.performSegue(withIdentifier: "LoginToEntry", sender: nil)
    }
    
  }
  
}
