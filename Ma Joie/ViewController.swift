//
//  ViewController.swift
//  Ma Joie
//
//  Created by Adriana Belinski on 11/11/22.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - Properties
  
  let myLogoView: UIImageView = {
    let image = UIImage(named: "coffee-logo")
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = image
    return imageView
  }()
  
  

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setUpUI()
    
  }
  
  
  // MARK: - UI Setup
  
  func setUpUI(){
    setUpMyLogoView()
  }
  
  func setUpMyLogoView() {
    view.addSubview(myLogoView)
    
    NSLayoutConstraint.activate([
      myLogoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5),
    ])
  }


}
