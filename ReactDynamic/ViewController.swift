//
//  ViewController.swift
//  ReactDynamic
//
//  Created by Yusef Napora on 7/5/15.
//  Copyright (c) 2015 Yusef Napora. All rights reserved.
//

import UIKit
import SharedFramework

class ViewController: UIViewController {
  var reactView: ReactView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    reactView = ReactView()
    view.addSubview(reactView)
    reactView.snp_makeConstraints { make -> () in
      make.edges.equalTo(view)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

