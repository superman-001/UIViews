//
//  ViewController.swift
//  UIViews
//
//  Created by Jarrale Butts on 10/17/19.
//  Copyright © 2019 Jarrale Butts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstView()
        secondView()
    }
    
    func firstView() {            //this function will run once the view loads
        let newView = UIView()
        view.addSubview(newView)        //adds the new view
        newView.translatesAutoresizingMaskIntoConstraints = false       //without the view wont be displayed
        NSLayoutConstraint.activate([
            newView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),        //connects bottonAnchor to safe area
            newView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),              //connects topAnchor to safe area
            newView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),      //connects leadingAnchor to leading safe area
            newView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)     ////connects trailingAnchor to trailing safe area
            ])
        newView.backgroundColor = .lightGray
        
    }
    
    func secondView() {         //thid function will run once the view loads
        let newView = UIView(frame: CGRect(x: 60, y: 300, width: 300, height: 200))     //dementions of the frame
        self.view.addSubview(newView)           //adds and displays the view
        
        newView.backgroundColor = .red
        newView.layer.cornerRadius = 25
        newView.layer.borderWidth = 3
        newView.layer.borderColor = UIColor.white.cgColor
        
    }
}

