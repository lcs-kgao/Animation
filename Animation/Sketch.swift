// Extend the Degrees data type so that we can obtain it's value in radians
extension Degrees {
    func toRadians() -> Double {
        return Double(self) * Double.pi / 180.0
    }
}
import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var x2 : Int
    var y2 : Int
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        x2 = 500
        y2 = 500
        
        canvas.drawShapesWithBorders = false
    canvas.fillColor = Color.black
        canvas.drawRectangle(centreX: 250, centreY: 250, width: 500, height: 500)
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        x2 -= 1
        
        // set the sin equation
        y = Int(100*sin(0.02631819699*Double(x)))
        
        //curves run in few times
        for k in stride(from: 0, to: 500, by: 20){
            
        // Draw an ellipse
            canvas.fillColor = Color(hue: k, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawEllipse(centreX: x, centreY: y+k, width: 5, height: 5)
        canvas.drawEllipse(centreX: , centreY: , width: 5, height: 5)
            
            
            
        }
    }
}

