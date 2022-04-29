//
//  ViewController.swift
//  ProjectsGithub
//
//  Created by Jadiê on 26/04/22.
//

import UIKit

class ViewController: UIViewController {
  
  var userScreen: UserScreen?
  override func loadView() {
    self.userScreen = UserScreen()
    self.view = self.userScreen
  }
  
 
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .red
    
  }
  
  
  
  override func viewWillAppear(_ animated: Bool) {
    self.navigationController?.setNavigationBarHidden(true, animated: false)
  }


}

