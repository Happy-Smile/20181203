import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var keyLabel: UILabel!

    var firstPoint: CGPoint!
    var middlePoint : CGPoint!
    var lastPoint: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage.init(named: "keyBoard v1.0")
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches began")

        if let touch = touches.first {
            firstPoint = touch.location(in: imageView)
            print("x: \(firstPoint.x), y: \(firstPoint.y)")
        }
    }

    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches moved")

        if let touch = touches.first {
            middlePoint = touch.location(in: imageView)
            print("x: \(middlePoint.x), y: \(middlePoint.y)")
        }
    }

    func buttonClick (x1:CGFloat, x2:CGFloat, y1:CGFloat, y2:CGFloat, S:String, S1:String, S2:String) {
        if (firstPoint.x >= x1 && firstPoint.x < x2) && (firstPoint.y >= y1 && firstPoint.y < y2)
            && (lastPoint.x >= x1 && lastPoint.x < x2) && (lastPoint.y >= y1 && lastPoint.y < y2)
        {
            keyLabel.text = S
        }
        else if (firstPoint.x >= x1 && firstPoint.x < x2) && (firstPoint.y >= y1 && firstPoint.y < y2)
            && (lastPoint.x >= x1 && lastPoint.x < x2) && (lastPoint.y <= y1)
        {
            keyLabel.text = S1
        }
        else if (firstPoint.x >= x1 && firstPoint.x < x2) && (firstPoint.y >= y1 && firstPoint.y < y2)
            && (lastPoint.x >= x1 && lastPoint.x < x2) && (lastPoint.y > y2)
        {
            keyLabel.text = S2
        }

    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches ended")

        if let touch = touches.first {
            lastPoint = touch.location(in: imageView)
            print("x: \(lastPoint.x), y: \(lastPoint.y)")
            
            buttonClick(x1: 0, x2: 70, y1: 0, y2: 60, S: "ㅂ", S1: "ㅃ", S2: "ㅍ")
            buttonClick(x1: 70, x2: 140, y1: 0, y2: 60, S: "ㅈ", S1: "ㅉ", S2: "ㅊ")
            buttonClick(x1: 140, x2: 210, y1: 0, y2: 60, S: "ㄷ", S1: "ㄸ", S2: "ㅌ")
            
            buttonClick(x1: 0, x2: 70, y1: 60, y2: 120, S: "ㄱ", S1: "ㄲ", S2: "ㅋ")
            buttonClick(x1: 70, x2: 140, y1: 60, y2: 120, S: "ㅅ", S1: "ㅆ", S2: "+")
            buttonClick(x1: 140, x2: 210, y1: 60, y2: 120, S: "ㅁ", S1: "#", S2: "@")
            
            buttonClick(x1: 0, x2: 70, y1: 120, y2: 180, S: "ㄴ", S1: "" , S2: " ' ")
            buttonClick(x1: 70, x2: 140, y1: 120, y2: 180, S: "ㅇ", S1: "^^", S2: "ㅎ")
            buttonClick(x1: 140, x2: 210, y1: 120, y2: 180, S: "ㄹ", S1: "~", S2: ".")
            
            if (firstPoint.x >= 210 && firstPoint.x < 280) && (firstPoint.y >= 0 && firstPoint.y < 60)
                && (lastPoint.x >= 210 && lastPoint.x < 280) && (lastPoint.y >= 0 && lastPoint.y < 60)
            {
                keyLabel.text = "ㅗ"
            }
            else if (firstPoint.x >= 210 && firstPoint.x < 280) && (firstPoint.y >= 0 && firstPoint.y < 60)
                && (lastPoint.x >= 210 && lastPoint.x < 280) && (lastPoint.y <= 0)
            {
                keyLabel.text = "ㅛ"
            } else if (firstPoint.x >= 280 && firstPoint.x < 350) && (firstPoint.y >= 0 && firstPoint.y < 60)
                && (lastPoint.x >= 280 && lastPoint.x < 350) && (lastPoint.y >= 0 && lastPoint.y < 60)
            {
                keyLabel.text = "ㅏ"
            }
            else if (firstPoint.x >= 280 && firstPoint.x < 350) && (firstPoint.y >= 0 && firstPoint.y < 60)
                && (lastPoint.x >= 350) && (lastPoint.y >= 0 && lastPoint.y < 60)
            {
                keyLabel.text = "ㅑ"
            } else if (firstPoint.x >= 210 && firstPoint.x < 280) && (firstPoint.y >= 0 && firstPoint.y < 60)
                && (middlePoint.x >= 210 && middlePoint.x < 280) && (middlePoint.y >= 0 && middlePoint.y < 120)
                && (lastPoint.y > 60)
            {
                keyLabel.text = "ㅚ"
            } else if (firstPoint.x >= 210 && firstPoint.x < 280) && (firstPoint.y >= 0 && firstPoint.y < 60)
                && (middlePoint.x >= 210 && middlePoint.x < 350) && (middlePoint.y >= 0 && middlePoint.y < 120)
                && (lastPoint.y > 60 && lastPoint.y <= 120)
            {
                keyLabel.text = "ㅙ"
            } else if (firstPoint.x >= 210 && firstPoint.x < 280) && (firstPoint.y >= 0 && firstPoint.y < 60)
                && (lastPoint.x > 280) && (lastPoint.y >= 0 && lastPoint.y < 60)
            {
                keyLabel.text = "ㅘ"
            }  else if (firstPoint.x >= 280 && firstPoint.x < 350) && (firstPoint.y >= 0 && firstPoint.y < 60)
                && (middlePoint.x >= 280 && middlePoint.x < 350) && (middlePoint.y >= 0 && middlePoint.y < 120)
                && (lastPoint.y > 60)
            {
                keyLabel.text = "ㅐ"
            } else if (firstPoint.x >= 280 && firstPoint.x < 350) && (firstPoint.y >= 0 && firstPoint.y < 60)
                && (middlePoint.x >= 280 && middlePoint.x < 373) && (middlePoint.y >= 0 && middlePoint.y < 120)
                && (lastPoint.y > 60)
            {
                keyLabel.text = "ㅒ"
            }
            
            
            
            if (firstPoint.x >= 210 && firstPoint.x < 280) && (firstPoint.y >= 120 && firstPoint.y < 180)
                && (lastPoint.x >= 210 && lastPoint.x < 280) && (lastPoint.y >= 120 && lastPoint.y < 180)
            {
                keyLabel.text = "ㅓ"
            }
            else if (firstPoint.x >= 210 && firstPoint.x < 280) && (firstPoint.y >= 120 && firstPoint.y < 180)
                && (lastPoint.x < 210) && (lastPoint.y >= 120 && lastPoint.y < 180)
            {
                keyLabel.text = "ㅕ"
            } else if (firstPoint.x >= 280 && firstPoint.x < 350) && (firstPoint.y >= 120 && firstPoint.y < 180)
                && (lastPoint.x >= 280 && lastPoint.x < 350) && (lastPoint.y >= 120 && lastPoint.y < 180)
            {
                keyLabel.text = "ㅜ"
            }
            else if (firstPoint.x >= 280 && firstPoint.x < 350) && (firstPoint.y >= 120 && firstPoint.y < 180)
                && (lastPoint.x >= 280 && lastPoint.x < 350) && (lastPoint.y >= 180)
            {
                keyLabel.text = "ㅠ"
            } else if (firstPoint.x >= 280 && firstPoint.x < 350) && (firstPoint.y >= 120 && firstPoint.y < 180)
                && (middlePoint.x > 210 && middlePoint.x < 280) && (middlePoint.y >= 60 && middlePoint.y < 180)
                && (lastPoint.y > 60 && lastPoint.y <= 120)
            {
                keyLabel.text = "ㅞ"
            }else if (firstPoint.x >= 280 && firstPoint.x < 350) && (firstPoint.y >= 120 && firstPoint.y < 180)
                && (lastPoint.x < 280) && (lastPoint.y >= 120 && lastPoint.y < 180)
            {
                keyLabel.text = "ㅝ"
            } else if (firstPoint.x >= 210 && firstPoint.x < 280) && (firstPoint.y >= 120 && firstPoint.y < 180)
                && (lastPoint.y < 120)
            {
                keyLabel.text = "ㅔ"
            } else if (firstPoint.x >= 280 && firstPoint.x < 350) && (firstPoint.y >= 120 && firstPoint.y < 180)
                && (lastPoint.y < 120)
            {
                keyLabel.text = "ㅟ"
            }
            
            
            if (firstPoint.x >= 234 && firstPoint.x < 303) && (firstPoint.y >= 60 && firstPoint.y < 120)
                && (lastPoint.x >= 234 && lastPoint.x < 303) && (lastPoint.y >= 60 && lastPoint.y < 120)
            {
                keyLabel.text = "ㅣ"
            } else if (firstPoint.x >= 234 && firstPoint.x < 303) && (firstPoint.y >= 60 && firstPoint.y < 120)
                && (lastPoint.x < 234) && (lastPoint.y >= 60 && lastPoint.y < 120)
            {
                keyLabel.text = "ㅢ"
            } else if (firstPoint.x >= 234 && firstPoint.x < 303) && (firstPoint.y >= 60 && firstPoint.y < 120)
                && (lastPoint.x > 303) && (lastPoint.y >= 60 && lastPoint.y < 120)
            {
                keyLabel.text = "ㅡ"
            }
            
            
            
        }
    }
    
    
    // 터치한 좌표들(Began ~ Ended)을 가지고 해당 좌표들이 'ㅂ' 영역((0,0) ~ (100,100)) 에 있을 경우 'ㅂ' 출력
    //끝

}


