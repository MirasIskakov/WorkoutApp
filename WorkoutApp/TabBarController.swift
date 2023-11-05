//
//  TabBarController.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 05.11.2023.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Color.active
        tabBar.barTintColor = Resources.Color.inActive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Color.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = UIViewController()
        let sessionController = UIViewController()
        let progressController = UIViewController()
        let settingsController = UIViewController()
        
        let overviewNavigation = UINavigationController(rootViewController: overviewController)
        let sessionNavigation = UINavigationController(rootViewController: sessionController)
        let progressNavigation = UINavigationController(rootViewController: progressController)
        let settingsNavigation = UINavigationController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TebBar.overview,
                                                     image: Resources.Images.TebBar.overview,
                                                     tag: Tabs.overview.rawValue )
        sessionNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TebBar.session,
                                                     image: Resources.Images.TebBar.session,
                                                     tag: Tabs.session.rawValue )
        progressNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TebBar.progress,
                                                     image: Resources.Images.TebBar.progress,
                                                     tag: Tabs.progress.rawValue )
        settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TebBar.settings,
                                                     image: Resources.Images.TebBar.settings,
                                                     tag: Tabs.settings.rawValue )
        setViewControllers([
            overviewNavigation,
            sessionNavigation,
            progressNavigation,
            settingsNavigation
        ], animated: false)
    }
}
