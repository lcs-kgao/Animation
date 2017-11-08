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
    var x : Degrees
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
        x2 = 0
        y2 = 0
        
        
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.black
        canvas.drawRectangle(centreX: 250, centreY: 250, width: 500, height: 500)
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        x2 += 1
        
        
        
        // set the sin equation
        let a : Double = 0.73
        y = Int(100*sin(a*Double(x.toRadians()*2)))
        
        //set the parabola equation
        let a2 : Double = -1/20
        y2 = Int(a2*(Double(x2)-300)*(Double(x2)-300)+100)
        
        
        //curves run in few times
        for k in stride(from: 0, to: 500, by: 20){
            
            if canvas.frameCount < 250 {
                
                
                // Draw an ellipse
                canvas.fillColor = Color(hue: k, saturation: 100, brightness: 100, alpha: 100)
                canvas.drawEllipse(centreX: Int(x), centreY: y+k, width: 5, height: 5)
                canvas.drawEllipse(centreX: canvas.width - Int(x), centreY: -y+k, width: 5, height: 5)
            } else if canvas.frameCount >= 250 {
                    canvas.fillColor = Color.white
                    canvas.drawEllipse(centreX: Int(x2), centreY: y2+k, width: 5, height: 5)
                   // canvas.drawEllipse(centreX: Int(-x2), centreY: y2+k, width: 5, height: 5)
                
                
            }
            
        }
    }}

