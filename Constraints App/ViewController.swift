//
//  ViewController.swift
//  Constraints App
//
//  Created by Алексей Пархоменко on 04/12/2018.
//  Copyright © 2018 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let view1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false // если не отключим то не даст работать с constraints
        view.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        view.backgroundColor = UIColor.red
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false // если не отключим то не даст работать с constraints
        view.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        view.backgroundColor = UIColor.green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(view1)
        view.addSubview(view2)
        //createView1Constraint()
        createView1CenterConstraints()
        createView2CenterConstraints()
        
    }
    
    
    func createView1Constraint() {
        NSLayoutConstraint(item: view1,
                           attribute: .leadingMargin, // лево
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .leadingMargin,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: view1,
                           attribute: .trailingMargin, // право
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .trailingMargin,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: view1,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .topMargin,
                           multiplier: 1,
                           constant: 88).isActive = true // отступи 88 плз
        NSLayoutConstraint(item: view1,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .width, // вниз
                           multiplier: 1,
                           constant: 0).isActive = true
        
    }
    
    // центруем
    func createView1CenterConstraints() {
        NSLayoutConstraint(item: view1,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: view1,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerY,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: view1, // ширину говорим сами
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute, // поэтому и без атрибутов
                           multiplier: 1,
                           constant: 200).isActive = true
        NSLayoutConstraint(item: view1,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 200).isActive = true
    }
    
    func createView2CenterConstraints() {
        NSLayoutConstraint(item: view2,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: view1,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: view2,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: view1,
                           attribute: .top, // атрибут view1
                           multiplier: 1,
                           constant: -8).isActive = true
        NSLayoutConstraint(item: view2, // ширину говорим сами
            attribute: .width,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute, // поэтому и без атрибутов
            multiplier: 1,
            constant: 100).isActive = true
        NSLayoutConstraint(item: view2,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 100).isActive = true
    }


}

