import UIKit

class ArticleController: UIViewController {
    //let api = API()
    var article: Article!
    
    var selectedArticleSourceName = ""
    var selectedArticleAuthor = ""
    var selectedArticleImage = ""
    var selectedArticleTitle = ""
    var selectedArticleDescription = ""
  
    
    
    @IBOutlet weak var artricleSourceNameLbl: UILabel!
    @IBOutlet weak var authorNameLbl: UILabel!
    @IBOutlet weak var articleTitleLbl: UILabel!
    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var articleDescriptionLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        articleTitleLbl.text = selectedArticleTitle
        authorNameLbl.text = "By: \(selectedArticleAuthor)"
        articleImageView.load(url: selectedArticleImage)
        artricleSourceNameLbl.text = selectedArticleSourceName
        articleDescriptionLbl.text = selectedArticleDescription
    }
    

}
