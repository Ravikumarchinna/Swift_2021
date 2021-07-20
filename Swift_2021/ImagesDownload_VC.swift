//
//  ImagesDownload_VC.swift
//  Swift_2021
//
//  Created by Ravikumar on 6/26/21.
//

import UIKit
import CoreLocation


class ImagesDownload_VC: UIViewController {

    @IBOutlet weak var imgv_Sample: UIImageView!
    
    var arr_imageUrls = [User]()
    
    //............ To Make struct the automatically Instantly Parse any type data
    // https://app.quicktype.io/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.images_DownlaodUrls { (response, check) in
            if check == true{
                self.arr_imageUrls = response
            }
        }
        
    } //................ Didload End
    
    func images_DownlaodUrls(completionHandler :@escaping ([User],Bool) -> Void){
        
        let url = URL(string: "")!
        URLSession.shared.dataTask(with: url) { data ,response,error in
            
            guard error == nil, let data = data else {
                print(error as Any)
                return
            }
            if let album_response = try? JSONDecoder().decode([User].self, from: data){
                completionHandler(album_response,true)
            }
        }.resume()
    }

} //................... Controller End



//............................... Start Images Processing Urls
extension UIImage {
  convenience init?(url: URL?) {
    guard let url = url else { return nil }
    do {
      self.init(data: try Data(contentsOf: url))
    } catch {
      print("Cannot load image from url: \(url) with error: \(error)")
      return nil
    }
  }
}
//............................... End Images Processing Urls


struct User:Decodable {
    let id:Int
    let title:String
    let url:String
    let thumbnailUrl:String
}

