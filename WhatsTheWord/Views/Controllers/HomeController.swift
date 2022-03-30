import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var newsCollectionView: UICollectionView!
    let api = API()
    var allAtricle: [Article] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        api.fetchArticle  { article in
            if let article = article {
                self.allAtricle = article
                self.newsCollectionView.reloadData()
            }
            
        }
        registerCells()
    }
    
    private func registerCells() {
        newsCollectionView.register(UINib(nibName: NewsCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: NewsCollectionViewCell.identifier)
    }
}

extension HomeController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        allAtricle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsCollectionViewCell.identifier, for: indexPath) as! NewsCollectionViewCell
        
        cell.newsTitleLbl.text = allAtricle[indexPath.row].title
        cell.newsAuthorLbl.text = "by: \(allAtricle[indexPath.row].author ??  "What's The Word" )"
        cell.newsImage.load(url: allAtricle[indexPath.row].urlToImage ?? "")

        return cell
    }
}


