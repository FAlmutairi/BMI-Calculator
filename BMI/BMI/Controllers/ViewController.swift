//
//  ViewController.swift
//  BMI
//
//  Created by FERAS on 07/01/2022.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var hightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var BMI = "0.0"
    
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSilderChanged(_ sender: UISlider) {
        
        let hight = String(format: "%.2f", sender.value)
        hightLabel.text = "\(hight) M"
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight) KG"
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let heightCalculate = heightSlider.value
        let weightCalculate = weightSlider.value
        
        calculatorBrain.calculateBIM(height: heightCalculate, weight: weightCalculate)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bimValue = calculatorBrain.getBMIValue()
            
        }
    }
    
    
    
    
}

