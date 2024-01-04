//
//  AnotherVCViewController.swift
//  DependecncyInjectionUIKIT
//
//  Created by Furkan Cingöz on 4.01.2024.
//

import UIKit

class AnotherVCViewController: UIViewController {

  private let providerProtocol : BackgroundProviderProtocol?

  init(providerProtocol : BackgroundProviderProtocol?) {
    self.providerProtocol = providerProtocol
    super.init(nibName: nil, bundle: nil)
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = providerProtocol?.backgroundColor ?? .white
  }


}
