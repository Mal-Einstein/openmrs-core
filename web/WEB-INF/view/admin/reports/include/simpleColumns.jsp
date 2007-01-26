<openmrs:globalProperty key="use_patient_attribute.tribe" defaultValue="false" var="showTribe"/>
<openmrs:globalProperty key="use_patient_attribute.healthCenter" defaultValue="false" var="showHealthCenter"/>

<br />
<table>
	<tr>
		<td><spring:message code="DataExport.columnName"/></td>
		<td><input type="text" name="simpleName" size="30"/></td>
	</tr>
	<tr>
		<td><spring:message code="DataExport.columnValue"/></td>
		<td>
			<input type="text" name="simpleValue" size="50"/>
		
			<==
			
			<select name="simplePatient" onclick="updateSimpleColumn(this)">
				
				<option value=""> </option>
				<option disabled><spring:message code="DataExport.simplePatient"/></option>
				<option value="$!{fn.patientId}">&nbsp; <spring:message code="Patient.id" /></option>
			
				<option value="$!{fn.getPatientAttr('PatientName', 'givenName')}">&nbsp; <spring:message code="PatientName.givenName" /></option>
				<option value="$!{fn.getPatientAttr('PatientName', 'middleName')}">&nbsp; <spring:message code="PatientName.middleName" /></option>
				<option value="$!{fn.getPatientAttr('PatientName', 'familyName')}">&nbsp; <spring:message code="PatientName.familyName" /></option>
				<option value="$!{fn.getPatientAttr('PatientName', 'degree')}">&nbsp; <spring:message code="PatientName.degree" /></option>
				<option disabled> </option>
				<option value="$!{fn.getPatientAttr('PatientAddress', 'address1')}">&nbsp; <spring:message code="PatientAddress.address1" /></option>
				<option value="$!{fn.getPatientAttr('PatientAddress', 'address2')}">&nbsp; <spring:message code="PatientAddress.address2" /></option>
				<option value="$!{fn.getPatientAttr('PatientAddress', 'cityVillage')}">&nbsp; <spring:message code="PatientAddress.cityVillage" /></option>
				<option value="$!{fn.getPatientAttr('PatientAddress', 'stateProvince')}">&nbsp; <spring:message code="PatientAddress.stateProvince" /></option>
				<option value="$!{fn.getPatientAttr('PatientAddress', 'country')}">&nbsp; <spring:message code="PatientAddress.country" /></option>
				<option value="$!{fn.getPatientAttr('PatientAddress', 'postalCode')}">&nbsp; <spring:message code="PatientAddress.postalCode" /></option>
				<option disabled> </option>
				<option value="$!{fn.getPatientAttr('PatientIdentifier', 'identifier')}">&nbsp; <spring:message code="PatientIdentifier.identifier" /></option>
				<option value="$!{fn.getPatientAttr('PatientIdentifier', 'identifierType').getName()}">&nbsp; <spring:message code="PatientIdentifier.identifierType" /></option>
				<option value="$!{fn.getPatientAttr('PatientIdentifier', 'location').getName()}">&nbsp; <spring:message code="PatientIdentifier.location" /></option>
				<option disabled> </option>
				<option value="$!{fn.getPatientAttr('Patient', 'gender')}">&nbsp; <spring:message code="Patient.gender" /></option>
				<option value="$!{fn.formatDate('short', $fn.getPatientAttr('Patient', 'birthdate'))}">&nbsp; <spring:message code="Patient.birthdate" /></option>
				<option value="$!{fn.getPatientAttr('Patient', 'birthdateEstimated')}">&nbsp; <spring:message code="Patient.birthdateEstimated" /></option>
				<c:if test="${showHealthCenter == 'true'}">
					<option value="$!{fn.getPatientAttr('Patient', 'healthCenter').getName()}">&nbsp; <spring:message code="Patient.healthCenter" /></option>
				</c:if>
				<c:if test="${showTribe == 'true'}">
					<option value="$!{fn.getPatientAttr('Patient', 'race')}">&nbsp; <spring:message code="Patient.race" /></option>
					<option value="$!{fn.getPatientAttr('Patient', 'tribe').getName()}">&nbsp; <spring:message code="Tribe.name" /></option>
				</c:if>
				<option value="$!{fn.formatDate('short', $fn.getPatientAttr('Patient', 'deathDate'))}">&nbsp; <spring:message code="Patient.deathDate" /></option>
				<option value="$!{fn.getPatientAttr('Patient', 'causeOfDeath')}">&nbsp; <spring:message code="Patient.causeOfDeath" /></option>
				<option value=""> </option>
				<option disabled><spring:message code="DataExport.simpleLastEncounter"/></option>
				<option value="$!{fn.getLastEncounter('').getEncounterType().getName()}">&nbsp; <spring:message code="Encounter.type" /></option>
				<option value="$!{fn.getLastEncounter('').getProvider().getFirstName()} $!{fn.getLastEncounter('').getProvider().getLastName()}">&nbsp; <spring:message code="Encounter.provider" /></option>
				<option value="$!{fn.getLastEncounter('').getLocation().getName()}">&nbsp; <spring:message code="Encounter.location" /></option>
				<option value="$!{fn.getLastEncounter('').getForm().getName()}">&nbsp; <spring:message code="Encounter.form" /></option>
				<option value="$!{fn.formatDate('short', $fn.getLastEncounter('').getEncounterDatetime())}">&nbsp; <spring:message code="Encounter.datetime" /></option>
				<option value=""> </option>
				<option disabled><spring:message code="DataExport.simpleFirstEncounter"/></option>
				<option value="$!{fn.getFirstEncounter('').getEncounterType().getName()}">&nbsp; <spring:message code="Encounter.type" /></option>
				<option value="$!{fn.getFirstEncounter('').getProvider().getFirstName()} $!{fn.getFirstEncounter('').getProvider().getLastName()}">&nbsp; <spring:message code="Encounter.provider" /></option>
				<option value=""> </option>
				<option value="$!{fn.getRelationshipNames('')}">&nbsp; <spring:message code="All Relationships" /></option>
				<option value="$!{fn.getRelationshipNames('Accompagnateur')}">&nbsp; <spring:message code="Accompagnateur" /></option>
				<option value="$!{fn.getRelationshipIds('Accompagnateur')}">&nbsp; <spring:message code="Accompagnateur ID" /></option>
				<option value="$!{fn.getRelationshipIdentifiers('Mother')}">&nbsp; <spring:message code="RelationshipType.mother" /></option>
				<option value=""> </option>
				<option value="$!{fn.formatDate('ymd', $fn.getProgram('HIV PROGRAM').getDateEnrolled())}">&nbsp; <spring:message code="HIV Program enrollment date" /></option>
				<option value="$!{fn.formatDate('ymd', $fn.getProgram('TUBERCULOSIS PROGRAM').getDateEnrolled())}">&nbsp; <spring:message code="TB Program enrollment date" /></option>
				<option value=""> </option>
				<option value="$!{fn.getCurrentDrugNames('ANTIRETROVIRAL DRUGS')}">&nbsp; <spring:message code="Current ARVs" /></option>
				<option value="$!{fn.getCurrentDrugNames('TUBERCULOSIS TREATMENT DRUGS')}">&nbsp; <spring:message code="Current TB meds" /></option>
				<option value="$!{fn.formatDate('ymd', $fn.getEarliestDrugStart('ANTIRETROVIRAL DRUGS'))}">&nbsp; <spring:message code="Earliest ARV start" /></option>
				<option value="$!{fn.formatDate('ymd', $fn.getEarliestDrugStart('TUBERCULOSIS TREATMENT DRUGS'))}">&nbsp; <spring:message code="Earliest TB med start" /></option>
			</select>
			
		</td>
	</tr>
</table>
<br />