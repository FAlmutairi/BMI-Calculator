//
//  ResultViewController.swift
//  BMI
//
//  Created by FERAS on 07/01/2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var backgroundInformation: UIView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var bimValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        backgroundInformation.layer.cornerRadius = 40
        resultLabel.text = bimValue
    }
    

    @IBAction func RecalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
