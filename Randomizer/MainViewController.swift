import UIKit

final class MainViewController: UIViewController {

   @IBOutlet var minimumValueLabel: UILabel!
   @IBOutlet var maximumValueLabel: UILabel!
   @IBOutlet var randomValueLabel: UILabel!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
   }


   @IBAction func getRundomNumberButton() {
      let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 1
      let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
      
      let randomNumber = Int.random(in: minimumNumber...maximumNumber).formatted()
      randomValueLabel.text = randomNumber
   }
}
