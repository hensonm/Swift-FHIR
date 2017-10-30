//
//  DataElementTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
import SwiftFHIR
typealias SwiftFHIRDataElement = SwiftFHIR.DataElement


class DataElementTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRDataElement {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRDataElement {
		return try SwiftFHIRDataElement(json: json)
	}
	
	func testDataElement1() {
		do {
			let instance = try runDataElement1()
			try runDataElement1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DataElement successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDataElement1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDataElement {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "dataelement-example.json")
		
		XCTAssertEqual(inst.contained?[0].id, "2179414")
		XCTAssertEqual(inst.contained?[1].id, "2179414-permitted")
		XCTAssertEqual(inst.contained?[2].id, "2179414-cm")
		XCTAssertEqual(inst.date?.description, "2016-01-01")
		XCTAssertEqual(inst.element?[0].binding?.strength, BindingStrength(rawValue: "required")!)
		XCTAssertEqual(inst.element?[0].binding?.valueSetReference?.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-valueset")
		XCTAssertEqual(inst.element?[0].binding?.valueSetReference?.extension_fhir?[0].valueReference?.reference, "#2179414-permitted")
		XCTAssertEqual(inst.element?[0].binding?.valueSetReference?.extension_fhir?[1].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap")
		XCTAssertEqual(inst.element?[0].binding?.valueSetReference?.extension_fhir?[1].valueReference?.reference, "#2179414-cm")
		XCTAssertEqual(inst.element?[0].binding?.valueSetReference?.reference, "#2179414")
		XCTAssertEqual(inst.element?[0].code?[0].code, "46098-0")
		XCTAssertEqual(inst.element?[0].code?[0].display, "Sex")
		XCTAssertEqual(inst.element?[0].code?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.element?[0].definition, "The code representing the gender of a person.")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueInteger, 1)
		XCTAssertEqual(inst.element?[0].extension_fhir?[1].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/elementdefinition-question")
		XCTAssertEqual(inst.element?[0].extension_fhir?[1].valueString, "Gender")
		XCTAssertEqual(inst.element?[0].mapping?[0].identity, "fhir")
		XCTAssertEqual(inst.element?[0].mapping?[0].language, "application/xquery")
		XCTAssertEqual(inst.element?[0].mapping?[0].map, "return f:/Patient/f:gender")
		XCTAssertEqual(inst.element?[0].maxLength, 13)
		XCTAssertEqual(inst.element?[0].path, "Gender")
		XCTAssertEqual(inst.element?[0].type?[0].code?.absoluteString, "CodeableConcept")
		XCTAssertEqual(inst.id, "gender")
		XCTAssertEqual(inst.identifier?[0].value, "2179650")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.mapping?[0].identity, "fhir")
		XCTAssertEqual(inst.mapping?[0].name, "Fast Healthcare Interoperable Resources (FHIR)")
		XCTAssertEqual(inst.mapping?[0].uri?.absoluteString, "http://hl7.org/fhir/api")
		XCTAssertEqual(inst.name, "Gender Code")
		XCTAssertEqual(inst.publisher, "DCP")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Administrative gender")
		XCTAssertEqual(inst.version, "1.0")
		
		return inst
	}
	
	func testDataElement2() {
		do {
			let instance = try runDataElement2()
			try runDataElement2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DataElement successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDataElement2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDataElement {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "dataelement-labtestmaster-example.json")
		
		XCTAssertEqual(inst.element?[0].alias?[0], "Protime, PT")
		XCTAssertEqual(inst.element?[0].comment, "Used to screen the integrity of the extrinsic and common pathways of coagulation and to monitor warfarin anticoagulation. ")
		XCTAssertEqual(inst.element?[0].definition, "The PT test evaluates the extrinsic and common pathways of the coagulation cascade.")
		XCTAssertEqual(inst.element?[0].example?[0].label, "Simple")
		XCTAssertEqual(inst.element?[0].example?[0].valueDecimal, "10.0")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/elementdefinition-allowedUnits")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].code, "s")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].display, "second")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].userSelected, true)
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].version, "1.9")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.text, "second")
		XCTAssertEqual(inst.element?[0].mapping?[0].identity, "loinc")
		XCTAssertEqual(inst.element?[0].mapping?[0].map, "5964-2")
		XCTAssertEqual(inst.element?[0].path, "prothrombin")
		XCTAssertEqual(inst.element?[0].requirements, "This test is orderable. A plasma specimen in a 3.2% sodium citrate blue top tube is required.")
		XCTAssertEqual(inst.element?[0].type?[0].code?.absoluteString, "decimal")
		XCTAssertEqual(inst.id, "prothrombin")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Century Hospital Laboratory")
		XCTAssertEqual(inst.identifier?[0].period?.start?.description, "2011-05-19")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.CenturyHospital/Laboratory/DirectoryofServices")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Prothrombin Time, PT")
		XCTAssertEqual(inst.identifier?[0].value, "11")
		XCTAssertEqual(inst.mapping?[0].comment, "Version 2.48 or later")
		XCTAssertEqual(inst.mapping?[0].identity, "loinc")
		XCTAssertEqual(inst.mapping?[0].name, "LOINC")
		XCTAssertEqual(inst.mapping?[0].uri?.absoluteString, "http://loinc.org/")
		XCTAssertEqual(inst.name, "Prothrombin Time")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
