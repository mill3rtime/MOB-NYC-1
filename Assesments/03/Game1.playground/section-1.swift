// Playground - noun: a place where people can play

class Player {
    
    
    var health: Int = 100
    var message = "hit"    // COME BACK
    var damage = 1
    
    
   
   
    
    func isAlive() -> Bool {
        if health > 0 {
            return true
        }
        return false
    
        }
    
    func attack() -> (message: String, damage: Int) {
        
        
       var aMessage = message
        var aDamage = damage
        
        return (aMessage, aDamage)
    }
        
        

        //
    
} // end class player



        
       
   

    
    

    class GoodPlayer: Player {
        
        
        override init(){
            super.init()
            message = "Good hit"
            damage = 0
            
        }
        
    
    }
    
    class BadPlayer: Player {
        
        override init(){
        super.init()
            message = "Bad hit"
            damage = 5
    }
    
}



class Match {
    
    var p1: Player
    var p2: Player
    
    init (player1: Player, player2: Player) {
    
       p1 = player1
       p2 = player2
    }
    
    
    
    func playGame() -> String{
        
        
        if p1.isAlive(){
            
            
            if p2.isAlive(){
                
                
                
                
                p1.health -= p2.attack().1
                p2.health -= p1.attack().1
                
                
            }
        }
        
     
        
        
        
    }
    
    
    
    
    
}

   
    
    // THE MATCH
    

    
    var goodPlayer = GoodPlayer()
    var badPlayer = BadPlayer()
    
    var thisMatch = Match(player1: goodPlayer, player2: badPlayer)
    
    
   thisMatch.playGame()
   
    
    
  
    
 
    

    





    
    
    
    


    
