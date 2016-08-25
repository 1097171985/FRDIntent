//
//  ViewController.swift
//  FRDIntentDemo
//
//  Created by GUO Lin on 8/25/16.
//  Copyright © 2016 Douban Inc. All rights reserved.
//

import UIKit
import FRDIntent

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "MainViewController"
    view.backgroundColor = UIColor.whiteColor()

    let button = UIButton()
    button.frame = CGRect(x: 20, y: 100, width: view.bounds.size.width - 40, height: 44)
    button.setTitle("FirstViewController", forState: .Normal)
    button.backgroundColor = UIColor.greenColor()
    button.addTarget(self, action: #selector(gotoFirstViewController), forControlEvents: .TouchUpInside)
    view.addSubview(button)

    let secondButton = UIButton()
    secondButton.frame = CGRect(x: 20, y: 200, width: view.bounds.size.width - 40, height: 44)
    secondButton.setTitle("SecondViewController", forState: .Normal)
    secondButton.backgroundColor = UIColor.greenColor()
    secondButton.addTarget(self, action: #selector(gotoSecondViewController), forControlEvents: .TouchUpInside)
    view.addSubview(secondButton)

  }

  func gotoFirstViewController() {
    let intent = Intent(uri: NSURL(string: "douban://douban.com/frodo/firstViewController")!)
    intent.putExtra(["number": 1])
    let manager = ControllerManager.sharedInstance
    manager.startController(source: self, intent: intent)
  }

  func gotoSecondViewController() {
    let intent = Intent(clazz: SecondViewController.self)
    intent.putExtra(["number": 2])
    let manager = ControllerManager.sharedInstance
    manager.startController(source: self, intent: intent)
  }

}

