//
//  AppDIContainer.swift
//  MuseumGid
//
//  Created by andrew on 23.11.25.
//

import UIKit
import Combine

final class AppDIContainer: ObservableObject {
    
    //    private let appConfiguration: AppConfiguration
    //    private let appCustomization: AppCustomization
    
    //    private lazy var sharedViewModel: MainViewModel = {
    //        makeMainViewModel()
    //    }()
    
    init() {
        //        self.appConfiguration = AppConfiguration()
        //        self.appCustomization = AppCustomization()
        //        
        //        lcLogger.construct()
    }
    
    deinit {
        //        lcLogger.destruct()
    }
}

extension AppDIContainer {
    func makeMainViewController() -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .orange
        return viewController
    }
}

// MARK: - View Models
private extension AppDIContainer {
    //    func makeMainViewModel() -> MainViewModel {
    //        MainViewModel()
    //    }
}

// MARK: - MainViewControllerFactory
//extension AppDIContainer: MainViewControllerFactory {
////    func makeSignedInViewController() -> SignedInViewController {
////        let dependencies = SignedInDIContainer.Dependencies()
////        let diContainer = SignedInDIContainer(dependencies: dependencies)
////        return diContainer.makeSignedInController()
////    }
////    
////    func makeOnboardingViewController() -> OnboardingViewController {
////        let diContainer = OnboardingDIContainer()
////        return diContainer.makeOnboardingViewController()
////    }
//}
