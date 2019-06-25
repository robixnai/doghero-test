//
//  MyHeroesViewModelTests.swift
//  doghero-testTests
//
//  Created by Robson Moreira on 24/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import XCTest
import DictionaryCoding
@testable import doghero_test

class MyHeroesViewModelTests: XCTestCase {
    
    fileprivate var viewModel: MyHeroesViewModel?

    override func setUp() {
        let decoder = DictionaryDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            let heroes: Heroes = try decoder.decode(Heroes.self, from: MyHeroes.apiAnswer)
            self.viewModel = MyHeroesViewModel(heroes: heroes)
        } catch {}
    }

    override func tearDown() {
        self.viewModel = nil
    }
    
    func testViewModel_NotNil() {
        XCTAssertNotNil(self.viewModel, "ViewModel can not be nil")
    }

    func testCountOfRecents_WithValueGreaterThanZero() {
        let expectedValue: Int = 2
        let value = self.viewModel?.countOfRecents

        XCTAssertEqual(expectedValue, value, "Incorrect answer, expected value was 2")
    }

    func testCountOfFavorites_WithValueGreaterThanZero() {
        let expectedValue: Int = 3
        let value = self.viewModel?.countOfFavorites

        XCTAssertEqual(expectedValue, value, "Incorrect answer, expected value was 3")
    }
    
    func testSetupHeroViewModel_NotNil() {
        let value = self.viewModel?.setupHeroViewModel(section: 0, row: 1)
        
        XCTAssertNotNil(value, "ViewModel can not be nil")
    }

}
