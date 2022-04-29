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
    text.text = "User Github"
    return text
  }()
  
  lazy var userTextField: UITextField = {
    let tf = UITextField()
    tf.translatesAutoresizingMaskIntoConstraints = false
    tf.keyboardType = .default
    tf.autocorrectionType = .no
    tf.backgroundColor = .white
    tf.borderStyle = .roundedRect
    tf.placeholder = "user name"

    return tf
  }()
  
  lazy var confirmButton: UIButton = {
    let btn = UIButton()
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.setTitle("Click", for: .normal)
    btn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
    btn.setTitleColor(.white, for: .normal)
    btn.clipsToBounds = true
    btn.layer.cornerRadius = 7.5
    btn.backgroundColor = .purple
    return btn
  }()
  
  override init(frame: CGRect) {
    super .init(frame: frame)
    self.addSubview(self.userLabel)
    self.addSubview(self.userTextField)
    self.addSubview(self.confirmButton)
    self.setUpConstraints()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  private func setUpConstraints() {
    NSLayoutConstraint.activate([
      self.userLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
      self.userLabel.centerYAnchor.constraint(equalTo: self.topAnchor, constant: 80),
      
      self.userTextField.topAnchor.constraint(equalTo: self.userLabel.bottomAnchor, constant: 20),
      self.userTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
      self.userTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
      self.userTextField.heightAnchor.constraint(equalToConstant: 45),
      
      self.confirmButton.topAnchor.constraint(equalTo: self.userTextField.bottomAnchor, constant: 20),
      self.confirmButton.leadingAnchor.constraint(equalTo: self.userTextField.leadingAnchor),
      self.confirmButton.trailingAnchor.constraint(equalTo: self.userTextField.trailingAnchor),
      self.confirmButton.heightAnchor.constraint(equalToConstant: 50)
    ])
  }

}
