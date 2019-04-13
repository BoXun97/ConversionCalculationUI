//
//  ConverterViewController.swift
//  Calculator
//
//  Created by Boao Huang on 4/12/19.
//  Copyright © 2019 Boao Huang. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    var converters = [Converter]()
    
    let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertController.Style.actionSheet)
    
    @IBOutlet weak var outputDisplay: UITextField!
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    
    @IBAction func converter(_ sender: UIButton) {
         self.present(alert, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        converters = [
            Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
            Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
            Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
            Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")
        ]
        
        
        for converter in converters {
            alert.addAction(UIAlertAction(title: converter.label, style: .default, handler: nil))
        }

        // Do any additional setup after loading the view.
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
