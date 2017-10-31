//: [Previous](@previous) / [Next](@next)
//: # Test Area
//:
//: Use this page to experiment with a static image.
//:
//: When you perfect a technique, you can move it into the animated sketch.
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 300)

class Sketch : NSObject{
// Canvas
let canvas : Canvas

//position of the circle
    var x : Int

//This function runs once
override init() {
    
    //Create canvas object
    let canvas = Canvas(width: 500, height: 500)
    
    //Set starting position
    x = 250
    }

//Runs in a loop
func draw() {
    
    //change position
    x += 1
    
    //Draw the ellipses
    canvas.drawEllipse(centreX: X, centreY: 450, width: 50, height: 50)
    canvas.drawEllipse(centreX: X, centreY: 250, width: 50, height: 50)
    canvas.drawEllipse(centreX: X, centreY: 50, width: 50, height: 50)
    canvas.drawEllipse(centreX: 500-X, centreY: 350, width: 50, height: 50)
    canvas.drawEllipse(centreX: 500-X, centreY: 150, width: 50, height: 50)
}
}


/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


