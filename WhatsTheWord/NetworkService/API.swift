import Foundation


struct API {
    
   let baseURL =  "https://newsapi.org/v2/top-headlines?country=us&apiKey=b13f73bc07c6427198b0141aac166783"
    var allAtricle: [News] = []
    
    
    
    func fetchArticle(completion: @escaping ([Article]?) -> ()) {
        guard let url = URL(string: baseURL) else {
            print("ERROR: Could not create a URL from \(baseURL)")
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print("😡 Error: \(error.localizedDescription)")
            }
            let decoder = JSONDecoder()
            DispatchQueue.main.async {
                do{
                    let myData = try? decoder.decode(News.self, from: data!)
                    completion(myData?.articles)
                } catch {
                    completion(nil)
                }
            }
        }
        task.resume()
        
        
    }
}


