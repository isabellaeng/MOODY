//
//  ViewController.swift
//  moody
//
//  Created by Isabella Eng on 7/11/23.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, FSCalendarDelegate, FSCalendarDataSource{
    
    var calendar: FSCalendar!
    var formatter = DateFormatter()
    @IBOutlet weak var shownLabel: UILabel!
    @IBOutlet weak var calSwitch: UISwitch!
    let defaults = UserDefaults.standard
    var switchON : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calendar = FSCalendar(frame: CGRect(x: 0.0, y: 130.0, width: self.view.frame.size.width, height: 300.0))
        
        //calendar.scope = .week
        calendar.delegate = self
        calendar.dataSource = self
        
        self.view.addSubview(calendar)

        
    
        
    }
  
    @IBAction func switchStateDidChange(_ sender:UISwitch!)
       {
           if calSwitch.isOn{
               switchON = true
               self.calendar.setScope(.month, animated: self.calSwitch.isOn)
           }
           if calSwitch.isOn == false{
               switchON =  false
               self.calendar.setScope(.week, animated: false)
           }
           else{
               switchON = true
               self.calendar.setScope(.month, animated: self.calSwitch.isOn)
           }
       }
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    func maximumDate(for calendar: FSCalendar) -> Date {
        return Date()
    }
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        formatter.dateFormat = "LLLL d, yyyy";
        shownLabel.text = (self.formatter.string(from: date))
    }


}

 
