//
//  MainViewController.swift
//  NavigationBar
//
//  Created by Harun Gunes on 23/05/2021.
//

import UIKit

class MainViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureNavigationBar()
  }
  
  func configureNavigationBar() {
    view.backgroundColor = .white
    
    let appearance = UINavigationBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = UIColor(red: 96/255, green: 181/255, blue: 99/255, alpha: 1)
    appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    
    navigationItem.standardAppearance = appearance
    navigationItem.scrollEdgeAppearance = appearance
    navigationItem.compactAppearance = appearance
    
    navigationController?.navigationBar.prefersLargeTitles = true
    navigationItem.title = "Shopping List"
    navigationController?.navigationBar.tintColor = .white
    navigationController?.navigationBar.isTranslucent = true
    
    navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
    
    let image = UIImage(systemName: "person.circle.fill")
    navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(showNumbers))
  }
  
  @objc func showNumbers() {
    print(123)
  }
}
