//
//  ResearchStudyTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
import SwiftFHIR
typealias SwiftFHIRResearchStudy = SwiftFHIR.ResearchStudy


class ResearchStudyTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRResearchStudy {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRResearchStudy {
		return try SwiftFHIRResearchStudy(json: json)
	}
	
	func testResearchStudy1() {
		do {
			let instance = try runResearchStudy1()
			try runResearchStudy1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ResearchStudy successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runResearchStudy1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRResearchStudy {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "researchstudy-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.status, ResearchStudyStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
