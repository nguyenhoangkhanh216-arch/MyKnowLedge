AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
APPENDIX A11
DIGITAL PROJECT REQUIREMENTS
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 1 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
Table of Contents
1 Generalities .................................................................................................................................... 3
1.1 Context ...................................................................................................................................................... 3
1.2 Business Objectives ................................................................................................................................... 3
2 Terminology ................................................................................................................................... 4
2.1 Acronyms ................................................................................................................................................... 4
2.2 Glossary ..................................................................................................................................................... 5
2.3 External Documents .................................................................................................................................. 6
2.4 NOC Technical Standards........................................................................................................................... 6
3 Digital Asset Scope of Works ...................................................................................................... 6
3.1 Battery Limit Applicability ......................................................................................................................... 6
3.2 General responsibilities ............................................................................................................................. 6
3.3 Information Management Plan ................................................................................................................. 7
3.4 Project Particular Specification.................................................................................................................. 8
3.5 1D (ADL) Requirements ............................................................................................................................. 8
3.6 2D Requirements ..................................................................................................................................... 10
3.7 3D modelling Requirements .................................................................................................................... 10
3.8 Database Replication Requirements ....................................................................................................... 11
3.9 Database Integration Requirements ....................................................................................................... 12
3.10 Vendor data management. ...................................................................................................................... 12
4 CONTRACTOR’s Engineering software .................................................................................... 14
5 Resources .................................................................................................................................... 14
5.1 By COMPANY ........................................................................................................................................... 14
5.2 By CONTRACTOR...................................................................................................................................... 15
6 Digital Twin Deliverables ............................................................................................................ 15
6.1 Data quality and consistency control ...................................................................................................... 16
6.2 Documents to be extracted from the AVEVA application. ...................................................................... 16
7 AS-BUILT data and 3D model requirements ............................................................................ 19
7.1 As-Built 3D model process ....................................................................................................................... 19
7.2 As-Built schematics databases................................................................................................................. 20
7.3 As-Built 1D databases .............................................................................................................................. 20
8 Final handover ............................................................................................................................. 20
8.1 Final handover of engineering data ......................................................................................................... 20
8.2 Final handover of the 3D model .............................................................................................................. 20
8.3 Final handover of intelligent drawings, calculations and databases from Intelligent 2D CAD ................ 21
8.4 Final quality assurance and control ......................................................................................................... 23
ATTACHEMENT 1. Master Tag Register template ........................................................................... 24
ATTACHMENT 3. Data Model - Action Tracker ................................................................................ 24
ATTACHMENT 4. Mapping table ........................................................................................................ 24
ATTACHMENT 5. Tag To Tag template ............................................................................................. 24
ATTACHMENT 6. Tag To Document template .................................................................................. 24
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 2 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
1 Generalities
1.1 Context
COMPANY is committed to continuously improving performances and reliability of its offshore assets, ensuring
quality of their projects and operational excellence.
Following the challenges and evolution of the oil and gas market in 2015 and more recently in 2020, COMPANY
is adopting an even more stringent approach to capital efficiency, while maintaining its technical leadership in
the development and management of complex installations and their adherence to world class safety and
security standards as top priority.
In order to achieve these objectives, COMPANY aims to set a dedicated Digital Asset Lifecycle Management
capability to industrialise and support quality delivery, to maintain capital assets’ integrity and to manage
seamlessly engineering, construction and asset operational data that will be added to the Digital Twin of the Al
Shaheen field topsides facilities that has been developed by COMPANY.
COMPANY has the ambition to move from a document centric to an object/data centric management system
based on digital representations of the asset. The aim is to manage technical information along the Asset’s
Lifecycle to provide an access to relevant and up-to-date technical information, at the right time for the right
people, to take safer, quicker and cost saving decisions.
In this respect, COMPANY launched in 2017 the Digital Asset Development Project to mainly support all its
engineering and design activities especially in relation with Brownfield projects and hook-up and integration
scope of Greenfield projects. It encompasses the processes, methods and tools enabling the management of
technical information for all Greenfield/Brownfield projects & existing assets throughout their lifecycle, from
project definition to asset restitution/dismantling. Then, COMPANY launched in 2019 a Digital Twin
Development Project using the Digital Asset as a foundation to further integrate real time data from the assets
and various simulations tools to better optimise the overall field operations.
The Digital Asset (first instantiation of the Digital Twin of an asset upon a project completion) program specifies
the COMPANY requirements in relation with the technical information created or modified by the Authoring
tools (3D Models, Intelligent 2D schematics (e.g. P&IDs), Tags & Attributes Repository, etc.). It also adapts the
COMPANY business processes involving the digital representation of the physical Asset.
The requirements brought by the Digital Asset & Twin program are formalised through specific COMPANY
Technical Standards mentioned in Section 3.2.
1.2 Business Objectives
The Digital Asset and Twin program is at the heart of the COMPANY digital ambition which aims at increasing
safety, strengthening asset integrity and boosting efficiency of projects and operations through “digitalisation”
of COMPANY business processes, methods and tools.
The main business objectives of the Digital Asset and Twin program are:
 Make the trusted information (documents and data) unique by using the same STANDARD (CFIHOS),
developed within the COMPANY ADL (Asset Data Library), fully controlled, and more readily available
to a wider range of users,
 Support work in new collaborative environments with trusted information that can be shared and
visualised, and ensure better situation awareness in those environments,
 Accelerate the execution of modifications, brownfield projects and new projects, especially in the
engineering phase,
 Build stronger partnership with Contractors and Vendors by sharing trusted information in a quick and
reliable way, while preserving information ownership,
 Significantly reduce the need for site surveys aiming at identifying the actual configuration of the
assets,
 Ensure better asset Integrity management based only on updated, trusted data,
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 3 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
 Streamline business processes, improve quality and avoid re-work.
