//
//  MainTabBarController.swift
//  TabBar
//
//  Created by Игорь Солодянкин on 31.07.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateTabBar()
    }
    
    private func generateTabBar() {
        viewControllers = [
            generateVC(
                viewController: ProductListViewController(),
                title: "Продукты",
                image: UIImage(systemName: "list.star")
            ),
            generateVC(
                viewController: MenuCollectionView(),
                title: "Меню",
                image: UIImage(systemName: "book.closed.fill")
            ),
            generateVC(
                viewController: ListTablesViewController(),
                title: "События",
                image: UIImage(systemName: "calendar")
            ),
            generateVC(
                viewController: FavoriteCollectionView(),
                title: "Избранное",
                image: UIImage(systemName: "suit.heart.fill")
            ),
            generateVC(
                viewController: ShoppingListViewController(),
                title: "Покупки",
                image: UIImage(systemName: "cart.fill")
            ),
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
}
