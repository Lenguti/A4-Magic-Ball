import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var magicBallImage: UIImageView!
    @IBOutlet weak var revealAnswerButton: UIButton!
    let ballArray:[UIImage?] = [
        UIImage(named: "ball1"),
        UIImage(named: "ball2"),
        UIImage(named: "ball3"),
        UIImage(named: "ball4"),
        UIImage(named: "ball5")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
           
        // Set snake eye label to not active.
        magicBallImage.isHidden = true
           
        // Set Image Outlets to a UIImage with the given name.
        revealAnswerButton.backgroundColor = .clear
        revealAnswerButton.layer.cornerRadius = 5
        revealAnswerButton.layer.borderWidth = 1
        revealAnswerButton.layer.borderColor = UIColor.black.cgColor
    }

    @IBAction func revealAnswerTapped(_ sender: UIButton) {
        print("reveal answer tapped")
        magicBallImage.isHidden = false
        magicBallImage.image = ballArray[Int.random(in: 0...4)]
    }
}

