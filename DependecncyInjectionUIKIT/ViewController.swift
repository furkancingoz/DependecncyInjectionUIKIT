//
//  ViewController.swift
//  DependecncyInjectionUIKIT
//
//  Created by Furkan Cingöz on 4.01.2024.
//

import UIKit
import Swinject

class ViewController: UIViewController {

  //MARK: - Swinject
  let container : Container = {
    let container = Container()
    container.register(BackgroundProvidingClass.self){ resolver in
      return BackgroundProvidingClass()
    }
    container.register(AnotherVCViewController.self) { resolver in
      let vc = AnotherVCViewController(providerProtocol:  resolver.resolve(BackgroundProvidingClass.self))
      return vc
    }
    return container
  }()

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .black
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))

    button.setTitle("Open another VC", for: .normal)
    button.center = view.center
    button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    view.addSubview(button)
  }

  @objc func buttonClicked() {
    if let viewController = container.resolve(AnotherVCViewController.self) {
      present(viewController,animated: true)
    }
  }
}

#Preview{
  ViewController()
}