2 Terminology
2.1 Acronyms
1D One Dimension (Database extraction)
2D Two Dimensions (Drawings and other documents)
3D Three Dimensions (3D model)
ABS Asset Breakdown Structure
ADL Asset Data Library
CAD Computer Aided Design
CFIHOS Capital Facilities Information Handover Specification (pronounced “see-foss”)
DT Digital Twin
EPCIC Engineering/Procurement/Construction/Installation/Commissioning
FEED Front End Engineering & Design or Basic Engineering
FSO Floating, Storage & Offloading
IM Information Management
IS Information System
ISO International Organisation for Standardisation
IVP Information Visualisation Portal
ITB Invitation to bid
MDM Master Data Model
MDR Master Documents Register
MTR Master Tags Register
NOC North Oil Company
P&ID Piping & Instrumentation Diagram
PFD Process Flow Diagram
BFD Block Flow Diagram
UFD Utilities Flow Diagram
D&ID Duct & Instrumentation Diagram
PSD Process Single Diagram
PMS Piping Material Specification
PPS Project Particular Specification
Pre-FEED Pre-Front End Engineering & Design studies
RDL Reference Data Library
SPM Single Point Mooring
SUBE AVEVA sub-Equipment element
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 4 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
2.2 Glossary
Asset Oil &Gas facility considered as a set of objects linked and grouped by systems
in order to realise a function. Examples: Wellhead Platform, Process Platform,
FSO, SPM, etc.
Asset Breakdown A structural organisation of an asset characterised by the way of linking and
Structure grouping its constituting objects. According to the usages, there can be several
ways of linking and grouping the objects.
Asset Data Library Managed collection of process plant lifecycle data that represents information
about objects for a specific Asset.
Asset Object An element or a thing which has a functional purpose on the Asset and “owns”
some technical information likely to evolve over the Asset lifecycle. Most
objects have physical existence (e.g. main equipment, lines, cables, etc.) but
some do not (e.g. soft instrumentation). An object can appear at any level of
the Asset Breakdown Structure(s) and is identified by a tag.
Attribute Property or characteristic of an asset object.
Authoring tool Software tool used to create or modify asset data or information during its life
cycle (e.g. 2D & 3D modelling tool, calculation tool, simulation tools, etc.)
Baseline "Asset state" (or "Asset configuration": ABS embedding asset technical data of
the ADL, with the associated documentation and 2D/3D representations)
formally validated and frozen at a certain point in the Asset lifecycle and used
as a reference for the change process.
Class A class is defined by its membership. It establishes a category, sort or a division
of things with some common nature, grouping things by the similarity. The
members of a class may be other classes or a bunch of individual items (or both)
that correspond to the characteristics of that class (e.g. class of transmitters or
class of pumps).
Data Information converted into binary digital form.
Database An organised collection of data. The data is typically organised to model aspects
of reality in a way that supports processes requiring information.
Data Management Development and execution of architectures, policies, practices and procedures
in order to manage the data lifecycle needs of an enterprise in an effective
manner.
Equipment All Tagged Items
Handover The giving of control of/responsibility for something to someone else.
Information Stimuli that has meaning in some context for its receiver. When information is
entered into and stored in a computer, it is generally referred to as data. After
processing (such as formatting and printing), output data can again be
perceived as information.
Information Information Management is both data AND documentation management.
Management
Lifecycle Collection of phases in the life of the asset, from the preliminary, up to the
restitution/dismantling, through its design, construction and operations life.
Master Data Model Set of entities which defines in detail the classes and their attributes required
for the electronic handover of information. The MDM contains the RDL which
includes the data to be captured irrespective of the asset and the ADL which
includes the data associated to a specific asset.
Portal A functionality delivered by a software tool, enabling to access all asset related
information whatever their format and sources.
Reference Data Library Managed collection of process plant lifecycle data that represents
information about classes or individuals which are common to many process
plants or of interest to many users.
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 5 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
|     | APPENDIX A11 | Contract No.: 4600000XXX |
| --- | ------------ | ------------------------ |
Tag (Functional)  Label composed of letters and numbers allowing to uniquely identify an Asset’s
object.
2.3 External Documents
Reference  Title
| C-GD-001 rev.1.4  | CFIHOS Implementation Guide for | Principal  |
| ----------------- | ------------------------------- | ---------- |
| C-GD-002 rev.1.4  | CFIHOS Implementation Guide for | CONTRACTOR |
| C-SP-001 rev.1.4  | CFIHOS Specification Document   |            |
| C-TP-001 rev.1.4  | CFIHOS Scope and Procedure      |            |
Petroleum, petrochemical and natural gas industries – Collection and
ISO 14224
exchange of reliability and maintenance data for equipment
ISO 15926-2  Industrial automation systems and integration – Integration of life-
cycle data for process plants including oil and gas production facilities
– Part 2: Data model
ISO 15926-4  Industrial automation systems and integration – Integration of life-
cycle data for process plants including oil and gas production facilities
– Part 4: Initial reference data
| ISO 55000  | Asset Information Standards  |     |
| ---------- | ---------------------------- | --- |
2.4 NOC Technical Standards
Reference  Title
SD-NOC-EC-106   Equipment Tagging and Facilities Numbering Standard
| SD-NOC-CSE-001              | 2D CAD Drawings                           |     |
| --------------------------- | ----------------------------------------- | --- |
| SD-NOC-CSE-002              | 2D CAD Process Schematics                 |     |
| SD-NOC-CSE-004              | 3D CAD Models                             |     |
| SD-NOC-CSE-005              | 3D CAD Model Administration & Catalogues  |     |
| SD-NOC-HVA-803              | Symbols for P&ID and D&ID                 |     |
| GM-NOC-EC-116               | AVEVA E3D Master Project Setup            |     |
| GM-NOC-EC-119               | AVEVA Global Setup and Management         |     |
| GM-NOC-EDT-001              | AVEVA Diagrams Master Database Guideline  |     |
| GM-NOC-CSE-001              | 3D CAD Modeling Guidelines                |     |
| GM-NOC-MP-727               | Tag Numbering Guideline                   |     |
| MAJOR-MPEN-ASYYY-00-390001  | Major Projects As-built Specification     |     |
3 Digital Asset Scope of Works
3.1 Battery Limit Applicability
The Digital Asset development for the Ruya Batch 1 project shall cover the whole PLANT in its entirety, covering
all aspect of the project including the direct scope of CONTRACTOR and its Subcontractors as well as VENDORs
and procurement activities.
3.2 General responsibilities
The CONTRACTOR must deliver to the COMPANY full scope of digital Asset specified in this Appendix, which
includes 1D data, 2D documents, 3D model.
The CONTRACTOR must use only relevant AVEVA application to produce project deliverables:
- 3D model,
- 2D all revisions of technical documentation listed in Section 6 of this Appendix, and
- 1D data sets (including RDL requirements and UDA list defined in applications).
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A  Page 6 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
Development and/or modification of any deliverables listed in Section 6 of this Appendix outside AVEVA
application is not allowed.
CONTRACTOR must follow COMPANY Tag numbering standard and Tagging guideline: all relevant items must
be Tagged and all Tags - allocated in any document, application or database - must be compliant with COMPANY
Tag numbering standard SD-NOC-EC-106 and Tagging guideline GM-NOC-MP-727.
The CONTRACTOR must identify and rectify inconsistencies (if any) across all disciplines, including VENDOR and
SUBCONTRACTORs data. CONTRACTOR shall perform such checks during the whole project execution phase.
In addition, CONTRACTOR’s IM team shall ensure that:
- all AVEVA software, used by CONTRACTOR to produce deliverables, is setup and ready for production,
- all personnel within CTR’s organisation are aware and fully understand the Digital Project requirements,
have relevant skills to work with the relevant application for their discipline. It is also relevant to work
with Vendors and Subcontractors.
CONTRACTOR shall rectify any errors and clashes by regularly carrying out Quality and Integrity checks on data,
documents, and 3D models.
The COMPANY will provide to CONTRACTOR the following:
1. AVEVA Everything3D project databases with 3D model, element catalogue database etc.;
2. AVEVA Diagrams project databases with stencils, settings, templates etc.;
3. AVEVA Engineering project databases with RDL implemented in Conceptual Model, engineering list
templates and datasheet templates library;
4. AVEVA Electrical and Instrumentation databases with engineering list and datasheet templates library;
All the templates, provided by the COMPANY, inside AVEVA applications for the reference only. CONTRACTOR
must get an approval from respective discipline prior to use it or develop any deliverables.
CONTRACTOR will be responsible to administrate all the applications mentioned above, to manage catalogues,
drawing or document templates, stencils, users, customization (if needed), settings for the documents
production, reports setup, document extraction, data integration and control for all of disciplines.
CONTRACTOR will be responsible to create all document template, required to issue deliverables identified in
Section 6 of this Appendix, (including but not limited to datasheets templates, engineering lists templates,
drawings templates etc.), or update existing document templates. This work shall be considered as
CONTRACTOR’s scope. Therefore, CONTRACTOR shall allocate enough resources to be capable to do this job.
These resources shall have relevant qualification and experience in execution of similar projects.
CONTRACTOR shall follow all corporate standards specified in section 3.2 of current Appendix even if there is no
reference in the text of current Appendix.
3.3 Information Management Plan
CONTRACTOR shall issue an Information Management Plan for COMPANY review and APPROVAL within three
(3) months from EFFECTIVE DATE. This document shall address the followings, but not limited to:
 General philosophy of Digital Asset implementation into the PROJECT
 Data handover procedure with corresponding workflows,
 Vendor data management procedure,
 Establish management and provision of system architecture and integration,
 AVEVA databases and applications setup and customisation schedule,
 Reference to Project Particular Specification (PPS), where technical details shall be provided,
 Roles and Responsibilities of persons involved in CONTRACTOR Information Management team,
including an organisation chart showing the identified personnel/positions and their reporting
hierarchy,
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 7 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
 Information Management organisation with SUBCONTRACTORs and Suppliers (if any),
 Data quality control and management procedure with corresponding workflows, including consistency
check and data integrity control.
 Data vs Document quality control, including consistency check and data integrity control.
 Data consistency control between 1D, 2D, 3D and management procedure with corresponding
workflows
 Data and documents handover progress measurement, including quantity and level of maturity of data
