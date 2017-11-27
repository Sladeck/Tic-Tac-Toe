

import UIKit

class PlayController: UIViewController {
    
    var playerTurn = 1 // Cross
    var gameBoard = [0,0,0,0,0,0,0,0,0]
    var winningWay = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    var active = true
    
    @IBAction func BackButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func ButtonPlay(_ sender: UIButton) {
        
        if(gameBoard[sender.tag-1] == 0 && active == true){
            
            gameBoard[sender.tag-1] = playerTurn
        
            if(playerTurn == 1)
            {
                sender.setImage(UIImage(named: "x-icon.png"), for: UIControlState())
                playerTurn = 2
            }
            else{
                sender.setImage(UIImage(named: "Nought.png"), for: UIControlState())
                playerTurn = 1
            }
        
        }
        
        for combination in winningWay {
            if(gameBoard[combination[0]] != 0 && gameBoard[combination[0]] == gameBoard[combination[1]] && gameBoard[combination[1]] == gameBoard[combination[2]]){
                
                
                
                if (gameBoard[combination[0]] == 1){
                    
                    winDisplay.text = "Winner : Cross"
                }else{
                    
                    
                    winDisplay.text = "Winner : Nought"
                }
                
                winDisplay.isHidden = false
               
                
            }
        }
        
        
        
        //active = false
        
        /*for i in gameBoard{
            if (i == 0){
                active = true
                break
            }
        }
        
        if(active == false){
            winDisplay.text = "Draw : No winner"
            winDisplay.isHidden = false

        }*/
  }
    @IBOutlet weak var winDisplay: UILabel!
    
}
