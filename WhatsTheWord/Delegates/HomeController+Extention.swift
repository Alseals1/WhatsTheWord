import Foundation
import UIKit

extension HomeController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = UIStoryboard(name: "ArticleStoryboard", bundle: nil).instantiateViewController(withIdentifier: "Article") as? ArticleController else { return }
        vc.selectedArticleTitle = allAtricle[indexPath.row].title
        vc.selectedArticleImage = allAtricle[indexPath.row].urlToImage!
        vc.selectedArticleSourceName = allAtricle[indexPath.row].source.name
        vc.selectedArticleAuthor = allAtricle[indexPath.row].author ?? ""
        vc.selectedArticleDescription = allAtricle[indexPath.row].description ?? "No Content"
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .partialCurl
        present(vc, animated: true)
    }
}
