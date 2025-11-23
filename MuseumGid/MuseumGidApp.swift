//
//  MuseumGidApp.swift
//  MuseumGid
//
//  Created by andrew on 23.11.25.
//

import SwiftUI
import CoreData
import Combine

@main
struct MuseumGidApp: App {
    
    @Environment(\.scenePhase) private var scenePhase
    @Environment(\.openURL) var openURL
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    
    init() {
#if DEBUG
        //        Bagel.start()
#endif
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some Scene {
        ApplicationScene(appDIContainer: AppDIContainer())
        //            .onChange(of: scenePhase) { phase in
        //                switch phase {
        //                case .background:
        //                    print("background")
        //                case .inactive:
        //                    print("inactive")
        //                case .active:
        //                    print("active")
        //                @unknown default:
        //                    print("default")
        //                }
        //            }
    }
}

import UIKit
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
#if DEBUG || APP
        //        SettingsAppBundleHelper.shared
#endif
        return true
    }
}


struct ApplicationScene: Scene {
    @StateObject var appDIContainer: AppDIContainer
    
    var body: some Scene {
        WindowGroup {
            MyViewControllerWrapper(appDIContainer: appDIContainer)
        }
    }
}

struct MyViewControllerWrapper: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController
    
    var appDIContainer: AppDIContainer
    
    init(appDIContainer: AppDIContainer){
        self.appDIContainer = appDIContainer
    }
    
    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = appDIContainer.makeMainViewController()
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}
