//
//  ViewController.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import UIKit

class ViewController<ViewType: UIView>: UIViewController {

    var customView: ViewType{
        return view as! ViewType
    }
    
    override func loadView() {
        view = ViewType(frame: UIScreen.main.bounds)
    }
}

