//
//  UserScreen.swift
//  ProjectsGithub
//
//  Created by Jadiê on 26/04/22.
//

import UIKit

class UserScreen: UIView {

  lazy var userLabel:UILabel = {
    let text = UILabel()
    text.translatesAutoresizingMaskIntoConstraints = false
    text.textColor = .white
    text.font = UIFont.boldSystemFont(ofSize: 20)
    text.text = "User"
    return text
  }()
  
  override init(frame: CGRect) {
    super .init(frame: frame)
    self.addSubview(self.userLabel)
    self.setUpConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  private func setUpConstraints() {
    NSLayoutConstraint.activate([
      self.userLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
      self.userLabel.centerYAnchor.constraint(equalTo: self.topAnchor, constant: 80)
    ])
  }

}
