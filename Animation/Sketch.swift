import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    
    //change in position
    var dx : Int
    var dy : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 10, toButNotIncluding: 400)
        y = random(from: 60, toButNotIncluding: 400)
        
        //set the difference
        dx = 1
        dy = 1
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
    
        
        // Change position
        x += dx
        y += dy

        
        if x > 500{
            dx = -1
        }
        
        if x < 0{
            dx = 1
        }
        
        if y > 500{
            dy = -1
        }
        
        if y < 0{
            dy = 1
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}
