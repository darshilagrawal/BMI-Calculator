

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var heightSliderOutput: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSliderOutput: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChange(_ sender: UISlider) {
        heightSliderOutput.text="\(String(format: "%.2f",sender.value))m"
        
    }
    
    @IBAction func weightChange(_ sender: UISlider) {
        weightSliderOutput.text="\(Int(sender.value))Kg"
    }


    @IBAction func calculatePressed(_ sender: UIButton) {
       let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height,weight)
        self.performSegue(withIdentifier: "gotoResult", sender:self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color=calculatorBrain.getColor()
        }
    }
}


