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
    
    func testTapButtonTalkShowAlert() {
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery.children(matching: .cell).element(boundBy: 0).buttons["Conversar"]/*@START_MENU_TOKEN@*/.press(forDuration: 0.6);/*[[".tap()",".press(forDuration: 0.6);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        let okButton = app.alerts["Alert"].buttons["OK"]
        okButton.tap()
        collectionViewsQuery.children(matching: .cell).element(boundBy: 1).buttons["Conversar"]/*@START_MENU_TOKEN@*/.press(forDuration: 0.6);/*[[".tap()",".press(forDuration: 0.6);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        okButton.tap()
        
        let cell = collectionViewsQuery.children(matching: .cell).element(boundBy: 3)
        cell.children(matching: .other).element.children(matching: .other).element.swipeUp()
        collectionViewsQuery.children(matching: .cell).element(boundBy: 4).buttons["Conversar"].tap()
        okButton.tap()
        collectionViewsQuery.children(matching: .cell).element(boundBy: 2).buttons["Conversar"]/*@START_MENU_TOKEN@*/.press(forDuration: 0.5);/*[[".tap()",".press(forDuration: 0.5);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        okButton.tap()
        cell.buttons["Conversar"]/*@START_MENU_TOKEN@*/.press(forDuration: 0.6);/*[[".tap()",".press(forDuration: 0.6);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        okButton.tap()
        
    }
    
    func testTapButtonBookAgainShowAlert() {
        
        let app = XCUIApplication()
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery.children(matching: .cell).element(boundBy: 0).buttons["Reservar de novo"]/*@START_MENU_TOKEN@*/.press(forDuration: 0.7);/*[[".tap()",".press(forDuration: 0.7);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        let okButton = app.alerts["Alert"].buttons["OK"]
        okButton.tap()
        collectionViewsQuery.children(matching: .cell).element(boundBy: 1).buttons["Reservar de novo"]/*@START_MENU_TOKEN@*/.press(forDuration: 0.5);/*[[".tap()",".press(forDuration: 0.5);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        okButton.tap()
        
        let cell = collectionViewsQuery.children(matching: .cell).element(boundBy: 3)
        cell.children(matching: .other).element.children(matching: .other).element.swipeUp()
        collectionViewsQuery.children(matching: .cell).element(boundBy: 4).buttons["Reservar de novo"]/*@START_MENU_TOKEN@*/.press(forDuration: 0.6);/*[[".tap()",".press(forDuration: 0.6);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        okButton.tap()
        collectionViewsQuery.children(matching: .cell).element(boundBy: 2).buttons["Reservar de novo"].tap()
        okButton.tap()
        cell.buttons["Reservar de novo"].tap()
        okButton.tap()
        
    }
    
    func testTapButtonFavorites() {
        
        let collectionViewsQuery = XCUIApplication().collectionViews
        let iconHeartFilledImage = collectionViewsQuery.children(matching: .cell).element(boundBy: 2).images["icon_heart_filled"]
        iconHeartFilledImage.tap()
        
        let collectionViewsQuery2 = collectionViewsQuery
        let iconHeartUnfilledImage = collectionViewsQuery2/*@START_MENU_TOKEN@*/.images["icon_heart_unfilled"]/*[[".cells.images[\"icon_heart_unfilled\"]",".images[\"icon_heart_unfilled\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        iconHeartUnfilledImage.tap()
        
        let cell = collectionViewsQuery.children(matching: .cell).element(boundBy: 3)
        cell.children(matching: .other).element.children(matching: .other).element.swipeUp()
        
        let iconHeartFilledImage2 = cell.images["icon_heart_filled"]
        iconHeartFilledImage2.tap()
        iconHeartUnfilledImage.tap()
        
        let cell2 = collectionViewsQuery.children(matching: .cell).element(boundBy: 4)
        cell2.images["icon_heart_filled"].tap()
        iconHeartUnfilledImage.tap()
        iconHeartFilledImage.tap()
        iconHeartFilledImage2.tap()
        collectionViewsQuery2/*@START_MENU_TOKEN@*/.images["icon_heart_filled"]/*[[".cells.images[\"icon_heart_filled\"]",".images[\"icon_heart_filled\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        cell2.children(matching: .other).element.children(matching: .other).element.tap()
        cell2.images["icon_heart_unfilled"].tap()
        cell.images["icon_heart_unfilled"].tap()
        iconHeartUnfilledImage.tap()
        
    }
    
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
