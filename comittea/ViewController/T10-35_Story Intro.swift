//
//  T10-35_Story Intro.swift
//  comittea
//
//  Created by Dennis Anthony on 19/06/22.
//

import UIKit

class T10_35_Story_Intro: UIViewController {
    
    @IBOutlet weak var Story_Thumbnail: UIImageView!
    let ChapThumbnail = [UIImage(named: "Chap_Planning Ahead"), UIImage(named: "Chap_Buying Tickets"), UIImage(named: "Chap_Seating Placement")]
    
    @IBOutlet weak var ChapTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Story_Thumbnail.image = UIImage(named: "Story_Thumbnail")

        self.ChapTableView.dataSource = self
        self.ChapTableView.delegate = self
        self.registerTableViewCells()
    }
}


extension T10_35_Story_Intro: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ChapThumbnail.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ChapterCellID") as? ChapterCell {
            
            if  indexPath.row == 0 {
                cell.Chap_Thumbnail.image = ChapThumbnail[indexPath.row]
            } else {
                cell.Chap_Thumbnail.image = grayscale(image: ChapThumbnail[indexPath.row]!)
            }
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    private func registerTableViewCells() {
        let textFieldCell = UINib(nibName: "ChapterCell",
                                  bundle: nil)
        self.ChapTableView.register(textFieldCell,
                                forCellReuseIdentifier: "ChapterCellID")
    }
    
    func grayscale(image: UIImage) -> UIImage? {
        let context = CIContext(options: nil)
        if let filter = CIFilter(name: "CIPhotoEffectNoir") {
            filter.setValue(CIImage(image: image), forKey: kCIInputImageKey)
            if let output = filter.outputImage {
                if let cgImage = context.createCGImage(output, from: output.extent) {
                    return UIImage(cgImage: cgImage)
                }
            }
        }
        return nil
    }
    
}
