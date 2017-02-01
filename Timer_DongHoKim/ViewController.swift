//
//  ViewController.swift
//  Timer_DongHoKim
//
//  Created by MGXA2 on 9/24/16.
//  Copyright © 2016 Duc Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHr: UIImageView!
    @IBOutlet weak var imgMin: UIImageView!
    @IBOutlet weak var imgSec: UIImageView!
    var timer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        getTime()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.getTime), userInfo: nil, repeats: true)

        
    }
    
    func getTime(){
        let date:Date = Date()
        let calendar:Calendar = NSCalendar.current
        var hour: Int = Int(calendar.component(.hour, from: date))
        if hour > 12 {
            hour = hour - 12
        }
        let minute: Int = Int(calendar.component(.minute, from: date))
        let second: Int = Int(calendar.component(.second, from: date))
        print("hours = \(hour):\(minute):\(second)")
        //UIView.animate(withDuration: 0.05, animations: {
            self.imgSec.transform = CGAffineTransform(rotationAngle: (CGFloat(second) * CGFloat(M_PI) / 30))
        //})
        //UIView.animate(withDuration: 0.05, animations: {
            self.imgMin.transform = CGAffineTransform(rotationAngle: (CGFloat(minute) * CGFloat(M_PI) / 30))
        //})
        //UIView.animate(withDuration: 0.05, animations: {
            self.imgHr.transform = CGAffineTransform(rotationAngle: (CGFloat(hour) * CGFloat(M_PI) / 6))
        //})
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

