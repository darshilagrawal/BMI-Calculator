

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice:String?
    var color:UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text=bmiValue
        adviceLabel.text=advice
        view.backgroundColor=color
        
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        UIView.transition(with: sender,
                                  duration: 1,
                                  options: .transitionFlipFromRight,
                                  animations: {
                                  }, completion: { (finished) -> Void in
                                    self.dismiss(animated: true, completion: nil)
                                })
    
    }
   
}
