import UIKit

class NewsCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: NewsCollectionViewCell.self)
    
    @IBOutlet weak var newsCellView: UIView!
    @IBOutlet weak var newsTitleLbl: UILabel!
    @IBOutlet weak var newsAuthorLbl: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        newsImage.layer.cornerRadius = 12
        newsImage.contentMode = .center
        newsCellView.layer.cornerRadius = 12
    }
}
