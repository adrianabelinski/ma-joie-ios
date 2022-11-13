//
//  ViewController.swift
//  Ma Joie
//
//  Created by Adriana Belinski on 11/11/22.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - Properties
  
  let logoContainerView: UIView = {
    let containerView = UIView()
    containerView.translatesAutoresizingMaskIntoConstraints = false
    return containerView
  }()
  
  let myLogoView: UIImageView = {
    let image = UIImage(named: "coffee-logo")
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = image
    return imageView
  }()
  
  let myLogomarkView: UIImageView = {
    let image = UIImage(named: "coffee-logomark")
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = image
    return imageView
  }()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    
    setUpUI()
    
  }
  
  
  // MARK: - UI Setup
  
  private func setUpUI(){
    // setUpLogo()
    
    setUpContainerView()
    setUpMyLogoView()
    setUpMyLogomarkView()
  }
  
  func setUpContainerView() {
    view.addSubview(logoContainerView)
    
    NSLayoutConstraint.activate([
      logoContainerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
      logoContainerView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
    ])
  }
  
  func setUpMyLogoView() {
    logoContainerView.addSubview(myLogoView)
    
    NSLayoutConstraint.activate([
      myLogoView.topAnchor.constraint(greaterThanOrEqualTo: logoContainerView.safeAreaLayoutGuide.topAnchor),
      myLogoView.leadingAnchor.constraint(equalTo: logoContainerView.safeAreaLayoutGuide.leadingAnchor),
      myLogoView.bottomAnchor.constraint(lessThanOrEqualTo: logoContainerView.safeAreaLayoutGuide.bottomAnchor),
      myLogoView.centerYAnchor.constraint(equalTo: logoContainerView.safeAreaLayoutGuide.centerYAnchor),
     // myLogoView.trailingAnchor.constraint(equalTo: myLogomarkView.leadingAnchor, constant: -15),
      myLogoView.heightAnchor.constraint(equalToConstant: 65),
      myLogoView.widthAnchor.constraint(equalToConstant: 70)
    ])
  }
  
  func setUpMyLogomarkView() {
    let logomarkWidth = 130.0
    
    logoContainerView.addSubview(myLogomarkView)
    
    NSLayoutConstraint.activate([
      myLogomarkView.topAnchor.constraint(greaterThanOrEqualTo: logoContainerView.safeAreaLayoutGuide.topAnchor, constant: 15),
      myLogomarkView.leadingAnchor.constraint(equalTo: myLogoView.trailingAnchor, constant: 15),
      myLogomarkView.bottomAnchor.constraint(lessThanOrEqualTo:  logoContainerView.safeAreaLayoutGuide.bottomAnchor),
      myLogomarkView.centerYAnchor.constraint(equalTo: logoContainerView.safeAreaLayoutGuide.centerYAnchor),
      myLogomarkView.trailingAnchor.constraint(equalTo: logoContainerView.safeAreaLayoutGuide.trailingAnchor),
      myLogomarkView.widthAnchor.constraint(equalToConstant: logomarkWidth),
      myLogomarkView.heightAnchor.constraint(equalToConstant: logomarkWidth * 834 / 1780)
    ])
  }

  
}
