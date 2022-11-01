protocol engineer {
    func beRepairable()
}//protocol

class troubleOccurred {
    var delegate: engineer?
    
    func cituationCheck() {
        print("Whats going on")
    }
    
    
    func beginWorking() {
        delegate?.beRepairable()
        
    }
}//class

    struct enginner1: engineer {
        init(pc: troubleOccurred) {
            pc.delegate = self
        }
        
        func beRepairable() {
            print("This is ganna take a while")
        }
        
    }//struct

class enginner2: engineer {
    init(pc: troubleOccurred) {
        pc.delegate = self
    }
    
    func beRepairable() {
        print("We need to do it fast")
    }
        
}//class



    
    
    let ema = troubleOccurred()
    let sho = troubleOccurred()
    let kouki = enginner1(pc: ema)

sho.cituationCheck()
ema.beginWorking()
    

