
import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(_ height:Float ,_ weight:Float ) {
        let bmiValue=(weight)/(height*height)
        
        if bmiValue < 18.5{
            bmi=BMI(value: bmiValue,advice: "Eat more pies",color:#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 24.9{
            bmi=BMI(value: bmiValue,advice: "Fit ho kaafi",color:#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
            
        }else{
            bmi=BMI(value: bmiValue,advice: "Eat Less pies",color:#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    
    }

    func getBMIValue() -> String  {
        let bmiValueString=String(format: "%0.1f", bmi?.value ?? 0.0)
        return bmiValueString
        
    }
    func getAdvice() -> String {
        let adviceString=String(bmi?.advice ?? "I really don't Know")
        return adviceString
    }
    
    func getColor() -> UIColor {
        return bmi!.color
    }
    
   

}
