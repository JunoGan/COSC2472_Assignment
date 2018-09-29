//
//  DetailViewController.swift
//  ProAssistant
//
//  Created by Jiaxian Gan on 15/9/18.
//  Copyright © 2018 Jiaxian Gan. All rights reserved.
//


import UIKit

class DetailViewController: UIViewController {
  
  var request: Request?
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var timeLabel: UILabel!
  
  @IBOutlet weak var contactLabel: UILabel!
  
  @IBOutlet weak var descriptionLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    if let res = request {
      titleLabel.text = res.title
      timeLabel.text = res.time
      contactLabel.text = res.contactName
      descriptionLabel.text = res.detail
    }
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func backAction(_ sender: Any) {
    self.navigationController?.popViewController(animated: true)
  }
}
