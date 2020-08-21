import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    var selectedSoundFileName : String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag - 1]

       playSound()

		// Made changes for Merginf testing

    }
    func playSound() {
        let soundUrl = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch {
			// Commented for merging testing from Dev to Master
          //  print(error)
        }
        audioPlayer.play()
    }
    
}

