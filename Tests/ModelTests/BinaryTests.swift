//
//  BinaryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
import SwiftFHIR
typealias SwiftFHIRBinary = SwiftFHIR.Binary


class BinaryTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRBinary {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRBinary {
		return try SwiftFHIRBinary(json: json)
	}
	
	func testBinary1() {
		do {
			let instance = try runBinary1()
			try runBinary1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Binary successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBinary1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBinary {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "binary-example.json")
		
		XCTAssertEqual(inst.contentType, "application/pdf")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.securityContext?.reference, "DocumentReference/example")
		
		return inst
	}
}
