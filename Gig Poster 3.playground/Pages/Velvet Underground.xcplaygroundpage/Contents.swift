//: # Gig Poster 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![velvet-underground-no-grid](VelvetUnderground.png "Velvet Underground")
 ![velvet-underground-with-grid](VelvetUnderground-with-grid.png "Velvet Underground")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let purple = Color(hue: 309, saturation: 78, brightness: 64, alpha: 100)
let offWhite = Color(hue: 83, saturation: 4, brightness: 89, alpha: 100)

// Begin your solution here...
canvas.fillColor = black
canvas.drawRectangle(at: CGPoint(x: 0, y: 0), width: canvas.width, height: canvas.height)

canvas.textColor = offWhite
canvas.drawText(message: "the velvet underground", at: CGPoint(x: 10, y: 420), size: 30, kerning: 0.0)
canvas.drawText(message: "first appearance in london", at: CGPoint(x: 10, y: 550), size: 9, kerning: 0.0)
canvas.drawText(message: "the london college of printing", at: CGPoint(x: 10, y: 535), size: 9, kerning: 0.0)
canvas.drawText(message: "with spring and pollyfloskin", at: CGPoint(x: 150, y: 550), size: 9, kerning: 0.0)
canvas.drawText(message: "plus the great western light show", at: CGPoint(x: 150, y: 535), size: 9, kerning: 0.0)
canvas.drawText(message: "thursday", at: CGPoint(x: 300, y: 550), size: 9, kerning: 0.0)
canvas.drawText(message: "october 14 1917 /8pm", at: CGPoint(x: 300, y: 535), size: 9, kerning: 0.0)

canvas.lineColor = offWhite
canvas.drawLine(from: CGPoint(x: 0, y: 575), to: CGPoint(x: 400, y: 575))
canvas.drawLine(from: CGPoint(x: 0, y: 465), to: CGPoint(x: 400, y: 465))



for y in 0...4{
    
    for x in 0...4{
        
        if y == x {
            canvas.lineColor = offWhite
        } else {
            canvas.lineColor = purple
        }
        
        canvas.drawLine(from: CGPoint(x: x * 80 + 10, y: y * 80 + 10), to: CGPoint(x: x * 80 + 45 , y: y * 80 + 10), lineWidth: 20, capStyle: NSBezierPath.LineCapStyle.square)
        
        canvas.drawLine(from: CGPoint(x: x * 80 + 10, y: y * 80 + 10), to: CGPoint(x: x * 80 + 10, y: y * 80 + 45), lineWidth: 20, capStyle: NSBezierPath.LineCapStyle.square)

        canvas.drawLine(from: CGPoint(x: x * 80 + 20, y: y * 80 + 20), to: CGPoint(x: x * 80 + 65, y: y * 80 + 65), lineWidth: 20, capStyle: NSBezierPath.LineCapStyle.square)
    }
    
    
}

/*:
 ## Use Source Control
 
 Remember to commit and push your work before 12:05 PM on Wednesday, January 22, 2020, please.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

