//
//  HeroViewModelTests.swift
//  doghero-testTests
//
//  Created by Robson Moreira on 25/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import XCTest
import DictionaryCoding
@testable import doghero_test

class HeroViewModelTests: XCTestCase {
    
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
    
    func testIsSuperhero_True() {
        let viewModel = self.viewModel?.setupHeroViewModel(section: 0, row: 0)
        guard let isSuperhero = viewModel?.isSuperhero else { return }
        XCTAssertTrue(isSuperhero, "Incorrect answer, expected value was true")
    }
    
    func testIsSuperhero_False() {
        let viewModel = self.viewModel?.setupHeroViewModel(section: 0, row: 1)
        guard let isSuperhero = viewModel?.isSuperhero else { return }
        XCTAssertFalse(isSuperhero, "Incorrect answer, expected value was false")
    }
    
    func testFirstName_NotEmpty() {
        let viewModel = self.viewModel?.setupHeroViewModel(section: 0, row: 0)
        guard let firstName = viewModel?.firstName else { return }
        let expectedValue: String = ""
        XCTAssertNotEqual(expectedValue, firstName, "Incorrect answer, the expected value can not be empty")
    }
    
    func testImageUrl_NotEmpty() {
        let viewModel = self.viewModel?.setupHeroViewModel(section: 0, row: 0)
        guard let imageUrl = viewModel?.imageUrl else { return }
        let expectedValue: String = ""
        XCTAssertNotEqual(expectedValue, imageUrl, "Incorrect answer, the expected value can not be empty")
    }
    
    func testAddressNeighborhood_NotEmpty() {
        let viewModel = self.viewModel?.setupHeroViewModel(section: 0, row: 0)
        guard let addressNeighborhood = viewModel?.addressNeighborhood else { return }
        let expectedValue: String = ""
        XCTAssertNotEqual(expectedValue, addressNeighborhood, "Incorrect answer, the expected value can not be empty")
    }
    
    func testPrice_NotNil() {
        let viewModel = self.viewModel?.setupHeroViewModel(section: 0, row: 0)
        XCTAssertNotNil(viewModel?.price, "Incorrect answer, the expected value can not nil")
    }

}
