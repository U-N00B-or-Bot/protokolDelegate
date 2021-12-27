//U-N00B-or-Bot

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var variableView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var delegate: ColorDelegate!
    var color: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        variableView.layer.cornerRadius = 20
        variableView.backgroundColor = color
        
    
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
    }
    
    @IBAction func slidersAction() {
        redLabel.text = String(round(1000 * redSlider.value) / 1000)
        greenLabel.text = String(round(1000 * greenSlider.value) / 1000)
        blueLabel.text = String(round(1000 * blueSlider.value) / 1000)
        
        let redColor = CGFloat(redSlider.value)
        let greenColor = CGFloat(greenSlider.value)
        let blueColor = CGFloat(blueSlider.value)
        
        variableView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
        
    }
    
    @IBAction func btnExit() {
        
        delegate.paint(color: color)
        dismiss(animated: true)
    }
    
    
    private func setSlider() {
        let ciColor = CIColor(color: color)
        redSlider.value = Float(ciColor.red)
        greenSlider.value = Float(ciColor.green)
        blueSlider.value = Float(ciColor.blue)
}

}
