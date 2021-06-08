//
//  ViewController.swift
//  NotificationView
//
//  Created by Adsum MAC 1 on 07/06/21.
//

import UIKit

class ViewController: UIViewController {

    var isClicked = false
    let v = Noti()
    override func viewDidLoad() {
        super.viewDidLoad()

        v.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.view.addSubview(v)
        UIView.animate(withDuration: 0.1) {
            self.v.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: UIScreen.main.bounds.height)
        }
        UIView.animate(withDuration: 0.1) {
            self.v.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 0)
        }
        self.v.layoutIfNeeded()
        
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipe.direction = .up
        self.v.addGestureRecognizer(swipe)
    }

    @objc func swipe(ges:UISwipeGestureRecognizer){
        print("Swipe")
        isClicked = false
       Up()
    }
    @IBAction func Tapped(_ sender: UIButton) {
        if isClicked{
            isClicked = false
            Up()
        }else{
            isClicked = true
            bottom()
        }
    }
    
    func bottom()  {

        UIView.animate(withDuration: 0.2) {
            self.v.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: UIScreen.main.bounds.height)
            self.v.layoutIfNeeded()
        }
    }

    func Up()  {

        UIView.animate(withDuration: 0.2) {
            self.v.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 0)
            self.v.layoutIfNeeded()
        }

    }
}

