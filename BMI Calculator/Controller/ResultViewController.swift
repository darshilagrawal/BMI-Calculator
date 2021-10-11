

import UIKit
import SPConfetti
class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice:String?
    var color:UIColor?
    var tagValue: Int?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text=bmiValue
        adviceLabel.text=advice
        view.backgroundColor=color
        if let tagValueUnwrapped = tagValue {
            if tagValueUnwrapped == 1 {
                SPConfetti.startAnimating(.fullWidthToDown, particles: .triangle, duration: 5)
            }
        }
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        UIView.transition(with: sender,
                          duration: 1.5,
                                  options: .transitionFlipFromRight,
                                  animations: {
                                  }, completion: { (finished) -> Void in
                                    self.navigationController?.viewControllers.removeLast()

                                })
    }
   
}
