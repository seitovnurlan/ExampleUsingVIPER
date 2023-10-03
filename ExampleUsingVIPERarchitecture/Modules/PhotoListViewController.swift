//
//  ViewController.swift
//  ExampleUsingVIPERarchitecture
//
//  Created by Nurlan Seitov on 15/9/23.
//

import UIKit

// View
class PhotoListViewController: UIViewController, PhotoListViewProtocol {
    
    
    var presenter: PhotoListPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
    }

    // Реализация методов для отображения фотографий и обработки действий пользователя
    
    func showPhotos(_ photos: [Photo]) {
        
    }
    
    func showError(_ error: Error) {
        
    }
}
