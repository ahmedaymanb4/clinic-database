# Clinic Database

This is a database schema for a clinic, focusing on appointments and prescriptions.

# Constraints and Business Rules
1. Primary Keys: Ensure uniqueness of each entity.
2. Foreign Keys: Maintain referential integrity between tables.
    - PatientID in Appointment references Patient.
    - DoctorID in Appointment references Doctor.
    - AppointmentID in Prescription references Appointment.
    - MedicationID in Prescription references Medication.
3. Auto Increment: Used for primary keys to ensure each new record has a unique ID.
4. Not Null: Ensures essential fields must have values (e.g., _Name, Contact).
5. Cascade Deletes: Ensure that deleting a patient or appointment also deletes associated records, maintaining data integrity.

## My Deliverables:

- [x] The [SQL Code](/SQL%20Schema%20of%20a%20Medical%20Clinic.sql).
- [x] An ER Diagram. Here's a [Lucid link for the diagram](https://lucid.app/lucidchart/4859c472-4c13-4767-9a33-9f88bab40c2b/edit?invitationId=inv_f1cb8123-8224-4c27-a4e6-afc4bfef3386)
      that enables you to freely & clearly check it, but it requires sign-in,
      or simply check it [here at this repo:](/ERD%20of%20a%20Medical%20Clinic%20-%20Main.png)

<picture>
      <img width="50%" alt="PNG photo of Clinic ERD" src="/ERD%20of%20a%20Medical%20Clinic%20-%20Main.png" href=src>
</picture>


# Business Requirements:

- The clinic needs to manage patient information, including name, contact details, insurance provider, and medical history.
- They also need to track appointments, including date, time, doctor assigned, and reason for the visit.
- Additionally, the system should manage prescriptions, including medication details, dosage, and doctor instructions.
- All constraints are included, where it guarantees the preferential integrity of the data and any business rules are considered in the design.

## Business Deliverables:

ERD diagrams, SQL queries to build the schema with syntax highlight.