at each handover.
Specific emphasis shall be placed on how will be monitored the progress of development of the Digital Asset .
3.4 Project Particular Specification
CONTRACTOR shall issue the Digital Asset PPS for COMPANY review and APPROVAL within three (3) months
from EFFECTIVE DATE.
Before ED + 3 monts, CONTRACTOR shall deliver a PPS addressing the Information Management Plan
requirements, and shall pay specific attention to the integration of source engineering application, including
external source of data, for example heat & material balance, calculations, basis of design data etc.
CONTRACTOR shall deliver within one (3) months from EFFECTIVE DATE, in accordance with SD-NOC-CSE-004
requirements, the 3D CAD Model Execution Plan for COMPANY’s review and APPROVAL.
CONTRACTOR shall deliver within one (3) months from EFFECTIVE DATE, the Data quality control and
management procedure for COMPANY’s review and APPROVAL.
The CONTRACTOR shall develop a separate specification for:
- As-built and Final handover of 3D models,
- Final handover of an application databases,
- Final handover of data.
3.5 1D (ADL) Requirements
CONTRACTOR is responsible for developing and delivering a 1D database to the COMPANY using the AVEVA
Engineering. This database should contain all tagged items with the functional and physical properties of asset
objects, including data from vendors and suppliers within the scope of AVEVA Engineering Conceptual Model
provided by COMPANY.
AVEVA Engineering will be the main interface for data exchange between the CONTRACTOR and the COMPANY.
The CONTRACTOR must review the COMPANY RDL implemented in AVEVA Engineering Conceptual data model
and, if required, request changes using change tracker register. Template Of Data Model Action Tracker is
provided in ATTACHEMENT 3. Any requested change to RDL must be approved by the COMPANY before being
implemented by the CONTRACTOR.
CONTRACTOR shall provide to COMPANY the complete Engineering database for its entire scope at each
formal/contractual 3D model review. It means that all the Tagged items shall be populated in the AVEVA
database even if the source application is not an AVEVA Engineering or AVEVA Electrical & Instrumentation.
3.5.1 Master Tag Register
CONTRACTOR must consolidate all Tags into Master Tag Register (MTR) and submit MTR on a weekly basis to
the COMPANY. Template Of MTR is provided in ATTACHEMENT 1.
MTR shall be developed in AVEVA Engineering first and then extracted in MS Excel format and shared with
COMPANY on weekly basis.
All Tags in Aveva Engineering Database need to be classified in accordance with mapping table provided in
ATTACHMENT 4.
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 8 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
3.5.2 "Tag to Tag" and "Tag to Document" registers
The CONTRACTOR must develop Tag to Tag and Tag to Document registers using AVEVA Engineering. Both
registers must contain comprehensive set of links before each formal 3D model review milestone. Template of
"Tag to Tag" register is provided in ATTACHEMENT 5, template of "Tag to Document" register is provided in
ATTACHEMENT 6.
All tags listed in the MTR should have a set of identified document links.
Tag to Document register must contain links for all Tags and documents, including VENDOR and SUPPLIER Tags
and Documents.
3.5.3 Engineering Lists
CONTRACTOR shall develop engineering lists (equipment list, line list, etc.) using AVEVA Engineering and AVEVA
Electrical & Instrumentation to be able to extract deliverables specified in Section 6.
3.5.4 Instrumentation Database
CONTRACTOR shall use AVEVA E&I to develop instrumentation database and specific instrumentation lists and
datasheets to be able to extract deliverables specified in Section 6 of this document and ensure consistency of
the information delivered between these lists (1D and E&I), the 2D schematics and the 3D Model.
New UDF's, Instrument type or any catalogue shall be implemented only after company approval.
Contractor is responsible to define equipment catalogue & wiring rules based on the selected instrument wiring
and cable type.
CONTRACTOR to manage document/drawing revision within Aveva E&I application using in built feature.
3.5.5 Electrical Database
CONTRACTOR shall use AVEVA E&I to develop electrical database and specific electrical lists and datasheets to
be able to extract deliverables specified in Section 6 of this document and ensure consistency of the information
delivered between these lists (1D and E&I), the 2D schematics and the 3D Model.
CONTRACTOR to manage document/drawing revision within Aveva E&I application using in built feature.
3.5.6 Datasheets
The CONTRACTOR must develop project datasheets listed in Section 6 using AVEVA applications, under the
following conditions:
- All datasheets listed in MDR, shall be stored inside the AVEVA application databases.
- All datasheet’s templates, inside the AVEVA applications, shall be associated with the correct RDL class
or classes (equipment type).
- All technical properties within datasheet shall be mapped with equipment (or Tag) class attributes,
specified within RDL.
- For any datasheets templates not implemented in AVEVA Engineering/E&I provided by COMPANY,
CONTRACTOR shall get an approval from the COMPANY through TQR and implement it in appropriate
AVEVA application with association with class from RDL.
- Document packs functionality need to be used for datasheets to combine in one pack all datasheet’s
parts, including but not limiting to cover page, table of content, general information, etc. Each revision
of datasheet issued through the document control system need to be fully in line with related document
pack (or separate datasheet) in the Aveva database.
- All new UDA’s created by Contractor in CTR’s DICT Database need to be reviewed and agreed with
Company Aveva admins in advance before using in any purposes.
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 9 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
3.6 2D Requirements
3.6.1 Schematics
CONTRACTOR shall develop and deliver to COMPANY, in accordance with SD-NOC-CSE-002, all schematics
deliverables listed in Section 6 using AVEVA Diagrams, AVEVA Instrumentation or AVEVA Electrical including
VENDORS and Suppliers schematic drawings.
COMPANY will provide a generic catalogue of symbols within AVEVA databases. Should CONTRACTOR require
schematics symbols not available in COMPANY’s catalogue, it shall be CONTRACTOR responsibility, to create the
missing schematics symbols in accordance with the requirements specified in GM-NOC-EDT-001 and SD-NOC-
CSE-002, which shall then become COMPANY’s property.
CONTRACTOR shall provide to COMPANY the complete schematics database, including used catalogues, for its
entire scope, at each targeted official revision issuance (IFRx, IFA, IFC, etc.).
All HVAC schematic drawings shall comply with SD-NOC-HVA-803.
3.6.2 Drawings
The CONTRACTOR shall use the 3D Model AVEVA developed in Everything3D to deliver, in accordance with the
SD-NOC-CSE-001, the 2D CAD drawings listed in Section 6 of this Appendix. These drawings shall not be modified
outside AVEVA Everything3D even for minor changes in terms of visual representation.
3.6.3 Other 2D Documents requirements
CONTRACTOR shall meet Final Documentation requirements to deliver 100% documents in iPDF format with all
related native files (if any) extracted from AVEVA applications.
User guides are provided for all the plug-ins, and a Key/Super-user SHALL be identified within the CONTRACTOR
organization who will be trained by COMPANY iTOOLs Coordinator and SHALL be the focal point for all iTools
related issues.
3.7 3D modelling Requirements
CONTRACTOR shall develop and deliver to COMPANY a NLQ 3D CAD Model for its entire scope using AVEVA E3D
including VENDORS’ and Suppliers’ data and Model, in compliance SD-NOC-CSE-004, SD-NOC-CSE-005 and GM-
NOC-EC-116 and implementation procedure prepared by the CONTRACTOR.
NLQ E3D Model should be viewed and used as fully intelligent and integrated multi-discipline database to
ensure a clash free status, i.e. on the structure, equipment layout, piping layout, escape routes, hook-up access,
and comply with maintenance, inspection requirements, material handling and ergonomic checks.
COMPANY has developed E3D Catalogues based on COMPANY standard specification which can be provided and
utilized for the project, as applicable. CONTRACTOR shall be responsible for developing and/ or customization
of E3D catalogues based on project specific requirements and details as developed by the contractor/ vendor
specific information. Naming of catalogues developed by CONTRACTOR for the project shall be as per specified
in SD-NOC-CSE-005.
Model shall be incorporated with proper layering and segregation by subsystem such that major discipline data
can be viewed separately and together. The 3D model shall accurately align with other design documents, such
as: P&IDs, structural layouts, safety layouts, pipe racks, cable tray layout, equipment design/configuration, etc
3D model review workshops shall be performed to check safety, constructability, accessibility, maintainability,
and process aspects in line with the agreed procedure.
The content of all deliverables that are extracted from 3D model applications shall not be modified outside 3D
model system such as object geometry, dimensions or technical data presented on the extracted document. The
following deliverables to be extracted from 3D model, at the minimum but not limited to:
- All deliverables indicated in Section 6.2.5
- Weekly Navis file for COMPANY review
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 10 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
COMPANY will provide at the start of the detail engineering studies the catalogue and specifications
corresponding to COMPANY piping material classes.
The catalogue and specification management shall strictly comply with the requirements specified in SD-NOC-
CSE-005. Should CONTRACTOR require piping classes not available in COMPANY’s catalogue, it shall be
CONTRACTOR’s responsibility, after seeking agreement from the COMPANY, to create the missing piping class
using AVEVA Catalogue module following requirements of the PMS and specified in SD-NOC-CSE-005, which
shall then become COMPANY’s property.
CONTRACTOR shall provide to COMPANY, in accordance with SD-NOC-CSE-004 the complete set of 3D CAD
Model database for its entire scope, at each contractual 3D CAD Model Review milestone, 30%, 60% and 90%.
During the all-project phases, a 3D model shall comply with the following requirements:
- CONTRACTOR must update catalogues based on VENDOR specific information (weight, dimensions,
configuration etc.). CONTRACTOR shall also identify any additional catalogue which might be required
for the PROJECT but not included in the database provided by COMPANY. CONTRACTOR shall develop
any such catalogue for implementation for 3D modelling.
- The details for the interface 3D Model sharing and integration of models from other
Contractors shall be specified in the 3D CAD Model Execution Plan and Review Procedure. Final 3D
Model shall be delivered integrating the database of 3D Model, available from potential other Engineers
/ Contractors. 3D Models developed by Engineers/Contractors shall be developed in full compliance
with COMPANY Technical Standards.
The scope of work for 3D modelling shall also include, but not be limited to, the following:
- Develop and further update procedure(s) for 3D modelling and model review, including progress
measurement, clash check, catalogue management, access control, etc.
- Development of any additional catalogues required for 3D modelling or drafting in 2D.
- Development of model for the equipment (both standalone and packaged equipment), including the
elements within the package. CONTRACTOR shall also be responsible for integrating the AVEVA E3D 3D
model with the model(s) received from packaged vendor (if performed by package vendor) and the
other potential Engineers / Contractors.
- Develop and maintain various catalogues required for modelling.
- Submitting reports on modelling progress, clash resolution, etc., at agreed intervals.
CONTRACTOR shall organise and perform 3D Model reviews at 30%, 60%, and 90% progress of the design to
check safety, constructability, accessibility, maintainability, and process aspects. CONTRACTOR discipline
leaders shall be available for these reviews with COMPANY experts following NOC Specification SD-NOC-CSE-004.
The 3D Model review scope, location and attendees shall be identified and agreed upon between
CONTRACTOR and COMPANY.
CONTRACTOR shall ensure that all Tags within 3D Model are fully matching with 1D database and Tags of 2D
documents (Drawings + other documents).
The handover of the 3D Models shall be carried out by CONTRACTOR in accordance with the requirements and
the acceptance criteria as defined in Section 5.6 of SD-NOC-CSE-004.
To demonstrate the compliance with the Quality requirements specified for the Handover, CONTRACTOR shall
run consistency checks in all modules and shall ensure that there are no Database consistency errors
particularly with regards to consistency of tagged items. Consistency reports generated shall be delivered
along with QA/QC documents by CONTRACTOR.
All the equipment within the VENDOR’s 3D models shall be modelled and Tagged as all other equipment in the
3D model in compliance with SD-NOC-CSE-004 and SD-NOC-EC-106.
3.8 Database Replication Requirements
CONTRACTOR shall setup AVEVA Global interface to synchronize AVEVA dabacon databases between
CONTRACTOR Satellite and COMPANY Hub locations, that shall be set up in accordance with GM-NOC-EC-119.
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 11 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
CONTRACTOR shall run synchronization on daily basis and regularly monitor and ensure that the data
replication with COMPANY database successful and complete.
For AVEVA Electrical and AVEVA Instrumentation CONTRACTOR shall handover SQL database backup and full
project backup on bi-weekly basis using COMPANY share folder.
3.9 Database Integration Requirements
CONTRACTOR shall ensure that 1D, 2D and 3D are persistently linked to maintain the data integrity using design
links.
The CONTRACTOR shall setup an interfaces between AVEVA applications using built-in Compare and Update
technology to transfer Tags and Tag’s properties between AVEVA databases.
3.10 Vendor data management
The CONTRACTOR shall request 1D data from VENDORs and SUPPLIERs and incorporate this data into relevant
AVEVA database.
CONTRACTOR shall consider any kind of data, document and 3D model deliverables coming from the VENDORs
or SUBCONTRACTORs as its own deliverables and, therefore, carry full responsibility for the on-time delivery,
quality, and consistency.
CONTRACTOR shall ensure that all the data, documents, and 3D models coming from SUBCONTRACTOR’s fully
comply with all COMPANY specifications, and is therefore, checked and validated before submitting to the
COMPANY.
CONTRACTOR shall allocate in advance all Vendor Tags in Aveva Engineering database created in line with
COMPANY Tagging Standard SD-NOC-EC-106 and preliminary validated by COMPANY without any errors. After
defining exact scope of work for each Vendor all non-used Tags from preliminary allocated ranges need to be
deleted from databases.
CONTRACTOR shall ensure information management requirements are included in any contractual
requirements to its VENDORs and SUBCONTRACTORs and shall further ensure that the information received
from them is timely, complete, consistent, and correct.
CONTRACTOR shall develop the requirements to the data, documents and 3D models for each VENDOR and
Subcontractor individually and include these requirements in all the ITB packages / Material Requisitions /
Purchase Orders and other official communication means. CONTRACTOR shall ensure that requirements
mentioned above have been discussed during the kick-off meeting with the VENDOR and there are no pending
questions left.
Collecting and integrating the information received from VENDORs and SUPPLIERs into AVEVA databases is
CONTRACTOR's responsibility.
CONTRACTOR shall submit all VENDOR technical 1D data (like pressure, temperature, weight etc.) deliverables
as CONTRACTOR’s own and shall incorporate all the data from VENDOR or SUBCONTRACTORs in AVEVA
Database under the same quality and consistency level its own. All VENDOR 1D data quality and scope shall
comply with Company RDL.
CONTRACTOR shall incorporate all key VENDOR document deliverables like data sheet, package GAD, P&ID in
AVEVA Database under the same quality and consistency level as its own. All other vendor documents for which
native files could not be shared by vendor shall be included in database in standard and legible formats with
proper documentation numbering system.
CONTRACTOR shall ensure that all the data have been delivered to the COMPANY before the start of equipment
commissioning at SITE.
VENDOR data is within the definition of FINAL DOCUMENTATION as per the AGREEMENT and shall form an
integral part of the delivery of the Equipment and Materials. Delivery shall not be deemed complete in
accordance with EXHIBIT C and COMPLETION CERTIFICATE withheld if such data are not completed or delayed.
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 12 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
It is CONTRACTOR obligation to ensure the VENDOR or SUBCONTRACTOR compliance with the requirements
stipulated in current Appendix. CONTRACTOR shall plan and allocate adequate resources to effectively manage
and deliver according to the WORK TIME SCHEDULE.
3.10.1 VENDOR data in datasheets
For the VENDOR data in datasheets CONTRACTOR shall clearly define the process how this data will be updated.
Identify procedure and timeframe. This process shall be in line with the following requirements:
- All datasheets issued by CONTRACTOR with missing VENDOR data shall be updated immediately
whenever missing values provided by VENDOR.
- The CONTRACTOR shall provide all technical properties specified in COMPANY RDL as a data values
through the AVEVA Engineering or AVEVA E&I.
- For Internal Wiring/Termination/TSLD/SLD CONTRACTOR to perform all connections as per vendor
data/drawings in Aveva E&I database.
3.10.2 Vendor 3D models
VENDOR package shall be presented in 3D models with the level of details required by SD-NOC-CSE-004.
At the stage of 30% completion model the VENDOR package shall be modelled in 3D based on preliminary
vendors' information or with all tie-in points. VENDOR package equipment location shall be aligned with design
position.
At the 90% model review PIPEs, HVAC ducts and Cable trays items within a VENDOR package shall be modelled
using AVEVA catalogue items and placed under respective discipline ZONE level with respect to SD-NOC-CSE-
004. All other Tagged items, which is part of VENDOR package, shall be:
 Modelled in 3D model as a separate EQUI objects. EQUI may include AVEVA E3D elements (as SUBE,
BOX, CYLINDER, CONE, SNOUT, PYRAMID, DISH, EXTRUSION, CIRCULAR TORUS, RECTANGULAR TORUS,
SLOPED CYLINDER, REVOLUTION) or imported geometry (GENPRI) with support of “INCLUDE” function.
 Identified in accordance with SD-NOC-EC-106.
 Placed under a separate EQUI object and numbered according to SD-NOC-EC-106.
 Connected to the PIPEs using NOZZLEs which shall be modelled using catalogue items, tagged according
