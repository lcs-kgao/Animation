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
        canvas.drawShapesWithBorders = false
        
        // Set starting position
        x = random(from: 10, toButNotIncluding: 100)
        y = random(from: 60, toButNotIncluding: 300)
        
        //set the difference
        dx = 1
        dy = 1
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
    
        // Clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: canvas.width, height: canvas.height)
        
        // Change position
        x += dx
        y += dy

        
        if x > 450 {
            dx = -1
        }
        
        if x < 50 {
            dx = 1
        }
        
        if y > 450 {
            dy = -1
        }
        
        if y < 50 {
            dy = 1
        }
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.borderColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 100, height: 100, borderWidth: x)
        
    }
    
}
