import UIKit


// Step 1: Define the Base Protocol
protocol Monster {
    var name: String { get }
    func roar() -> String
}

// Step 2: Define Child Protocols
protocol FlyingMonster: Monster {
    var wingSpan: Double { get }
    func fly() -> String
}


protocol WaterMonster: Monster {
    var swimSpeed: Int { get }
    func swim() -> String
}


// Step 3: Create Four Classes
class Dragon: FlyingMonster {
    var name: String
    var wingSpan: Double
    
    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }
    
    func roar() -> String {
        return "roars fiercely, shaking the ground!"
    }
    func fly() -> String {
        return "spreads its \(self.wingSpan)-meter wings and takes to the sky!"
    }
    
}

class Gryphon: FlyingMonster {
    var name: String
    var wingSpan: Double
    
    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }
    
    
    func roar() -> String {
        return "screeches with a piercing cry!"
    }
    func fly() -> String {
        return "soars high with its majestic \(self.wingSpan)-meter wings!"
    }
    
}

class Kraken: WaterMonster {
    var name: String
    var swimSpeed: Int
    
    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    
    
    func roar() -> String {
        return "bellows from the deep, causing waves to crash!"
    }
    
    func swim() -> String {
        return "glides through the water at \(self.swimSpeed) knots!"
    }
    
}

class Merfolk: WaterMonster {
    var name: String
    var swimSpeed: Int
    
    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    
    func roar() -> String {
        return "sings an enchanting melody that stirs the seas!"
    }
    
    func swim() -> String {
        return "swims gracefully at \(self.swimSpeed) knots!"
    }
    
}

// Step 4: Create a Function to Handle Monsters

func printMonsterDetails(monsters: [Monster]) {
    for m in monsters {
        if let dragon = m as? Dragon {
            print("\(dragon.name) \(dragon.roar())")
            print("\(dragon.name) \(dragon.fly())\n")
        } else if let gryphon = m as? Gryphon {
            print("\(gryphon.name) \(gryphon.roar())")
            print("\(gryphon.name) \(gryphon.fly())\n")
        } else if let kraken = m as? Kraken {
            print("\(kraken.name) \(kraken.roar())")
            print("\(kraken.name) \(kraken.swim())\n")
        } else if let merfolk = m as? Merfolk {
            print("\(merfolk.name) \(merfolk.roar())")
            print("\(merfolk.name) \(merfolk.swim())")
        }
    }
}

var dragon: Dragon = Dragon(name: "Fire Drake", wingSpan: 15.0)
var gryphon: Gryphon = Gryphon(name: "Sky Hunter", wingSpan: 12.0)
var kraken: Kraken = Kraken(name: "Sea Terror", swimSpeed: 20)
var merfolk: Merfolk = Merfolk(name: "Coral Queen", swimSpeed: 10)

var monster: [Monster] = [dragon, gryphon, kraken, merfolk]

printMonsterDetails(monsters: monster)