to SD-NOC-EC-106 and have correct connections.
 Filled mandatory attributes:
Usrweight - User entered weight value
Usrwweight - User entered wet weight value
Usrcogravity - User centre of gravity position
Usrwcogravity - User wet centre of gravity position
 Have electrical connections to be modelled using ELCONN elements.
 Simplified – removed bolts and nuts, perforation or penetrations with diameter less than 25mm, any
piece with overall dimensions under 25mm x 25mm x 25mm shall be represented as a BOX or
CYLINDER covering whole its volume of that piece, all POLYHE objects remodelled with primitives, all
internal (invisible) elements have to be deleted.
Non-tagged items, for example, structure elements, supporting profiles, stairs and ladders etc. shall be kept
under the VENDOR package EQUI level with respective VENDOR package Tag number.
CONTRACTOR shall consider the following options for the process of incorporating VENDOR’s 3D model into
AVEVA E3D model:
1. Develop a 3D model based on VENDOR’s drawings by CONTRACTOR, or
2. Request the VENDOR to create a 3D model directly in AVEVA E3D (as Global satellite or as a standalone
project), or
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 13 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
3. Request VENDOR to provide a 3D model in exchangeable format (step, dgn, IFC, stp etc.), then import
3D model into AVEVA E3D common model, move geometry to a separate EQUI object, assign a Tag
number, remodel with native object (if applicable).
Imported geometry for any types of equipment shall meet the following requirements:
 Equipment 3D model comply with SD-NOC-CSE-004;
 3D model simplified as specified for a process equipment;
 EQUI object contains not more than 10 SUBE objects and not more than 50 child objects overall, each
