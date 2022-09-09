//
//  ViewController.swift
//  calculator
//
//  Created by Kazakov Danil on 09.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var calendarLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    
    @IBOutlet weak var amountSlider: UISlider!
    @IBOutlet weak var calendarSlider: UISlider!
    @IBOutlet weak var percentSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountLabel.text = "30 000 р."
        calendarLabel.text = "5 месяцев"
        percentLabel.text = "25 процентов"
        setCommonAmout()
        
    }

    @IBAction func amountSliderAction(_ sender: UISlider) {
        switch sender.tag {
        case 0: amountLabel.text = "\(Int(sender.value)) рублей"
        case 1: calendarLabel.text = "\(Int(sender.value)) мес."
        case 2: percentLabel.text = "\(Int(sender.value)) %"
            
        default:
            return
        }
        
        setCommonAmout()
        
    }
    func setCommonAmout() {
        let percentAmount = amountSlider.value / 100 * percentSlider.value / 12
        let periodAmount = percentAmount * calendarSlider.value
        mainLabel.text = "\(amountSlider.value + periodAmount) р."
    }
    
    @IBAction func calendarSliderAction(_ sender: UISlider) {
    }
    @IBAction func percentSliderAction(_ sender: UISlider) {
    }
    
    
}

