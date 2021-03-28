import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showAllert(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Login", message: "Enter your Email and Password", preferredStyle: .alert)
        
        alert.addTextField()
        alert.addTextField()
        
        alert.textFields![0].placeholder = "Enter Email"
        alert.textFields![0].keyboardType = UIKeyboardType.emailAddress
        alert.textFields![1].placeholder = "Enter Password"
        alert.textFields![1].isSecureTextEntry = true
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {(action) in
            print("Canceled...")
        }))
        alert.addAction(UIAlertAction(title: "Login", style: .default, handler: {(action) in
            let emailText = alert.textFields![0].text
            let passwText = alert.textFields![1].text
            
            self.outputTextView.text = "Email: \(emailText ?? "") \nPassword: \(passwText ?? "")"
        }))
        self.present(alert, animated: true)
    }
    
    
    
}