of the SUBE objects contains not more than 50 child objects overall and any of POHE contains not
more than 50 child objects.
Also, CONTRACTOR shall consider use of template based EQUI withing the VENDOR packages where it is
possible.
4 CONTRACTOR’s Engineering software
CONTRACTOR must use software version not less than provided in the Table 1 and shall not be changed unless
upon written approval has been granted by from the COMPANY side in compliance with the project deviation
procedures.
CONTRACTOR shall rollout all engineering application on its own servers. For all DABACON based applications,
AVEVA Everything3D, AVEVA Engineering and AVEVA Diagrams, CONTRACTOR shall use AVEVA Global
technology to provide daily incremental update to the COMPANY.
CONTRACTOR shall ensure that all off the applications listed in the Table 1 below are setup and ready before
the active design phase, including but not limited to previous project phase deliverables assessment by
CONTRACTOR administrators, rollout of all the applications in CONTRACTOR’s production environment,
providing an access to the end users, implementation of required settings and customization (if needed),
establishing AVEVA Global connection with the COMPANY HUB projects.
CONTRACTOR shall introduce the following engineering software mentioned for each activity to prepare the
data, 3D Model and Technical Documentation deliverables:
Table 1.
AVEVA Engineering 15.7.3 or higher (with up-to-date fix applied)
AVEVA E3D 3.1 or higher (with up-to-date fix applied)
AVEVA Diagrams 14.2 SP2 or higher (with up-to-date fix applied)
AVEVA Administration 2.1 or higher (with up-to-date fix applied)
AVEVA Instrumentation 12.2 SP6 or higher (with up-to-date fix applied)
AVEVA Electrical 12.2 SP6 or higher (with up-to-date fix applied)
Autodesk Navisworks 2022
*All the deliverables which are expected to be prepared using Autodesk AutoCAD shall be explicitly listed in the
Information Management Plan and approved by the COMPANY.
The final version of all of the applications shall be agreed during kick-off meeting and it shall be reflected in
CONTRACTOR's Information Management Plan.
5 Resources
5.1 By COMPANY
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 14 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
COMPANY will allocate as part of its Project Engineering Team a COMPANY MP Digital Officer directly to act as
a single point of contact for CONTRACTOR for any Data Management related topic.
COMPANY Digital Officer will control, as an external Quality Control level, the flow of data produced and
published via engineering applications by CONTRACTOR, that shall remain fully responsible for the quality and
reliability of the data produced.
5.2 By CONTRACTOR
CONTRACTOR shall nominate at the very beginning of the Project a CONTRACTOR Data Manager directly
reporting to CONTRACTOR Engineering Manager to act as the single point of contact with COMPANY for any
Information Management related topics.
CONTRACTOR Data Manager (refer to DIGITAL information Manager in EXHIBIT K) shall be responsible to make
sure that project team personnel is capable to prepare the project deliverables using AVEVA integrated
environment, either to provide all necessary trainings for the engineers and administrators to be capable to
work in relevant and in particular AVEVA applications listed in section the SECTION 4.10 above in advance,
before the project starts.
CONTRACTOR Data Manager shall be responsible for delivering data, controlling data availability, quality,
integrity/consistency and reliability (refer section 4.4) by that will be handed over to COMPANY and that later
be used by COMPANY Engineering teams and future Operations by including, but not limited to:
 Ensuring CONTRACTOR Project team fully understands COMPANY requirements on Information
Management,
 Supervising the data exchange and data review/APPROVAL processes with COMPANY and his
SUBCONTRACTORS;
 Verifying the quality and completeness of Asset data as it is delivered to COMPANY,
 Ensure data uniqueness, quality and protection for the future Operations phase by COMPANY and
