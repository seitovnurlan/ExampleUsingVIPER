//
//  PhotoListViewProtocol.swift
//  ExampleUsingVIPERarchitecture
//
//  Created by Nurlan Seitov on 15/9/23.
//

import Foundation

// Протокол для View
protocol PhotoListViewProtocol: AnyObject {
    func showPhotos(_ photos: [Photo])
    func showError(_ error: Error)
}

// Протокол для Presenter
protocol PhotoListPresenterProtocol: AnyObject {
    func viewDidLoad()
    func didSelectPhoto(_ photo: Photo)
}

// Протокол для Interactor
protocol PhotoListInteractorProtocol: AnyObject {
    func fetchPhotos()
}

// Протокол для Router
protocol PhotoListRouterProtocol: AnyObject {
    func navigateToPhotoDetail(_ photo: Photo)
}
