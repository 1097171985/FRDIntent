//
//  IntentForResultController.swift
//  FRDIntent
//
//  Created by GUO Lin on 8/29/16.
//  Copyright © 2016 Douban Inc. All rights reserved.
//

import Foundation

public enum ResultCode: Int {

  case Ok
  case Canceled
  case FirstUser

}

public protocol IntentForResultSendableController {

  func onControllerResult(requestCode requestCode: Int, resultCode: ResultCode, data: Intent)

}


public protocol IntentForResultReceivableController: IntentReceivableController {

  var requestCode: Int? { get set }

  var delegate: IntentForResultSendableController? { get set }

}