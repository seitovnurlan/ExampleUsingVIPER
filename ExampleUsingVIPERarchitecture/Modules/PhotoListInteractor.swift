//
//  PhotoListInteractor.swift
//  ExampleUsingVIPERarchitecture
//
//  Created by Nurlan Seitov on 15/9/23.
//

import Alamofire
import SwiftyJSON

// Interactor
class PhotoListInteractor: PhotoListInteractorProtocol {
    
    weak var presenter: PhotoListPresenterProtocol?

    init(presenter: PhotoListPresenterProtocol) {
        self.presenter = presenter
    }

    // Реализация методов для выполнения запросов к API и передачи данных обратно в презентер
    
    func fetchPhotos() {
            // Здесь мы выполняем запрос к Unsplash API с использованием Alamofire
            // и затем обрабатываем полученные данные с помощью SwiftyJSON
            AF.request("https://api.unsplash.com/photos").responseJSON { response in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    var photos = [Photo]()

                    for (_, photoJSON):(String, JSON) in json {
                        if let id = photoJSON["id"].string,
                           let url = photoJSON["urls"]["regular"].string {
                            let photo = Photo(id: id, url: url)
                            photos.append(photo)
                        }
                    }

                    self.presenter?.photosFetched(photos)
                case .failure(let error):
                    self.presenter?.photosFetchFailed(error)
                }
            }
        }
}