6 Digital Twin Deliverables
CONTRACTOR shall provide to COMPANY a complete and consistent data set including 1D, E&I, 2D, 3D databases
prior to each official 3D model review including a data quality and consistency report. The following deliverables,
but not limited to, shall be part of the Digital Twin implementation within Phase 3.1 Project:
Table 2 General Digital Twin Deliverables
Description Class Date
Information Management Plan 1 ED + 3month
1D/2D/3D Project Particular Specification and
1 ED + 3 month
procedure
Project data control procedure (tag allocation, data
1 ED + 3 month
quality and consistency)
3D CAD Model Execution Plan 1 ED + 3 month
Master Tag Register 2 Weekly
AVEVA Engineering Database 2 Daily (AVEVA Global incremental update)
AVEVA Electrical Database 2 bi-weekly, full project backup via file share
AVEVA Instrumentation Database 2 bi-weekly, full project backup via file share
AVEVA Diagrams Database
2 Daily (AVEVA Global incremental update)
(Including related symbols catalogue)
AVEVA Everything3D Database
2 Daily (AVEVA Global incremental update)
(Includingrelated catalogue)
Data Quality & Consistency and
2 2 weeks Before formal 3D model review
Check & Analysis Report
Data Management Reporting - Weekly
Note: Beside formal reviews, CONTRACTOR shall be able to provide any database for its entire scope or MS Excel
/ CSV extracts upon request by COMPANY to allow reviews preparation and/or informal checks.
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 15 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
Documents directly extracted from the databases shall be identified in the Master Document Register (MDR).
The CONTRACTOR shall maintain a separate column in MDR where CONTRACTOR shall identify individual
documents required to be issued from AVEVA applications with compliance with Section 6 of this Appendix and
report on a weekly basis the progress.
6.1 Data quality and consistency control
CONTRACTOR shall ensure that there are no discrepancies between data in AVEVA applications, documents and
3D model, and if any, they shall be identified timely and rectified. Under this scope falling two conditions:
- Tag numbers shall be represented simultaneously in AVEVA databases, documents, and common plant
3D model.
- All Tag properties, provided via AVEVA Engineering, shall match with data presented in the respective
document (datasheet, schedule, list etc.)
COMPANY will issue a Tag consistency report regularly prior 4 weeks before upcoming 3D Model review
milestone defined in the Exhibit C to highlight discrepancies. The COMPANY retains the right to reject data
deliverables, documents, or 3D model deliverables and does not approve the next payment milestone if
consistency requirements are not met.
The content of any deliverable extracted from the AVEVA applications in editable format
(DXF/DWG/XLS/XLSX/DOC/DOCX) shall not be modified outside the AVEVA system. That means it is not allowed
to modify object geometry (representation), dimensions or technical data presented on a document extracted
from the AVEVA system.
CONTRACTOR shall establish as a minimum the following data control process:
- Tag numbering control in applications,
- Tag properties validation against the RDL, meaning that all property values and unit of measure are
compliant to RDL requirements;
- Data integrity and consistency between the applications used in the project, where all Tag numbers are
published into all required applications,
- Tag and Data completeness, where all the properties are filled in for each individual Tag. Avoid using
hidden or extra spaces and interchanging data information (character to number).
- Correction should be capture on the Minutes of Meeting.
- FEED Tags that is not been use on the execute stage, contractor should advise whereabout.
To comply with the requirements onto the quality and consistency, the CONTRACTOR shall implement AVEVA
compare and update technology or implement any other in-house or available on the market technology. In any
case, CONTRACTOR shall describe this process in the Information Management Plan (or separate document)
and get written approval from the COMPANY to use it.
To maintain data back traceability CONTRACTOR shall make sure that all historical data have been imported in
AVEVA Engineering and AVEVA E&I databases and stored in proper order. In particular, all datasheets shall be
stored (imported) in the same order as the datasheet submitted for COMPANY review in document
management system.
6.2 Documents to be extracted from the AVEVA application.
The following sections specify the types of the documents (for all disciplines) to be extracted from the AVEVA
applications. The COMPANY keeps the right to reject any of the deliverables listed below but developed outside
the appropriate application.
COMPANY retains the right to extend the list of the documents to be extracted from the AVEVA applications by
no more than 3 (three) additional document types per application with no additional cost or time implications.
The final list of the deliverables shall be agreed during the Engineering kick-off meeting.
The here below list is a non-exhaustive list; CONTRACTOR shall produce any additional deliverable from the any
of AVEVA applications as required for the performance of the WORK.
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 16 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
|     |     | APPENDIX A11 | Contract No.: 4600000XXX |     |
| --- | --- | ------------ | ------------------------ | --- |
6.2.1 Aveva Engineering deliverables
Document
| AVEVA application  |     |     | Description  | Discipline  |
| ------------------ | --- | --- | ------------ | ----------- |
type
| Aveva Engineering | DTS | Process Datasheets |     | Process |
| ----------------- | --- | ------------------ | --- | ------- |
Aveva Engineering  DTS  Instrument Process Datasheets  Process
| Aveva Engineering  | LIS / REG  | Line List  |     | Process  |
| ------------------ | ---------- | ---------- | --- | -------- |
Aveva Engineering LIS / REG Locked Open / Locked Closeregister Process
Aveva Engineering  DTS  Piping Datasheets (excluding NOC standard)  PVV
| Aveva Engineering  | DTS        | PVV Equipment Datasheets  |     | PVV  |
| ------------------ | ---------- | ------------------------- | --- | ---- |
| Aveva Engineering  | LIS / REG  | Master Equipment List     |     | PVV  |
| Aveva Engineering  | LIS / REG  | Manual Valve List         |     | PVV  |
Aveva Engineering  DTS  Mechanical Equipment Datasheets  Mechanical
Aveva Engineering LIS / REG Material Handling List Mechanical
| Aveva Engineering  | DTS        | Safety Equipment Datasheets  |     | Safety  |
| ------------------ | ---------- | ---------------------------- | --- | ------- |
| Aveva Engineering  | LIS / REG  | Safety Equipment List        |     | Safety  |
| Aveva Engineering  | LIS / REG  | HVAC Equipment List          |     | HVAC    |
| Aveva Engineering  | DTS        | HVAC Equipment Datasheets    |     | HVAC    |
| Aveva Engineering  | N/A        | Master Tag Register          |     | IM      |
| Aveva Engineering  | N/A        | Tag to Tag Register          |     | IM      |
| Aveva Engineering  | N/A        | Tag to Document Register     |     | IM      |
6.2.2 Aveva Diagrams deliverables
Document
| AVEVA application  |     |     | Description  | Discipline  |
| ------------------ | --- | --- | ------------ | ----------- |
type
| Aveva Diagrams  | BLD  | Block Flow Diagram               |     | Process  |
| --------------- | ---- | -------------------------------- | --- | -------- |
| Aveva Diagrams  | PFD  | Process Flow Diagram             |     | Process  |
| Aveva Diagrams  | P&ID | Piping & Instrumentation Diagram |     | Process  |
| Aveva Diagrams  | PSD  | Piping Safety Diagram            |     | Safety   |
| Aveva Diagrams  | UFD  | Utility Flow Diagram             |     | Process  |
| Aveva Diagrams  | USD  | Utility Safety Diagram           |     | Process  |
Aveva Diagrams  D&ID  Ducting & Instrumentation Diagram  HVAC
6.2.3 Aveva Electrical deliverables
Document
| AVEVA application  |     |     | Description  | Discipline  |
| ------------------ | --- | --- | ------------ | ----------- |
type
| Aveva Electrical | LIST | ELECTRICAL EQUIPMENT LIST  |     | Electrical |
| ---------------- | ---- | -------------------------- | --- | ---------- |
AvevaElectrical LIST ELECTRICAL RFID LIST/REGISTER Electrical
| Aveva Electrical  | DTS  | ELECTRICAL DATASHEETS  |     | Electrical  |
| ----------------- | ---- | ---------------------- | --- | ----------- |
Aveva Electrical  LIST  ELECTRICAL LOAD LIST & LOAD BALANCE  Electrical
Aveva Electrical SLD ELECTRICAL OVERALL SINGLE LINE DIAGRAMS Electrical
Aveva Electrical  SLD  ELECTRICAL KEY SINGLE LINE DIAGRAMS  Electrical
Aveva Electrical  SLD  ELECTRICAL SINGLE LINE DIAGRAMS  Electrical
| Aveva Electrical | LIST | ELECTRICAL CABLE SCHEDULE  |     | Electrical |
| ---------------- | ---- | -------------------------- | --- | ---------- |
Aveva Electrical  LIST  ELECTRICAL CABLE DRUM SCHEDULE   Electrical
Aveva Electrical BLD ELECTRICAL CABLE BLOCK DIAGRAM Electrical
Aveva Electrical  DWG  ELECTRICAL DISTRIBUTION BOARD SCHEDULE  Electrical
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A  Page 17 of 24
| Appendix A11: Digital Project Requirements |     |     | COMPANY Initials  |     |
| ------------------------------------------ | --- | --- | ----------------- | --- |
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
|     | APPENDIX A11 | Contract No.: 4600000XXX |     |
| --- | ------------ | ------------------------ | --- |
Document
| AVEVA application  |     | Description  | Discipline  |
| ------------------ | --- | ------------ | ----------- |
type
ELECTRICAL INTERCONNECTION AND WIRING
| Aveva Electrical  | WIR  |     | Electrical  |
| ----------------- | ---- | --- | ----------- |
DIAGRAMS
Aveva Electrical  DTS  ELECTRICAL DATASHEETS FOR HVAC EQUIPMENT  HVAC
| Aveva Electrical | SLD ELECTRICAL SINGLE LINE DIAGRAMS |     | HVAC |
| ---------------- | ----------------------------------- | --- | ---- |
6.2.4 Aveva Instrumentation deliverables
Document
| AVEVA application  |     | Description  | Discipline  |
| ------------------ | --- | ------------ | ----------- |
type
Aveva Instrumentation  LIST  PROCESS ALARM AND TRIP SCHEDULE  Process
|     | LIST  INSTRUMENT ALARM & TRIPS SCHEDULE  |     | Instrumentation  |
| --- | ---------------------------------------- | --- | ---------------- |
Aveva Instrumentation
Aveva Instrumentation  LIST  INSTRUMENT INDEX  Instrumentation
Aveva Instrumentation  LIST  INSTRUMENT I/O LIST  Instrumentation
Aveva Instrumentation  DTS  INSTRUMENT DATASHEETS  Instrumentation
Aveva Instrumentation  LIST  INSTRUMENT CABLE SCHEDULE  Instrumentation
Aveva Instrumentation  LIST  INSTRUMENT CABLE DRUM SCHEDULE  Instrumentation
Aveva Instrumentation  BLD  INSTRUMENT CABLE BLOCK DIAGRAM  Instrumentation
Aveva Instrumentation LIST  INSTRUMENT RFID LIST/REGISTER  Instrumentation
Aveva Instrumentation  LIST  INSTRUMENT JUNCTION BOX SCHEDULE  Instrumentation
Aveva Instrumentation
|     | DWG  INSTRUMENT HOOKUPS DRAWINGS  |     | Instrumentation  |
| --- | --------------------------------- | --- | ---------------- |
Aveva Instrumentation
|     | List  INSTRUMENT HOOKUP MTO  |     | Instrumentation  |
| --- | ---------------------------- | --- | ---------------- |
Aveva Instrumentation WIR  INSTRUMENT WIRING DIAGRAMS  Instrumentation
Aveva Instrumentation  TSLD  INSTRUMENT LOOPS  Instrumentation
Aveva Instrumentation  INSTRUMENT DATASHEETS FOR HVAC
|     | DTS  |     | HVAC  |
| --- | ---- | --- | ----- |
EQUIPMENT
| Aveva Instrumentation  | LIST  TELECOM EQUIPMENT LIST  |     | Telecom  |
| ---------------------- | ----------------------------- | --- | -------- |
| Aveva Instrumentation  | LIST  TELECOM DATASHEETS      |     | Telecom  |
Aveva Instrumentation  LIST  TELECOM CABLE SCHEDULE  Telecom
Aveva Instrumentation  LIST  TELECOM CABLE DRUM SCHEDULE  Telecom
Aveva Instrumentation
|     | DTS  TELECOM JUNCTION BOX SCHEDULE  |     | Telecom  |
| --- | ----------------------------------- | --- | -------- |
6.2.5 Aveva E3D deliverables
Document
| AVEVA application  |     | Document type  | Discipline  |
| ------------------ | --- | -------------- | ----------- |
type
All Electrical Equipment, Cable, Tray, Power,
Aveva E3D  LAY  Room, Lighting, Location, Earthing, MCT, Support,  Electrical
RFIG Grid Layouts
| Aveva E3D  | HAC  Hazardous Area Classification Drawings  |     | HSE   |
| ---------- | -------------------------------------------- | --- | ----- |
| Aveva E3D  | ISO  HVAC Isometrics                         |     | HVAC  |
All Equipment, Piping, Duct Layouts, Support, Duct
Penetration, Sections & Elevations, Standard
| Aveva E3D  | DRW/LAY  |     | HVAC  |
| ---------- | -------- | --- | ----- |
Construction Details, Hookup and Construction
Drawings
| Aveva E3D  | MTO  HVAC MTO for Duct and Tubing  |     | HVAC  |
| ---------- | ---------------------------------- | --- | ----- |
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A  Page 18 of 24
| Appendix A11: Digital Project Requirements |     | COMPANY Initials  |     |
| ------------------------------------------ | --- | ----------------- | --- |
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
|     | APPENDIX A11 | Contract No.: 4600000XXX |     |
| --- | ------------ | ------------------------ | --- |
Document
| AVEVA application  |     | Document type  | Discipline  |
| ------------------ | --- | -------------- | ----------- |
type
All Instrument Equipment, Cable, Tray, F&G,  Instrumentatio
| Aveva E3D  | LAY  |     |     |
| ---------- | ---- | --- | --- |
Room, Location, MCT, Support Layout  n
All Mechanical/Package Equipment drawings,
| Aveva E3D  | DRW/LAY  |     | Mechanical  |
| ---------- | -------- | --- | ----------- |
Layout, Plan drawings
| Aveva E3D  | DRW  All Pipe Support Drawings         |     | Piping  |
| ---------- | -------------------------------------- | --- | ------- |
| Aveva E3D  | GEA  All General Arrangement Drawings  |     | Piping  |
| Aveva E3D  | ISO  Piping Isometrics                 |     | Piping  |
| Aveva E3D  | LAY  All Layouts                       |     | Piping  |
| Aveva E3D  | MTO  Piping MTO                        |     | Piping  |
| Aveva E3D  | PLT  Plot Plan                         |     | Piping  |
Fire Zone, Restricted Area, Escape Route, Fire
Aveva E3D  DRW/LAY  Fighting, Safety Equipment, Safety Sign Layout,  Safety
Drawing, Safety Distances
| Aveva E3D  | DRW  All Structural Drawings  |     | Structural  |
| ---------- | ----------------------------- | --- | ----------- |
Primary, Secondary, Tertiary Structural, Steel
| Aveva E3D  | MTO  Jacket & Piles MTO and Weight  |     | Structural  |
| ---------- | ----------------------------------- | --- | ----------- |
reporting(Monitoring)
All Telecom Equipment, Cable, Tray, MCT, Support
| Aveva E3D  | LAY  |     | Telecom  |
| ---------- | ---- | --- | -------- |
Layout
Aveva E3D  MTO  Tray, Ladder, Tubing, Fittings, Supports  Elec, Ins & Tel
| Aveva E3D  | LIST  MCT Schedule            |     | Ele, Ins & Tel  |
| ---------- | ----------------------------- | --- | --------------- |
| Aveva E3D  | LIST  Cable Tray fill Report  |     | Ele, Ins & Tel  |
6.2.6 Architectural
For architectural discipline CONTRACTOR shall consider using a discipline deliverable type mentioned above if
the document will be issued (reviewed) under architectural discipline.
Any deviation from the lists mentioned above shall be raised as a deviation request by CONTRACTOR and subject
to COMPANY APPROVAL.
CONTRACTOR shall in that case provide evidence of technical incapability of any application to produce
deliverables listed above, then CONTRACTOR shall implement quality and consistency control procedure to
ensure that no discrepancy exists between database and delivered documents. This procedure shall be included
in the Information Management Plan (or as a separate document) and subject to APPROVAL.
7 AS-BUILT data and 3D model requirements
CONTRACTOR shall be responsible for updating all digital deliverables and application Database Content to the
as-built status.
To produce the as-built documentation, CONTRACTOR shall update a 3D model database, AVEVA Engineering
database, AVEVA Diagrams database, AVEVA E&I database following the requirements specified in MAJOR-
MPEN-ASYYY-00-390001 and requirements specified in current Appendix.
7.1 As-Built 3D model process
For whole project scope CONTRACTOR shall update the AVEVA E3D 3D model as per field or yard changes / red
line mark-ups on the drawings.
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A  Page 19 of 24
| Appendix A11: Digital Project Requirements |     | COMPANY Initials  |     |
| ------------------------------------------ | --- | ----------------- | --- |
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
CONTRACTOR shall update and hand over the As-Built 3D model in AVEVA E3D database format and related
deliverables for final review, validation, and approval by the COMPANY. This includes updating package unit 3D
models (vendor package 3D models) in native format and common plant 3D model.
CONTRACTOR shall submit to the COMPANY the As-Built 3D model as per the Work Schedule.
CONTRACTOR shall ensure that the final As-Built 3D model strictly conforms to the As-Built documents and
physical asset modifications even if they are not reflected in the documents by any reason.
7.2 As-Built schematics databases
CONTRACTOR shall incorporate field changes / red line mark-up changes in data and submit final data to the
COMPANY using relevant AVEVA application (AVEVA Engineering, AVEVA Electrical & Instrumentation).
CONTRACTOR shall ensure that all data is complete before the final data submission, all properties are relevant
to the documents and 3D model’s objects, and COMPANY’s data quality reports are issued without errors and
warnings.
7.3 As-Built 1D databases
CONTRACTOR shall incorporate field changes / red line mark-up changes in data and submit final data to the
COMPANY using relevant AVEVA application (AVEVA Engineering, AVEVA Electrical & Instrumentation).
CONTRACTOR shall ensure that all data is complete before the final data submission, all propertie’s values are
equal to values in the documents, and COMPANY’s data quality reports are issued without errors and warnings.
8 Final handover
Before ED + 6th months CONTRACTOR shall submit to COMPANY for approval a detailed Final Information
Handover Procedure for the handover of 3D models, catalogues, Electrical, Instrumentation databases, other
databases, data and tools used for the Project to servers designated by the COMPANY.
The Final Information Handover Procedure shall outline CONTRACTOR’s proposed methodology to ensure that
all Technical Drawings for the Project can be issued directly from 3D model and catalogues or CAD databases
without connecting to CONTRACTOR's IT infrastructure and those 3D model elements may be modified directly
in the 3D model or its integrated modules.
CONTRACTOR’s WORK shall not be deemed fulfilled until all the required FINAL DOCUMENTATION has been
received and accepted by the COMPANY as per the CONTRACT requirements.
A digital final handover shall be scheduled as soon as possible after the as-built changes have been implemented
but prior to submission of Provisional Acceptance Certificate.
8.1 Final handover of engineering data
The final engineering data set must be strictly compliant with other information handover items, notably
documents and 3D models.
8.2 Final handover of the 3D model
As the final set of deliverables, CONTRACTOR shall submit the following 3D model in AVEVA E3D format and
related information, including databases, catalogues, elements, attributes, tags, configuration files, drawing
files, settings, assembly instructions.
The final 3D model in AVEVA E3D format should include:
 The AVEVA E3D project with a 3D model for all project disciplines as per section 5.4 of SD-NOC-CSE-
