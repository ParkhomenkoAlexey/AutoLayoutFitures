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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(viewRed)
        view.addSubview(viewBlue)
        
        // сделаем Visual Format Language
        let viewVFL = ["viewRed":viewRed, "viewBlue":viewBlue]
        // view.bounds.size.width / 3 - глобальную ширину делим на 3
        // высота - view.bounds.size.height / 2 - берем высоты и режим на 2
        let metrics = ["heingt":100, "widht": view.bounds.size.width / 3, "top": view.bounds.size.height / 2]
        // "V" - вертикаль
        // "H" - вертикаль
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewRed(heingt)]|",
                                                          options: [],
                                                          metrics: metrics,
                                                          views: viewVFL))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewBlue(heingt)]|",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: viewVFL))
        // если между [viewRed] и [viewblue] строит "-", то значит между ними constraint равен 8. Пример: "H:|[viewRed]-[viewBlue]|"
        // "H:|[viewRed]-(50)-[viewBlue]|" - между ними 50
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[viewRed(widht)]-(50)-[viewBlue(widht)]-|",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: viewVFL))
        
    }
    
    
    


}

