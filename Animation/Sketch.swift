import Foundation

class Sketch : NSObject{
    // Canvas
    let canvas : Canvas
    
    //position of the circle
    var x : Int
    
    //This function runs once
    override init() {
        
        //Create canvas object
        canvas = Canvas(width: 500, height: 500)
        
        //Set starting position
        x = 250
    }
    
    //Runs in a loop
    func draw() {
        
        //change position
        x += 1
        
        //Draw the ellipses
     canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: x, centreY: 450, width: 50, height: 50)
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 50, width: 50, height: 50)
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(centreX: 500-x, centreY: 350, width: 50, height: 50)
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: 500-x, centreY: 150, width: 50, height: 50)
        canvas.fillColor = Color.green
    }
}

