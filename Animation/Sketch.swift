import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x1 : Int
    var y1 : Int
    var x2 : Int
    var y2 : Int
    
    //change in position
    var dx1 : Int
    var dy1 : Int
    var dx2 : Int
    var dy2 : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
       // canvas.drawShapesWithBorders = false
        
        // Set starting position
        x1 = random(from: 100, toButNotIncluding: 150)
        y1 = random(from: 200, toButNotIncluding: 250)
        x2 = 200
        y2 = 250
        
        //set the difference
        dx1 = 1
        dy1 = 1
        dx2 = 1
        dy2 = 1
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
    
        // Clear the background
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: canvas.width, height: canvas.height)
        
        // Change position
        x1 += dx1
        y1 += dy1
        x2 += dx2
        

        
        if x1 > 450 {
            dx1 = -1
        }
        
        if x1 < 50 {
            dx1 = 1
        }
        
        if y1 > 450 {
            dy1 = -1
        }
        
        if y1 < 50 {
            dy1 = 1
        }
        
        if x2 > 500{
            dx2 = -1
        }
        if x2 < 0{
            dx2 = 1
        }
      
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.white
        canvas.borderColor = Color.black
        canvas.drawEllipse(centreX: x1, centreY: y1, width: 100, height: 100, borderWidth: 3)
        canvas.drawEllipse(centreX: x1, centreY: y1, width: 1, height: 1 , borderWidth: 1)
        canvas.drawEllipse(centreX: x2, centreY: y2, width: 220, height: 220, borderWidth: 3)
        canvas.drawEllipse(centreX: x2, centreY: y2, width: 1, height: 1, borderWidth: 1)
        
    }
    
}
