
import UIKit

class ViewController: UIViewController {

    @IBAction func PlayButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowModal", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TTTSocket.shareInstance.socket.on("test") {data, ack in
    
    
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "ShowModal"){
            var destinationNavigationController = segue.destination as! UINavigationController
            let targetController = destinationNavigationController.topViewController
            
            
        }
    }


}

