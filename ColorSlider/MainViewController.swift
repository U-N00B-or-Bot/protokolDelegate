//U-N00B-or-Bot

import UIKit

protocol ColorDelegate {
    func paint(color: UIColor)
}


class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let setVC = segue.destination as! ViewController
        setVC.delegate = self
        setVC.color = view.backgroundColor
    }

}

extension MainViewController: ColorDelegate{
    func paint(color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