004;
 drawings in E3D databases, which should be created from a 3D model;
 a bill of materials, which should be generated from a 3D model;
 a complete 3D model database with 3D models, project catalogues and drawings;
 as-built 3D model database files;
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 20 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
 database project files, including:
 design (DESI) databases which contain all the 3D design information for the Project.
 Draft (PADD) databases which contain data about 2D drawings produced by DRAW.
 Catalogue (CATA) databases which contain the project catalogue and specifications created using
AVEVA Catalogue product.
 Properties (PROP) databases that can contain material properties and can be referenced by the
catalogue.
 Dictionary (DICT) databases contain information on User Defined Data such as User Defined Attribute
Definitions.
 isodraft (ISOD) databases which contain spool drawings produced by SPOOLER.
 Schematic (SCHE) databases used by PID 3D Integrator
 Engineering (ENGI) database used by the Tags Module from within the AVEVA Engineering product.
 Cross Product (XPRD) database (is currently used to store comments.)
 Conceptual Model (RDFN) database used to store external data models, e.g. engineering class libraries.
 Configuration (CONF) database for extracting reference files and settings into a commonplace.
 database project files, which were used in the working Project as directories (reference projects);
 files, which are stored in folders that are defined by the environment variables proj_idMAC, proj_idPIC,
proj_idISO, proj_idDFLTS;
 additional custom functions written specifically for the working Project and stored in folders that are
