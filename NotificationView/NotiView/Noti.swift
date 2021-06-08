//
//  Noti.swift
//  NotificationView
//
//  Created by Adsum MAC 1 on 07/06/21.
//

import UIKit

class Noti: UIView {
    @IBOutlet var NotificationView: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        NotificationXIBSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        NotificationXIBSetup()
    }
    
    func NotificationXIBSetup(){
        Bundle.main.loadNibNamed("Noti", owner: self, options: nil)
        addSubview(NotificationView)
        NotificationView.frame = self.bounds
        NotificationView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }
}
