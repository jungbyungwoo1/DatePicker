//
//  ViewController.swift
//  DatePicker
//
//  Created by jungbyungwoo1 on 2016. 10. 11..
//  Copyright © 2016년 jungbyungwoo1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    let formatter = NSDateFormatter()
    
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickedTime: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSTimer.scheduledTimerWithTimeInterval(interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeDatePicker(sender: UIDatePicker) {
        let datePickerView = sender
        lblPickedTime.text = "Selected Time : " + formatter.stringFromDate(datePickerView.date)
    }
    
    func updateTime() {
//        lblCurrentTime.text = String(count)
//        count += 1
        let date = NSDate()
        lblCurrentTime.text = "Current Time : " + formatter.stringFromDate(date)
    }

}

