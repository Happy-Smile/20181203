import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var keyLabel: UILabel!

    var firstPoint: CGPoint!
    var lastPoint: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches began")

        if let touch = touches.first {
            firstPoint = touch.location(in: imageView)
            print("x: \(firstPoint.x), y: \(firstPoint.y)")
        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touches moved")
//
//        if let touch = touches.first {
//            let point = touch.location(in: imageView)
//            print("x: \(point.x), y: \(point.y)")
//
//        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches ended")

        if let touch = touches.first {
            lastPoint = touch.location(in: imageView)
            print("x: \(lastPoint.x), y: \(lastPoint.y)")
            
            if (firstPoint.x > 0 && firstPoint.x < 100) && (firstPoint.y > 0 && firstPoint.y < 100)
                && (lastPoint.x > 0 && lastPoint.x < 100) && (lastPoint.y > 0 && lastPoint.y < 100)
            {
                keyLabel.text = "ㅂ"
            }
            else if (firstPoint.x > 0 && firstPoint.x < 100) && (firstPoint.y > 0 && firstPoint.y < 100)
                && (lastPoint.x > 0 && lastPoint.x < 100) && (lastPoint.y < 0)
            {
                keyLabel.text = "ㅃ"
            }
            else if (firstPoint.x > 0 && firstPoint.x < 100) && (firstPoint.y > 0 && firstPoint.y < 100)
                && (lastPoint.x == 0) && (lastPoint.y > 0 && lastPoint.y < 100)
            {
                keyLabel.text = "ㅍ"
            }
            else {
                keyLabel.text = "자음 출력"
            }
        }
    }
    
    // 터치한 좌표들(Began ~ Ended)을 가지고 해당 좌표들이 'ㅂ' 영역((0,0) ~ (100,100)) 에 있을 경우 'ㅂ' 출력
}


