//
//  ViewController.swift
//  MathHelper
//
//  Created by Antonio Ripepe on 7/2/19.
//  Copyright © 2019 Antonio Ripepe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenus()
        customizeNavBar()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func sideMenus() {
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    func customizeNavBar() {
        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 131/255, green: 195/255, blue: 250/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 131/255, green: 195/255, blue: 250/255, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
    }

}
