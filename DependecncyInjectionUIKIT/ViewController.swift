//
//  ViewController.swift
//  DependecncyInjectionUIKIT
//
//  Created by Furkan Cingöz on 4.01.2024.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemBlue
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
    button.setTitle("Open other VC", for: .normal)
  }


}

#Preview{
  ViewController()
}
