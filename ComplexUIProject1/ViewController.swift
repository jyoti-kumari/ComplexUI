//
//  ViewController.swift
//  ComplexUIProject1
//
//  Created by Jyoti Kumari 2 on 3/25/21.
//

import UIKit

// MARK: custom books cell created
class booksCell: UITableViewCell {

    @IBOutlet var bookLabel : UILabel!
    @IBOutlet var authorLabel : UILabel!
    @IBOutlet var letterLabel : UILabel!
    @IBOutlet var authorImage : UIImageView!
    @IBOutlet var bookMarkImage : UIImageView!
    @IBOutlet var dotsImage : UIImageView!
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // round cornered image
        authorImage.layer.cornerRadius = authorImage.frame.size.width / 2
        authorImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}


class ViewController: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    
    // static data for the list
    let booksNameArray: [String] = ["Politics of Opportunism", "Malayalam poetry", "The Testaments", "Celestial Bodies", "Cheque book"]
    let authorsNameArray: [String] = ["R P N Singh", "Akkitham Achuthan", "Margaret Atwood", "Jokha Alharthi", "Vasdev Mohi"]
    let colorsArray: [UIColor] = [.blue, .green, .systemRed, .orange, .cyan]
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    


}

// MARK: table view data source methods
extension ViewController:  UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return booksNameArray.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = self.tblView.dequeueReusableCell(withIdentifier: "cell") as! booksCell
    cell.bookLabel.text = booksNameArray[indexPath.row]
    cell.authorLabel.text = authorsNameArray[indexPath.row]
    cell.letterLabel.text = String(authorsNameArray[indexPath.row].prefix(1))
    
    return cell
  }
}

