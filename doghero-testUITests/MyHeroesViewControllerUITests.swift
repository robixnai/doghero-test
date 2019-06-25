//
//  MyHeroesViewControllerUITests.swift
//  doghero-testUITests
//
//  Created by Robson Moreira on 24/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import XCTest

class MyHeroesViewControllerUITests: XCTestCase {
    
    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() { }

    func testShowMyHeroresCollectionView() {
        
        let collectionViewsQuery = XCUIApplication().collectionViews
        collectionViewsQuery.children(matching: .cell).element(boundBy: 3).children(matching: .other).element.children(matching: .other).element.swipeUp()
        collectionViewsQuery.children(matching: .cell).element(boundBy: 2).children(matching: .other).element.children(matching: .other).element.swipeDown()
        
    }

}
