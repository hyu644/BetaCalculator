import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLbel: UILabel!
    
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var operation = 0
    var isPerformingOperation = false
    
    override func viewDidLoad() {
           super.viewDidLoad()
      
        resultLbel.text = ""
    }
    
    @IBAction func numberPressed(_ sender: Any) {
        let tag = (sender as! UIButton).tag
        
        if isPerformingOperation == true {
            isPerformingOperation = false
            resultLbel.text = String(tag-1)
            numberOnScreen = Double(resultLbel.text!)!
        }else{
            resultLbel.text = resultLbel.text! + String(tag - 1)
            numberOnScreen = Double(resultLbel.text!)!
}
}
    @IBAction func operationPressed(_ sender: Any) {
        
        let tag = (sender as! UIButton).tag
        if tag == 16 {
            resultLbel.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
            
            return
        }
            
        if tag == 11 {
            isPerformingOperation = true
            previousNumber = Double(resultLbel.text!)!
            resultLbel.text = "/"
            operation = tag
        }else if tag == 12{
            isPerformingOperation = true
            previousNumber = Double(resultLbel.text!)!
            resultLbel.text = "*"
            operation = tag
        }else if tag == 13 {
            isPerformingOperation = true
            previousNumber = Double(resultLbel.text!)!
            resultLbel.text = "-"
            operation = tag
        }else if tag == 14 {
            isPerformingOperation = true
            previousNumber = Double(resultLbel.text!)!
            resultLbel.text = "+"
            operation = tag
        }else if tag == 15 {
            
            if operation == 11 {
                resultLbel.text = String(previousNumber / numberOnScreen)
            }else if operation == 12 {
                resultLbel.text = String(previousNumber * numberOnScreen)
            }else if operation == 13 {
                resultLbel.text = String(previousNumber - numberOnScreen)
            }else if operation == 14 {
                resultLbel.text = String(previousNumber + numberOnScreen)
                
            }
            
            
            
            
          
    }
}
}
    
