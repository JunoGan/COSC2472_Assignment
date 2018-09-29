//
//  MyInfoViewController.swift
//  ProAssistant
//
//  Created by Jiaxian Gan on 15/9/18.
//  Copyright © 2018 Jiaxian Gan. All rights reserved.
//

import UIKit

class MyInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var requestTableView: UITableView!
  
  @IBOutlet weak var emailLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    requestTableView.dataSource = self
    requestTableView.delegate = self
    requestTableView.layer.borderWidth = 1
    requestTableView.layer.borderColor = UIColor.lightGray.cgColor
    let cellNib = UINib(nibName: "RequestCell", bundle: nil)
    requestTableView.register(cellNib, forCellReuseIdentifier: "RequestCell")
    
    if let user = AppSingleton.sharedInstance.user {
      emailLabel.text = user.email
    }
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    requestTableView.reloadData()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  
  @IBAction func logoutAction(_ sender: Any) {
    self.navigationController?.popToRootViewController(animated: true);
    AppSingleton.sharedInstance.requests = Array()
    AppSingleton.sharedInstance.user = User()
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return AppSingleton.sharedInstance.requests.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = self.requestTableView.dequeueReusableCell(withIdentifier: "RequestCell") as! RequestCell
    let request = AppSingleton.sharedInstance.requests[indexPath.row]
    cell.title.text = request.title
    cell.status.text = request.status
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 60
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
    detailViewController.request = AppSingleton.sharedInstance.requests[indexPath.row]
    self.navigationController?.pushViewController(detailViewController, animated: true);
  }
  
  
}
