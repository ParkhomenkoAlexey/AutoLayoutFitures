//
//  ViewController.swift
//  Constraints App
//
//  Created by Алексей Пархоменко on 04/12/2018.
//  Copyright © 2018 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let viewRed: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false // если не отключим то не даст работать с constraints
        view.backgroundColor = UIColor.red
        return view
    }()
    
    let viewBlue: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false // если не отключим то не даст работать с constraints
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    let viewGreen: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false // если не отключим то не даст работать с constraints
        view.backgroundColor = UIColor.green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(viewRed)
        view.addSubview(viewBlue)
        view.addSubview(viewGreen)
        
        createViewRedConstraint()
        createViewBlueConstraint()
        createViewGreenConstraint()
    }
    
    func createViewRedConstraint() {
        viewRed.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewRed.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true // берем 1/3 от ширины view
        viewRed.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewRed.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func createViewBlueConstraint() {
        viewBlue.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        viewBlue.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true // берем 1/3 от ширины view
        viewBlue.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewBlue.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func createViewGreenConstraint() {
        viewGreen.rightAnchor.constraint(equalTo: viewBlue.rightAnchor).isActive = true
        viewGreen.leftAnchor.constraint(equalTo: viewRed.leftAnchor).isActive = true // берем 1/3 от ширины view
        viewGreen.bottomAnchor.constraint(equalTo: viewRed.topAnchor, constant: -20).isActive = true
        viewGreen.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
        
    
    


}

