//
//  PhotoListPresenter.swift
//  ExampleUsingVIPERarchitecture
//
//  Created by Nurlan Seitov on 15/9/23.
//

import Foundation

// Presenter
class PhotoListPresenter: PhotoListPresenterProtocol {
    func viewDidLoad() {
    
    }
    
    func didSelectPhoto(_ photo: Photo) {
    
    }
    
    weak var view: PhotoListViewProtocol?
    var interactor: PhotoListInteractorProtocol
    var router: PhotoListRouterProtocol

    init(view: PhotoListViewProtocol, interactor: PhotoListInteractorProtocol, router: PhotoListRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    // Реализация методов для управления бизнес-логикой
}
