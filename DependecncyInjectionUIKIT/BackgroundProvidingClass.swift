//
//  BackgroundProvidingClass.swift
//  DependecncyInjectionUIKIT
//
//  Created by Furkan Cingöz on 4.01.2024.
//

import UIKit
import Foundation

class BackgroundProvidingClass : BackgroundProviderProtocol {

  var backgroundColor : UIColor {
    let backgroundColors : [UIColor] = [.systemRed,.systemOrange,.systemYellow,.systemTeal,.systemPink,.systemMint]
    return backgroundColors.randomElement()!
  }


}
