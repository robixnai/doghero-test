//
//  DogHeroTestUITests.swift
//  doghero-testUITests
//
//  Created by Robson Moreira on 24/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import XCTest

class DogHeroTestUITests: XCTestCase {
    
    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() { }

    func testShowMyHeroresViewController() {
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        let cell = collectionViewsQuery.children(matching: .cell).element(boundBy: 3)
        cell.children(matching: .other).element.children(matching: .other).element.swipeUp()
        cell.images["icon_heart_filled"].tap()
        collectionViewsQuery.children(matching: .cell).element(boundBy: 2).images["icon_heart_filled"].tap()
        
        let cell2 = collectionViewsQuery.children(matching: .cell).element(boundBy: 1)
        cell2.children(matching: .other).element.children(matching: .other).element.swipeDown()
        collectionViewsQuery.children(matching: .cell).element(boundBy: 0).buttons["Conversar"]/*@START_MENU_TOKEN@*/.press(forDuration: 0.6);/*[[".tap()",".press(forDuration: 0.6);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        let okButton = app.alerts["Alert"].buttons["OK"]
        okButton.tap()
        cell2.buttons["Reservar de novo"].tap()
        okButton.tap()
        
    }

}