defined by the environment variables PMLLIB and PDMSUI;
 customised tools, macros, settings software add-ons, etc.;
 standard consistency check reports for piping shall be without errors;
 reports on the verification of the project databases integrity, demonstrating the absence of errors;
 necessary authentication data, enabling full access to the project (user name with full rights and
password providing access to this Project)
 CONTRACTOR shall not make any modifications or omissions to 3D models or catalogues before
handover as of the requested date that may adversely impact its functionality. For example,
CONTRACTOR shall not remove any attributes from the 3D model, including AVEVA's standard
attributes and user-defined attributes, including attributes captured from other software;
 all tags and documents shall preserve their relationships at the handover of the 3D model;
 at the request of COMPANY, CONTRACTOR must provide a model in stand-alone project format,
including connections, with administrator credentials (free user as SYSTEM);
 the 3D model shall not contain any temporary and testing data;
 3D-model hierarchy and colouring should be performed as per « 3D CAD Models» (5).
In addition, CONTRACTOR shall prepare Final 3D model in AVEVA read only format:
 Attribute files: *.att;
 Visualization file: *nwd, *.rvm and *.dgn.
All *.att, *.rvm, *.nwd, and *.dgn files shall be prepared by CONTRACTOR directly using Final 3D model in native
format, which were developed in common database-based Plant Design CAD software, default functionality
Plant Design CAD software. It is unacceptable that the final 3D-model and related *.att, *.rvm, *.nwd and *.dgn
have any inconsistencies.
CONTRACTOR is responsible for supporting COMPANY during deployment of the Final 3D model in AVEVA E3D
format on COMPANY side. CONTRACTOR shall process requests from COMPANY within fifteen (15) Days upon
the date of the request.
Final 3D model in AVEVA E3D format deployed on COMPANY side shall permit the default functionality within,
using AVEVA E3D, including administrate (database, access, AVEVA project organisation, etc.), review 3D model,
manipulate with drawings in AVEVA Draw module (included open, refresh, extract), reporting, etc. In addition,
CONTRACTOR shall provide deployment instructions for the Final 3D model in AVEVA E3D format.
CONTRACTOR shall update a 3D model and related documents submitted during the Final Handover as per the
As-built procedure.
8.3 Final handover of intelligent drawings, calculations and databases from Intelligent 2D CAD
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 21 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
|     | APPENDIX A11 |     | Contract No.: 4600000XXX |
| --- | ------------ | --- | ------------------------ |
CONTRACTOR shall deliver all the databases backed up with admin credentials to allow full access to make Asset
modifications during the operation phase.
Intelligent drawings, calculations, models and databases shall be delivered as per requirements in the table
below:
Intelligent drawings,
calculations, models and  Handover requirements
databases
AVEVA  Diagrams  (native  CAD databases: Main and references project database files including types (if
CAD databases)  applicable): CATA, PROP, DICT, SCHE.
| Configuration files and settings for deploying AVEVA  |                |                         | Diagrams Project on       |
| ----------------------------------------------------- | -------------- | ----------------------- | ------------------------- |
| COMPANY                                               | side.  Add-on  | elements:  proj_idMAC,  | proj_idPIC,  proj_idISO,  |
proj_idDFLTS (which should be stored in a folder defined by the environment
variable proj_id000, where proj_id is the three-letter project code). Additional
custom functions are written specifically for the working Project and stored in
folders defined by the environment variables PMLLIB and PDMSUI.
AVEVA Instrumentation &  Database backup (package *.pkg) shall include .db file, reference files, and
Electrical  custom  report  templates.  It  shall  be  created  using  standard  backup
| functionality.  | Copies  shall  | include  drawing/document  | files,  databases,  |
| --------------- | -------------- | -------------------------- | ------------------- |
templates, resources, symbols, styles, rules, settings, configuration files, DB
Checklist, Deviations, TQRs, etc.
The database shall be consistency errors free.
A separate archive with SQL backup and project files and folders.
CONTRACTOR shall handover AVEVA Engineering database which contain full list
AVEVA Engineering
of tags and tag properties comply with Tag numbering and RDL.
Databases shall not contain any technical errors in DICE report.
Aveva E3D  Entire E3D project Directory inclusive of all databases, pic, mac, iso, dflts, pmllib,
pmlui directories.
Databases shall be performed Dice checks and submitted without any errors.
Others  An electronic version of intelligent drawings, calculations, models and databases
is provided in formats as specified below.
|    | 2D graphic to be provided in dedicated software formats (AutoCAD,  |     |     |
| --- | ------------------------------------------------------------------ | --- | --- |
incl. project-specific components libraries etc.).
|    | text part to be provided in DOCX format.                               |     |     |
| --- | ---------------------------------------------------------------------- | --- | --- |
|    | tabulated part to be provided in XLSX format.                          |     |     |
|    | engineering data (list of data's type see in 8) to be provided in CSV  |     |     |
format.
|    | schedules to be provided in Microsoft Project - > Primavera format. |     |     |
| --- | ------------------------------------------------------------------- | --- | --- |
|    | ancillary digital 3D models of the Asset in the editable format of  |     |     |
dedicated software.
|    | Data from other software (e.g. EasyPlant)                      |     |     |
| --- | -------------------------------------------------------------- | --- | --- |
|    | Any other documentation and data created in the Project's due  |     |     |
course by CONTRACTOR and Sub-Contractors.
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A  Page 22 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
CONTRACTOR shall not use non-Latin letters for naming deliverables (drawings, calculations, models, databases,
etc.) from the table above. All names of deliverables should be assigned as per the requirements of the
«Information Handover Plan».
CONTRACTOR shall describe the detailed list of the deliverables not included in the table above and in the
«Information Handover Plan».
CONTRACTOR shall not make any modifications or omissions in intelligent drawings, calculations, models and
databases that may adversely impact their functionality after the handover.
Upon a written request from COMPANY, CONTRACTOR shall, within fifteen (15) Days, provide current versions
of any databases and documents mentioned in this section as of the date of the request, without any omission.
8.4 Final quality assurance and control
The COMPANY will review the information provided by CONTRACTOR. The result of the review shall be included
in the transmittal and transferred by COMPANY DCC to CONTRACTOR DCC.
Following COMPANY review cycle, CONTRACTOR shall incorporate comments within fifteen (15) days of receipt
of the COMPANY’s transmittal unless the parties agree otherwise.
COMPANY review is not a substitute for CONTRACTOR’s own quality control system and does not relieve
CONTRACTOR of any responsibilities relating to the quality of procedures, the Work or delivery times.
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 23 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials

AL SHAHEEN OIL FIELD – QATAR
NEW LIVING QUARTER (NLQ) PROJECT
(EPCIC 10)
APPENDIX A11 Contract No.: 4600000XXX
ATTACHEMENT 1. Master Tag Register template
Attachment 1.
Master Tag Register.xlsx
ATTACHMENT 3. Data Model - Action Tracker
Attachment 3. Data
Model - Action Tracker.xlsx
ATTACHMENT 4. Mapping table
Attachment 4.
Mapping table.xlsx
ATTACHMENT 5. Tag To Tag template
Attachment 5. Tag
To Tag template.xlsx
ATTACHMENT 6. Tag To Document template
Attachment 6. Tag
To Document template.xlsx
EXHIBIT A – SCOPE OF WORK, Call for Tender, Rev A Page 24 of 24
Appendix A11: Digital Project Requirements COMPANY Initials
CONTRACTOR Initials