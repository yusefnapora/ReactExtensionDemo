//
//  ReactView.swift
//  ReactDynamic
//
//  Created by Yusef Napora on 7/5/15.
//  Copyright (c) 2015 Yusef Napora. All rights reserved.
//

import Foundation
import React
import SnapKit

public class ReactView: UIView {
  static let defaultJsLocation = NSURL(string: "http://localhost:8081/index.ios.includeRequire.runModule.bundle?dev=true")!
  static let defaultModule = "SimpleApp"
  
  let rootView: RCTRootView
  
  public init(module: String = ReactView.defaultModule, jsLocation: NSURL = ReactView.defaultJsLocation) {
    rootView = RCTRootView(bundleURL: jsLocation, moduleName: module, launchOptions: nil)
    
    super.init(frame: CGRectZero)
    
    addSubview(rootView)
    rootView.snp_makeConstraints { make -> () in
      make.edges.equalTo(self)
    }
  }

  required public init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
}