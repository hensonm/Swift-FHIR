//
//  MeasureReportTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
import SwiftFHIR
typealias SwiftFHIRMeasureReport = SwiftFHIR.MeasureReport


class MeasureReportTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMeasureReport {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMeasureReport {
		return try SwiftFHIRMeasureReport(json: json)
	}
	
	func testMeasureReport1() {
		do {
			let instance = try runMeasureReport1()
			try runMeasureReport1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MeasureReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMeasureReport1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMeasureReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "measurereport-cms146-cat1-example.json")
		
		XCTAssertEqual(inst.contained?[0].id, "reporter")
		XCTAssertEqual(inst.evaluatedResources?.reference, "Bundle/456")
		XCTAssertEqual(inst.group?[0].identifier?.value, "CMS146-group-1")
		XCTAssertEqual(inst.group?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].population?[0].count, 1)
		XCTAssertEqual(inst.group?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].population?[1].count, 1)
		XCTAssertEqual(inst.group?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].population?[2].count, 1)
		XCTAssertEqual(inst.group?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[0].identifier?.value, "stratifier-ages-up-to-9")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[0].count, 1)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[1].count, 1)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[2].count, 1)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].value, "true")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[0].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[1].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[2].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].value, "false")
		XCTAssertEqual(inst.group?[0].stratifier?[1].identifier?.value, "stratifier-ages-10-plus")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[0].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[1].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[2].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].value, "true")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[0].count, 1)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[1].count, 1)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[2].count, 1)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].value, "false")
		XCTAssertEqual(inst.group?[0].stratifier?[2].identifier?.value, "stratifier-gender")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[0].count, 1)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[1].count, 1)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[2].count, 1)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].value, "male")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[0].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[1].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[2].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].value, "female")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[0].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[1].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[2].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].value, "other")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[0].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[1].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[2].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].value, "unknown")
		XCTAssertEqual(inst.id, "measurereport-cms146-cat1-example")
		XCTAssertEqual(inst.identifier?.value, "measurereport-cms146-cat1-example-2017-03-13")
		XCTAssertEqual(inst.measure?.reference, "Measure/CMS146")
		XCTAssertEqual(inst.patient?.reference, "Patient/123")
		XCTAssertEqual(inst.period?.end?.description, "2014-03-31")
		XCTAssertEqual(inst.period?.start?.description, "2014-01-01")
		XCTAssertEqual(inst.reportingOrganization?.reference, "#reporter")
		XCTAssertEqual(inst.status, MeasureReportStatus(rawValue: "complete")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, MeasureReportType(rawValue: "individual")!)
		
		return inst
	}
	
	func testMeasureReport2() {
		do {
			let instance = try runMeasureReport2()
			try runMeasureReport2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MeasureReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMeasureReport2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMeasureReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "measurereport-cms146-cat2-example.json")
		
		XCTAssertEqual(inst.contained?[0].id, "reporter")
		XCTAssertEqual(inst.group?[0].identifier?.value, "CMS146-group-1")
		XCTAssertEqual(inst.group?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].population?[0].count, 500)
		XCTAssertEqual(inst.group?[0].population?[0].patients?.reference, "List/CMS146-initial-population")
		XCTAssertEqual(inst.group?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].population?[1].count, 200)
		XCTAssertEqual(inst.group?[0].population?[1].patients?.reference, "List/CMS146-numerator")
		XCTAssertEqual(inst.group?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].population?[2].count, 500)
		XCTAssertEqual(inst.group?[0].population?[2].patients?.reference, "List/CMS146-denominator")
		XCTAssertEqual(inst.group?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].population?[3].count, 100)
		XCTAssertEqual(inst.group?[0].population?[3].patients?.reference, "List/CMS146-denominator-exclusions")
		XCTAssertEqual(inst.group?[0].stratifier?[0].identifier?.value, "stratifier-ages-up-to-9")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[0].patients?.reference, "List/CMS146-stratifier-ages-up-to-9-true-initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[1].patients?.reference, "List/CMS146-stratifier-ages-up-to-9-true-numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[2].patients?.reference, "List/CMS146-stratifier-ages-up-to-9-true-denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[3].patients?.reference, "List/CMS146-stratifier-ages-up-to-9-true-denominator-exclusions")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].value, "true")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[0].patients?.reference, "List/CMS146-stratifier-ages-up-to-9-false-initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[1].patients?.reference, "List/CMS146-stratifier-ages-up-to-9-false-numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[2].patients?.reference, "List/CMS146-stratifier-ages-up-to-9-false-denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[3].patients?.reference, "List/CMS146-stratifier-ages-up-to-9-false-denominator-exclusions")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].value, "false")
		XCTAssertEqual(inst.group?[0].stratifier?[1].identifier?.value, "stratifier-ages-10-plus")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[0].patients?.reference, "List/CMS146-stratifier-ages-10-plus-true-initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[1].patients?.reference, "List/CMS146-stratifier-ages-10-plus-true-numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[2].patients?.reference, "List/CMS146-stratifier-ages-10-plus-true-denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[3].patients?.reference, "List/CMS146-stratifier-ages-10-plus-true-denominator-exclusions")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].value, "true")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[0].patients?.reference, "List/CMS146-stratifier-ages-10-plus-false-initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[1].patients?.reference, "List/CMS146-stratifier-ages-10-plus-false-numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[2].patients?.reference, "List/CMS146-stratifier-ages-10-plus-false-denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[3].patients?.reference, "List/CMS146-stratifier-ages-10-plus-false-denominator-exclusions")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].value, "false")
		XCTAssertEqual(inst.group?[0].stratifier?[2].identifier?.value, "stratifier-gender")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[0].patients?.reference, "List/CMS146-stratifier-gender-male-initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[1].patients?.reference, "List/CMS146-stratifier-gender-male-numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[2].patients?.reference, "List/CMS146-stratifier-gender-male-denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[3].patients?.reference, "List/CMS146-stratifier-gender-male-denominator-exclusions")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].value, "male")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[0].patients?.reference, "List/CMS146-stratifier-gender-female-initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[1].patients?.reference, "List/CMS146-stratifier-gender-female-numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[2].patients?.reference, "List/CMS146-stratifier-gender-female-denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[3].patients?.reference, "List/CMS146-stratifier-gender-female-denominator-exclusions")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].value, "female")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[0].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[0].patients?.reference, "List/CMS146-stratifier-gender-other-initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[1].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[1].patients?.reference, "List/CMS146-stratifier-gender-other-numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[2].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[2].patients?.reference, "List/CMS146-stratifier-gender-other-denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[3].patients?.reference, "List/CMS146-stratifier-gender-other-denominator-exclusions")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].value, "other")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[0].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[0].patients?.reference, "List/CMS146-stratifier-gender-unknown-initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[1].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[1].patients?.reference, "List/CMS146-stratifier-gender-unknown-numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[2].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[2].patients?.reference, "List/CMS146-stratifier-gender-unknown-denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[3].code?.coding?[0].code, "denominator-exclusions")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[3].patients?.reference, "List/CMS146-stratifier-gender-unknown-denominator-exclusions")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].value, "unknown")
		XCTAssertEqual(inst.id, "measurereport-cms146-cat2-example")
		XCTAssertEqual(inst.identifier?.value, "measurereport-cms146-cat2-example-2017-03-13")
		XCTAssertEqual(inst.measure?.reference, "Measure/CMS146")
		XCTAssertEqual(inst.period?.end?.description, "2014-03-31")
		XCTAssertEqual(inst.period?.start?.description, "2014-01-01")
		XCTAssertEqual(inst.reportingOrganization?.reference, "#reporter")
		XCTAssertEqual(inst.status, MeasureReportStatus(rawValue: "complete")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, MeasureReportType(rawValue: "patient-list")!)
		
		return inst
	}
	
	func testMeasureReport3() {
		do {
			let instance = try runMeasureReport3()
			try runMeasureReport3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MeasureReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMeasureReport3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMeasureReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "measurereport-cms146-cat3-example.json")
		
		XCTAssertEqual(inst.contained?[0].id, "reporter")
		XCTAssertEqual(inst.group?[0].identifier?.value, "CMS146-group-1")
		XCTAssertEqual(inst.group?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].population?[0].count, 500)
		XCTAssertEqual(inst.group?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].population?[1].count, 200)
		XCTAssertEqual(inst.group?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].population?[2].count, 500)
		XCTAssertEqual(inst.group?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].population?[3].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[0].identifier?.value, "stratifier-ages-up-to-9")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[0].value, "true")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[0].stratum?[1].value, "false")
		XCTAssertEqual(inst.group?[0].stratifier?[1].identifier?.value, "stratifier-ages-10-plus")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[0].value, "true")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[1].stratum?[1].value, "false")
		XCTAssertEqual(inst.group?[0].stratifier?[2].identifier?.value, "stratifier-gender")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[0].value, "male")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[0].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[1].count, 100)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[2].count, 250)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].population?[3].count, 50)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[1].value, "female")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[0].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[1].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[2].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[2].value, "other")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[0].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[1].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[2].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].population?[3].count, 0)
		XCTAssertEqual(inst.group?[0].stratifier?[2].stratum?[3].value, "unknown")
		XCTAssertEqual(inst.id, "measurereport-cms146-cat3-example")
		XCTAssertEqual(inst.identifier?.value, "measurereport-cms146-cat3-example-2017-03-13")
		XCTAssertEqual(inst.measure?.reference, "Measure/CMS146")
		XCTAssertEqual(inst.period?.end?.description, "2014-03-31")
		XCTAssertEqual(inst.period?.start?.description, "2014-01-01")
		XCTAssertEqual(inst.reportingOrganization?.reference, "#reporter")
		XCTAssertEqual(inst.status, MeasureReportStatus(rawValue: "complete")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, MeasureReportType(rawValue: "summary")!)
		
		return inst
	}
}
