USE [master]
GO
/****** Object:  Database [ReportsAutomation_G]    Script Date: 11/8/2022 5:51:48 PM ******/
CREATE DATABASE [ReportsAutomation_G2]
 
GO
USE [ReportsAutomation_G2]
GO
/****** Object:  Table [dbo].[Beneficiary]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beneficiary](
	[BeneficiaryId] [bigint] IDENTITY(1,1) NOT NULL,
	[BeneficiaryXref] [nvarchar](max) NOT NULL,
	[OrganizationId] [bigint] NULL,
	[PetitionerId] [bigint] NULL,
	[PetitionerofPrimaryBeneficiary] [nvarchar](max) NULL,
	[PrimaryBeneficiaryXref] [nvarchar](max) NULL,
	[PrimaryBeneficiaryLastName] [nvarchar](max) NULL,
	[PrimaryBeneficiaryFirstName] [nvarchar](max) NULL,
	[CitizenshipCountry] [nvarchar](max) NULL,
	[RelationType] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[InactiveDate] [datetime] NULL,
	[FirmClientNumber] [nvarchar](max) NULL,
	[BeneficiaryType] [nvarchar](max) NULL,
	[Prefix] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Suffix] [nvarchar](max) NULL,
	[OtherFirstName] [nvarchar](max) NULL,
	[OtherMiddleName] [nvarchar](max) NULL,
	[OtherLastName] [nvarchar](max) NULL,
	[WorkEmail] [nvarchar](max) NULL,
	[PersonalEmail] [nvarchar](max) NULL,
	[HomePhone] [nvarchar](max) NULL,
	[WorkPhone] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[IsRovingEmployee] [bit] NULL,
	[IsWorkOffsite] [bit] NULL,
	[IsWorkAtMultipleSites] [bit] NULL,
	[Gender] [nvarchar](max) NULL,
	[SsnNumber] [nvarchar](max) NULL,
	[AlienNumber] [nvarchar](max) NULL,
	[BirthDate] [datetime] NULL,
	[BirthCity] [nvarchar](max) NULL,
	[BirthStateProvince] [nvarchar](max) NULL,
	[BirthCountry] [nvarchar](max) NULL,
	[MaritalStatus] [nvarchar](max) NULL,
	[SpouseBirthCountry] [nvarchar](max) NULL,
	[IsInRemovalProceeding] [bit] NULL,
	[MostRecentUSEntryDate] [datetime] NULL,
	[MostRecentUSEntryCity] [nvarchar](max) NULL,
	[MostRecentUSEntryState] [nvarchar](max) NULL,
	[HasMostRecentUSEntryAdmitted] [bit] NULL,
	[MostRecentUSDepartureDate] [datetime] NULL,
	[I94FirstName] [nvarchar](max) NULL,
	[I94MiddleName] [nvarchar](max) NULL,
	[I94LastName] [nvarchar](max) NULL,
	[I94Number] [nvarchar](max) NULL,
	[I94Status] [nvarchar](max) NULL,
	[I94ValidFromDate] [datetime] NULL,
	[I94ExpirationDate] [datetime] NULL,
	[MostRecentUSI94EntryStatus] [nvarchar](max) NULL,
	[MostRecentI797Status] [nvarchar](max) NULL,
	[MostRecentI797ValidFromDate] [datetime] NULL,
	[MaxOutDateNote] [nvarchar](max) NULL,
	[I797ExpirationDate] [datetime] NULL,
	[I797ReceiptNumber] [nvarchar](max) NULL,
	[MostRecentI797IssueApprovalDate] [datetime] NULL,
	[InitialHlEntryDate] [datetime] NULL,
	[FinalNivDate] [datetime] NULL,
	[FifthYearEndDate] [datetime] NULL,
	[EndorsedI129sExpirationDate] [datetime] NULL,
	[FormI129sRequestedExpirationDate] [datetime] NULL,
	[VisaPedDate] [datetime] NULL,
	[VisaIssueApprovalDate] [datetime] NULL,
	[VisaCategory] [nvarchar](max) NULL,
	[VisaType] [nvarchar](max) NULL,
	[VisaValidFromDate] [datetime] NULL,
	[VisaExpirationDate] [datetime] NULL,
	[PassportFirstName] [nvarchar](max) NULL,
	[PassportMiddleName] [nvarchar](max) NULL,
	[PassportLastName] [nvarchar](max) NULL,
	[PassportNumber] [nvarchar](max) NULL,
	[PassportCountry] [nvarchar](max) NULL,
	[PassportIssuedInCountry] [nvarchar](max) NULL,
	[PassportIssueApprovalDate] [datetime] NULL,
	[PassportValidFromDate] [datetime] NULL,
	[PassportExpirationDate] [datetime] NULL,
	[MostRecentI94EntryPassportNumber] [nvarchar](max) NULL,
	[SevisNumber] [nvarchar](max) NULL,
	[CPTValidFromDate] [datetime] NULL,
	[CPTExpirationDate] [datetime] NULL,
	[F1OptValidFromDate] [datetime] NULL,
	[F1OptExpirationDate] [datetime] NULL,
	[IsStemEligible] [bit] NULL,
	[F1StemOptValidFromDate] [datetime] NULL,
	[F1StemOptExpirationDate] [datetime] NULL,
	[HasPreviouslyHeldF1Status] [bit] NULL,
	[EadType] [nvarchar](max) NULL,
	[EadNumber] [nvarchar](max) NULL,
	[EadValidFromDate] [datetime] NULL,
	[EadExpirationDate] [datetime] NULL,
	[I140FileByDate] [datetime] NULL,
	[AdvanceParoleValidFromDate] [datetime] NULL,
	[AdvanceParoleExpirationDate] [datetime] NULL,
	[EadApValidFromDate] [datetime] NULL,
	[EadApExpirationDate] [datetime] NULL,
	[GreenCardValidFromDate] [datetime] NULL,
	[GreenCardExpirationDate] [datetime] NULL,
	[ReEntryPermitValidFromDate] [datetime] NULL,
	[ReEntryPermitExpirationDate] [datetime] NULL,
	[I90FilingEligibilityDate] [datetime] NULL,
	[I751FilingEligibilityDate] [datetime] NULL,
	[N400FilingEligibilityDate] [datetime] NULL,
	[HasPreviouslyHeldJVisaStatus] [bit] NULL,
	[PreviouslyHeldJVisaType] [nvarchar](max) NULL,
	[JVisaType] [nvarchar](max) NULL,
	[JVisaStatusValidFromDate] [datetime] NULL,
	[JVisaStatusExpirationDate] [datetime] NULL,
	[Ds2019IssueApprovalDate] [datetime] NULL,
	[Ds2019ValidFromDate] [datetime] NULL,
	[Ds2019ExpirationDate] [datetime] NULL,
	[HasHomeStayRequirement] [bit] NULL,
	[HasHomeStayRequirementWaiverReceived] [bit] NULL,
	[PrProcessActualStartDate] [datetime] NULL,
	[PrProcessTargetStartDate] [datetime] NULL,
	[HasPrProcessInitiated] [bit] NULL,
	[PermCaseFiledDate] [datetime] NULL,
	[PermCaseApprovedDate] [datetime] NULL,
	[PermPriorityDate] [datetime] NULL,
	[PermPriorityCategory] [nvarchar](max) NULL,
	[PermPriorityCountry] [nvarchar](max) NULL,
	[PermEta9089ExpirationDate] [datetime] NULL,
	[I140CaseFiledDate] [datetime] NULL,
	[I140CaseApprovedDate] [datetime] NULL,
	[I140PetitionerName] [nvarchar](max) NULL,
	[I140PriorityDate] [datetime] NULL,
	[I140PriorityCategory] [nvarchar](max) NULL,
	[I140PriorityCountry] [nvarchar](max) NULL,
	[HasPriorEmployerApprovedI140] [bit] NULL,
	[PriorEmployerI140PetitionerName] [nvarchar](max) NULL,
	[PriorEmployerI140PriorityDate] [datetime] NULL,
	[PriorEmployerI140PriorityCategory] [nvarchar](max) NULL,
	[PriorEmployerI140PriorityCountry] [nvarchar](max) NULL,
	[AosCaseFiledDate] [datetime] NULL,
	[AosCaseApprovedDate] [datetime] NULL,
	[ManagingAttorney] [nvarchar](max) NULL,
	[TravelDocumentIssueCountry] [nvarchar](max) NULL,
	[MostRecentUSEntryTravelDocumentNumber] [nvarchar](max) NULL,
	[NonimmigrantVisaNumber] [nvarchar](max) NULL,
	[Ethnicity] [nvarchar](max) NULL,
	[Race] [nvarchar](max) NULL,
	[HeightFeet] [int] NULL,
	[HeightInches] [int] NULL,
	[EyeColor] [nvarchar](max) NULL,
	[HairColor] [nvarchar](max) NULL,
	[WeightLbs] [int] NULL,
	[ImmigrationStatusValidFromDate] [datetime] NULL,
	[ImmigrationStatusExpirationDate] [nvarchar](max) NULL,
	[MostRecentPassportLastName] [nvarchar](max) NULL,
	[MostRecentPassportFirstName] [nvarchar](max) NULL,
	[MostRecentPassportNumber] [nvarchar](max) NULL,
	[MostRecentPassportIssuingCountry] [nvarchar](max) NULL,
	[MostRecentPassportMiddleName] [nvarchar](max) NULL,
	[MostRecentPassportValidFromDate] [datetime] NULL,
	[EADAPType] [nvarchar](max) NULL,
	[MostRecentPassportExpirationDate] [datetime] NULL,
	[ImmigrationStatus] [nvarchar](max) NULL,
	[WeightKg] [int] NULL,
	[SourceCreatedBy] [nvarchar](max) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](max) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[from_name] [nvarchar](max) NULL,
	[is_primary_beneficiary] [int] NOT NULL,
	[from_source] [nvarchar](50) NULL,
 CONSTRAINT [PK__Benefici__3FBA95F566CD4BAD] PRIMARY KEY CLUSTERED 
(
	[BeneficiaryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryAddress]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryAddress](
	[BeneficiaryAddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[BeneficiaryId] [bigint] NOT NULL,
	[AddressType] [nvarchar](100) NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](75) NULL,
	[County] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[AddressFromDate] [datetime] NULL,
	[AddressToDate] [datetime] NULL,
	[IsLastResidenceAbroad] [bit] NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Benefici__A0E4F3B53C150E79] PRIMARY KEY CLUSTERED 
(
	[BeneficiaryAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryEducation]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryEducation](
	[BeneficiaryEducationId] [bigint] IDENTITY(1,1) NOT NULL,
	[BeneficiaryId] [bigint] NOT NULL,
	[CollegeUniversityName] [nvarchar](350) NULL,
	[DegreeType] [nvarchar](150) NULL,
	[FieldOfStudy] [nvarchar](255) NULL,
	[DegreeReceivedDate] [datetime] NULL,
	[IsHighestDegree] [bit] NULL,
	[USOrForeignDegree] [nvarchar](50) NULL,
	[ProgramLength] [int] NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[Address_City] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BeneficiaryEducationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryEmployment]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryEmployment](
	[BeneficiaryEmploymentId] [int] IDENTITY(1,1) NOT NULL,
	[BeneficiaryId] [bigint] NOT NULL,
	[EmployeeId] [nvarchar](max) NULL,
	[EmploymentType] [nvarchar](max) NULL,
	[EmployeeStatus] [nvarchar](max) NULL,
	[EmployerName] [nvarchar](max) NULL,
	[HireDate] [datetime] NULL,
	[TerminationDate] [datetime] NULL,
	[ReHireDate] [datetime] NULL,
	[IsCurrent] [bit] NULL,
	[TerminationReason] [nvarchar](max) NULL,
	[OverallYearsofExperience] [int] NULL,
	[JobTitle] [nvarchar](max) NULL,
	[FunctionalJobTitleInternal] [nvarchar](max) NULL,
	[Address1] [nvarchar](max) NULL,
	[AptSteFlr] [nvarchar](max) NULL,
	[Address2] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[StateProvince] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[JobDuties] [nvarchar](max) NULL,
	[HrbpId] [nvarchar](max) NULL,
	[HrbpFirstName] [nvarchar](max) NULL,
	[HrbpMiddleName] [nvarchar](max) NULL,
	[HrbpLastName] [nvarchar](max) NULL,
	[HrbpEmail] [nvarchar](max) NULL,
	[SupervisorManagerId] [nvarchar](max) NULL,
	[SupervisorManagerFirstName] [nvarchar](max) NULL,
	[SupervisorManagerMiddleName] [nvarchar](max) NULL,
	[SupervisorManagerLastName] [nvarchar](max) NULL,
	[SupervisorManagerEmail] [nvarchar](max) NULL,
	[DepartmentCode] [nvarchar](max) NULL,
	[DepartmentName] [nvarchar](max) NULL,
	[BusinessUnit] [nvarchar](max) NULL,
	[CostCenterCode] [nvarchar](max) NULL,
	[CostCenterCodeName] [nvarchar](max) NULL,
	[ProjectCode] [nvarchar](max) NULL,
	[ProjectName] [nvarchar](max) NULL,
	[EndClient] [nvarchar](max) NULL,
	[SourceCreatedBy] [nvarchar](max) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](max) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Benefici__0C7056D5DAB60B79] PRIMARY KEY CLUSTERED 
(
	[BeneficiaryEmploymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryFamily]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryFamily](
	[BeneficiaryFamilyId] [bigint] IDENTITY(1,1) NOT NULL,
	[BeneficiaryId] [bigint] NOT NULL,
	[RelationBeneficiaryId] [bigint] NOT NULL,
	[RelationType] [nvarchar](100) NOT NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BeneficiaryFamilyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BeneficiaryPriorityDate]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeneficiaryPriorityDate](
	[BeneficiaryId] [bigint] NOT NULL,
	[Priority1Date] [datetime] NULL,
	[Priority1Category] [nvarchar](75) NULL,
	[Priority1Country] [nvarchar](75) NULL,
	[Priority2Date] [datetime] NULL,
	[Priority2Category] [nvarchar](75) NULL,
	[Priority2Country] [nvarchar](75) NULL,
	[Priority3Date] [datetime] NULL,
	[Priority3Category] [nvarchar](75) NULL,
	[Priority3Country] [nvarchar](75) NULL,
	[Priority4Date] [datetime] NULL,
	[Priority4Category] [nvarchar](75) NULL,
	[Priority4Country] [nvarchar](75) NULL,
	[Priority5Date] [datetime] NULL,
	[Priority5Category] [nvarchar](75) NULL,
	[Priority5Country] [nvarchar](75) NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Case]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Case](
	[CaseId] [bigint] IDENTITY(1,1) NOT NULL,
	[CaseXref] [nvarchar](max) NOT NULL,
	[OrganizationId] [bigint] NULL,
	[BeneficiaryId] [bigint] NOT NULL,
	[CaseType] [nvarchar](max) NULL,
	[RFEAuditDueDate] [datetime] NULL,
	[RFEAuditSubmittedDate] [datetime] NULL,
	[RFEAuditReceivedDate] [datetime] NULL,
	[CasePetitionName] [nvarchar](max) NULL,
	[PetitionerSponsorId] [bigint] NULL,
	[ServiceType] [nvarchar](max) NULL,
	[OriginatingCountry] [nvarchar](max) NULL,
	[DestinationCountry] [nvarchar](max) NULL,
	[CaseDescription] [nvarchar](max) NULL,
	[CaseOpenDate] [datetime] NULL,
	[IsPPEligibleAtFiling] [bit] NULL,
	[HasFiledByPP] [bit] NULL,
	[PPType] [nvarchar](max) NULL,
	[CaseFiledDate] [datetime] NULL,
	[ReceiptDateReceivedByGovt] [datetime] NULL,
	[ReceiptNumber] [nvarchar](max) NULL,
	[ReceiptStatus] [nvarchar](max) NULL,
	[CaseApprovedDate] [datetime] NULL,
	[CaseValidFromDate] [datetime] NULL,
	[CaseExpirationDate] [datetime] NULL,
	[PriorityDate] [datetime] NULL,
	[PriorityCategory] [nvarchar](max) NULL,
	[PriorityCountry] [nvarchar](max) NULL,
	[PetitionXref] [nvarchar](max) NULL,
	[CasePrimaryCaseManager] [nvarchar](max) NULL,
	[CasePrimaryAttorney] [nvarchar](max) NULL,
	[CaseReviewer] [nvarchar](max) NULL,
	[CaseWithdrawnDate] [datetime] NULL,
	[CaseClosedDate] [datetime] NULL,
	[CaseDeniedDate] [datetime] NULL,
	[DenialReason] [nvarchar](max) NULL,
	[CaseComments] [nvarchar](max) NULL,
	[PrimaryCaseStatus] [nvarchar](max) NULL,
	[SecondaryCaseStatus] [nvarchar](max) NULL,
	[SecondaryCaseStatusDate] [datetime] NULL,
	[LastStepCompleted] [text] NULL,
	[LastStepCompletedDate] [datetime] NULL,
	[NextStepAction] [nvarchar](max) NULL,
	[NextStepActionDueDate] [datetime] NULL,
	[NextStepActionToBeTakenBy] [nvarchar](max) NULL,
	[NotesInternal] [nvarchar](max) NULL,
	[NotesExternal] [nvarchar](max) NULL,
	[NotesConfidential] [nvarchar](max) NULL,
	[AttorneyPrimaryIdXref] [nvarchar](max) NULL,
	[AttorneyPrimaryEMPId] [nvarchar](max) NULL,
	[AttorneyPrimaryFirstName] [nvarchar](max) NULL,
	[AttorneyPrimaryMiddleName] [nvarchar](max) NULL,
	[AttorneyPrimaryLastName] [nvarchar](max) NULL,
	[AttorneyPrimaryCaseCreditPercentage] [int] NULL,
	[Attorney2IdXref] [nvarchar](max) NULL,
	[Attorney2EMPId] [nvarchar](max) NULL,
	[Attorney2FirstName] [nvarchar](max) NULL,
	[Attorney2MiddleName] [nvarchar](max) NULL,
	[Attorney2LastName] [nvarchar](max) NULL,
	[CaseWorkerPrimaryCaseCreditPercentage] [int] NULL,
	[CaseWorkerPrimaryIdXref] [nvarchar](max) NULL,
	[CaseWorkerPrimaryEMPId] [nvarchar](max) NULL,
	[CaseWorkerPrimaryFirstName] [nvarchar](max) NULL,
	[CaseWorkerPrimaryMiddleName] [nvarchar](max) NULL,
	[CaseWorkerPrimaryLastName] [nvarchar](max) NULL,
	[CaseWorkerPrimaryFullName] [nvarchar](max) NULL,
	[CaseWorker2CaseCreditPercentage] [int] NULL,
	[CaseWorker2IdXref] [nvarchar](max) NULL,
	[CaseWorker2EMPId] [nvarchar](max) NULL,
	[CaseWorker2FirstName] [nvarchar](max) NULL,
	[CaseWorker2MiddleName] [nvarchar](max) NULL,
	[CaseWorker2LastName] [nvarchar](max) NULL,
	[CaseWorker3CaseCreditPercentage] [int] NULL,
	[CaseWorker3IdXref] [nvarchar](max) NULL,
	[CaseWorker3EMPId] [nvarchar](max) NULL,
	[CaseWorker3FirstName] [nvarchar](max) NULL,
	[CaseWorker3MiddleName] [nvarchar](max) NULL,
	[CaseWorker3LastName] [nvarchar](max) NULL,
	[CaseInitiationDate] [datetime] NULL,
	[AllDocsReceivedDate] [datetime] NULL,
	[HrbpId] [nvarchar](max) NULL,
	[HrbpFirstName] [nvarchar](max) NULL,
	[HrbpMiddleName] [nvarchar](max) NULL,
	[HrbpLastName] [nvarchar](max) NULL,
	[HrbpEmail] [nvarchar](max) NULL,
	[SupervisorManagerId] [nvarchar](max) NULL,
	[SupervisorManagerFirstName] [nvarchar](max) NULL,
	[SupervisorManagerMiddleName] [nvarchar](max) NULL,
	[SupervisorManagerLastName] [nvarchar](max) NULL,
	[SupervisorManagerEmail] [nvarchar](max) NULL,
	[DepartmentCode] [nvarchar](max) NULL,
	[DepartmentName] [nvarchar](max) NULL,
	[BusinessUnit] [nvarchar](max) NULL,
	[CostCenterCode] [nvarchar](max) NULL,
	[CostCenterCodeName] [nvarchar](max) NULL,
	[ProjectCode] [nvarchar](max) NULL,
	[ProjectName] [nvarchar](max) NULL,
	[SourceCreatedBy] [nvarchar](max) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](max) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[UpdatedDate] [datetime] NULL,
	[from_name] [nvarchar](max) NULL,
 CONSTRAINT [PK__Case__6CAE524CABDB0583] PRIMARY KEY CLUSTERED 
(
	[CaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseMilestone]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseMilestone](
	[CaseId] [bigint] NOT NULL,
	[CaseInitiatedByPetrDate] [datetime] NULL,
	[CaseCreatedByFirmDate] [datetime] NULL,
	[WelcomeEmailSentDate] [datetime] NULL,
	[DocsChecklistSentToPetrDate] [datetime] NULL,
	[DocsChecklistSentToBnfDate] [datetime] NULL,
	[DocsReceivedFromPetrDate] [datetime] NULL,
	[DocsReceivedFromBnfDate] [datetime] NULL,
	[MinimalInfoDocsReceivedDate] [datetime] NULL,
	[AllInfoDocsReceivedDate] [datetime] NULL,
	[CaseDocsDraftedDate] [datetime] NULL,
	[InitialAttorneyReviewCompletedDate] [datetime] NULL,
	[FinalCaseDocsSentForReviewDate] [datetime] NULL,
	[SignedDocsReceivedDate] [datetime] NULL,
	[FinalAttorneyReviewCompletedDate] [datetime] NULL,
	[CasePacketSentToBnfDate] [datetime] NULL,
	[ReceiptNoticeReceivedDate] [datetime] NULL,
	[ApprovalNoticeReceivedDate] [datetime] NULL,
	[PermMinReqFinalizedDate] [datetime] NULL,
	[PermWorkExpChartSentDate] [datetime] NULL,
	[PermWorkExpChartReceivedDate] [datetime] NULL,
	[PermDraftEvlSentToBnfDate] [datetime] NULL,
	[PermEvlReceivedDate] [datetime] NULL,
	[PermPwrSubmittedDate] [datetime] NULL,
	[PermPwdIssuedDate] [datetime] NULL,
	[ApprovalReceivedFromPetrDate] [datetime] NULL,
	[Eta9089FiledDate] [datetime] NULL,
	[DolCaseNumberReceivedDate] [datetime] NULL,
	[Certified9089ReceivedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CasePerm]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasePerm](
	[CasePermId] [bigint] IDENTITY(1,1) NOT NULL,
	[CaseId] [bigint] NOT NULL,
	[AdAgencyId] [int] NULL,
	[IsAdAgencyActive] [bit] NULL,
	[AdAgencyName] [nvarchar](255) NULL,
	[AdOrderNumber] [nvarchar](255) NULL,
	[PwrDolFiledDate] [datetime] NULL,
	[FileEta9089ReceivedApprovalDate] [datetime] NULL,
	[FirstRecruitmentStartDate] [datetime] NULL,
	[FirstEligibleFilingDate] [datetime] NULL,
	[FilingDeadline] [datetime] NULL,
	[AnticipatedFilingDate] [datetime] NULL,
	[QuietPeriodEndDate] [datetime] NULL,
	[DeadlineRequestRecruitmentReportDate] [datetime] NULL,
	[SwaJobOrderStartDate] [datetime] NULL,
	[SwaJobOrderEndDate] [datetime] NULL,
	[NoticeOfFilingPostingStartDate] [datetime] NULL,
	[NoticeOfFilingPostingEndDate] [datetime] NULL,
	[FirstSundayAdPostingDate] [datetime] NULL,
	[FirstSundayAdPublicationName] [nvarchar](255) NULL,
	[SecondSundayAdPostingDate] [datetime] NULL,
	[SecondSundayAdPublicationName] [nvarchar](255) NULL,
	[JobFairStartDate] [datetime] NULL,
	[JobFairEndDate] [datetime] NULL,
	[JobFairMediaType] [nvarchar](255) NULL,
	[EmployerWebsiteStartDate] [datetime] NULL,
	[EmployerWebsiteEndDate] [datetime] NULL,
	[JobSearchSiteStartDate] [datetime] NULL,
	[JobSearchSiteEndDate] [datetime] NULL,
	[JobSearchSiteMediaType] [nvarchar](255) NULL,
	[EmployeeReferralProgramStartDate] [datetime] NULL,
	[EmployeeReferralProgramEndDate] [datetime] NULL,
	[LocalEthnicNewspaperStartDate] [datetime] NULL,
	[LocalEthnicNewspaperEndDate] [datetime] NULL,
	[LocalEthnicNewspaperMediaType] [nvarchar](255) NULL,
	[OnCampusRecruitingStartDate] [datetime] NULL,
	[OnCampusRecruitingEndDate] [datetime] NULL,
	[OnCampusRecruitingMediaType] [nvarchar](255) NULL,
	[TradeProfessionalOrganizationStartDate] [datetime] NULL,
	[TradeProfessionalOrganizationEndDate] [datetime] NULL,
	[TradeProfessionalOrganizationMediaType] [nvarchar](255) NULL,
	[EmploymentFirmStartDate] [datetime] NULL,
	[EmploymentFirmEndDate] [datetime] NULL,
	[EmploymentFirmMediaType] [nvarchar](255) NULL,
	[CampusPlacementOfficeStartDate] [datetime] NULL,
	[CampusPlacementOfficeEndDate] [datetime] NULL,
	[CampusPlacementOfficeMediaType] [nvarchar](255) NULL,
	[RadioTVStartDate] [datetime] NULL,
	[RadioTVEndDate] [datetime] NULL,
	[RadioTVMediaType] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CasePermId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CasePwr]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasePwr](
	[CasePwrId] [bigint] IDENTITY(1,1) NOT NULL,
	[CaseId] [bigint] NOT NULL,
	[PwrSubmissionDate] [datetime] NULL,
	[PwrTrackingNumber] [nvarchar](20) NULL,
	[PwrSuggestedSocCode] [nvarchar](15) NULL,
	[PwrSuggestedSocOccupationTitle] [nvarchar](255) NULL,
	[PwrWageSource] [nvarchar](75) NULL,
	[PwrWageSourceOtherSurveyName] [nvarchar](255) NULL,
	[PwrWageSourceOtherSurveyPublicationYear] [int] NULL,
	[PwrDeterminationDate] [datetime] NULL,
	[PwrExpirationDate] [datetime] NULL,
	[PwrDolSocCode] [nvarchar](15) NULL,
	[PwrDolWageLevel] [char](5) NULL,
	[PwrDolWage] [int] NULL,
	[PwrDolWagePer] [char](5) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CasePwrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseStep]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseStep](
	[CaseStepId] [bigint] IDENTITY(1,1) NOT NULL,
	[CaseStepXref] [nvarchar](50) NOT NULL,
	[CaseId] [bigint] NOT NULL,
	[IsStepMilestone] [bit] NULL,
	[CaseStepName] [nvarchar](255) NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CaseStepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDetails]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[client_name] [varchar](255) NOT NULL,
	[clientShortName] [varchar](255) NULL,
	[organizationName] [nvarchar](255) NULL,
	[organizationXref] [varchar](255) NULL,
	[petitionerName] [nvarchar](255) NULL,
	[petitionerXref] [nvarchar](255) NULL,
	[report_name] [varchar](255) NULL,
	[cadence] [varchar](255) NULL,
	[delivery_day] [varchar](255) NULL,
	[delivery_time] [varchar](255) NULL,
	[recipient_to] [text] NULL,
	[recipient_cc] [text] NULL,
	[no_of_tabs] [int] NULL,
	[special_criteria] [nchar](10) NULL,
	[expiration_report_sent] [int] NULL,
	[expiration_report_sent_on] [varchar](30) NULL,
	[status_report_sent_on] [datetime] NULL,
 CONSTRAINT [PK_ClientDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [bigint] IDENTITY(1,1) NOT NULL,
	[ContactXref] [nvarchar](50) NOT NULL,
	[ContactLevelId] [bigint] NOT NULL,
	[ContactLevel] [nvarchar](50) NULL,
	[Prefix] [char](10) NULL,
	[FirstName] [nvarchar](255) NULL,
	[MiddleName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[Suffix] [char](10) NULL,
	[Email] [nvarchar](200) NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](75) NULL,
	[County] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[IsBillingContact] [bit] NULL,
	[IsAdminContact] [bit] NULL,
	[IsSignatoryContact] [bit] NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LegalResource]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LegalResource](
	[LegalResourceId] [bigint] NOT NULL,
	[LegalResourceXref] [nvarchar](50) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[FirmName] [nvarchar](255) NULL,
	[IsActive] [bit] NULL,
	[Prefix] [char](10) NULL,
	[FirstName] [nvarchar](255) NULL,
	[MiddleName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[LegalResourceType] [nvarchar](50) NULL,
	[LegalResourceRole] [nvarchar](50) NULL,
	[BarNumber] [int] NULL,
	[LicensingAuthority] [nvarchar](50) NULL,
	[CaseWorkTime] [int] NULL,
	[Team] [nvarchar](50) NULL,
	[OfficeLocationCity] [nvarchar](75) NULL,
	[OfficeLocationStateProvince] [nvarchar](75) NULL,
	[OfficeLocationCountry] [nvarchar](75) NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](75) NULL,
	[County] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[PhoneNumberExt] [char](10) NULL,
	[MobileNumber] [nvarchar](15) NULL,
	[FaxNumber] [nvarchar](15) NULL,
	[Email] [nvarchar](200) NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[OrganizationId] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationXref] [nvarchar](255) NOT NULL,
	[OpenDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[InactiveDate] [datetime] NULL,
	[FirmClientNumber] [nvarchar](50) NULL,
	[OrganizationName] [nvarchar](255) NULL,
	[OrganizationShortName] [nvarchar](255) NULL,
	[TradeDBAName] [nvarchar](255) NULL,
	[YearEstablished] [nvarchar](50) NULL,
	[BusinessType] [nvarchar](150) NULL,
	[BusinessInfo] [nvarchar](max) NULL,
	[IndustryInfo] [nvarchar](150) NULL,
	[USEmployeeCount] [int] NULL,
	[WorldwideEmployeeCount] [int] NULL,
	[GrossAnnualIncome] [int] NULL,
	[NetAnnualIncome] [int] NULL,
	[FederalEmployerId] [nvarchar](15) NULL,
	[NaicsCode] [nvarchar](15) NULL,
	[BlanketLApprovalNumber] [nvarchar](20) NULL,
	[BlanketLExpirationDate] [datetime] NULL,
	[OriginatingAttorney] [nvarchar](255) NULL,
	[OriginatingAttorneyCredit] [int] NULL,
	[ManagingAttorney] [nvarchar](255) NULL,
	[ManagingAttorneyCredit] [int] NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](75) NULL,
	[County] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[PhoneNumber1] [nvarchar](15) NULL,
	[PhoneNumber1Ext] [char](10) NULL,
	[PhoneNumber2] [nvarchar](15) NULL,
	[PhoneNumber2Ext] [char](10) NULL,
	[MobileNumber] [nvarchar](15) NULL,
	[FaxNumber] [nvarchar](15) NULL,
	[ImmigrationBudgetCurrentYear] [int] NULL,
	[ImmigrationSpendCurrentYear] [int] NULL,
	[ImmigrationBudgetPreviousYear1] [int] NULL,
	[ImmigrationSpendPreviousYear1] [int] NULL,
	[ImmigrationBudgetPreviousYear2] [int] NULL,
	[ImmigrationSpendPreviousYear2] [int] NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Organiza__CADB0B123FFE6FD4] PRIMARY KEY CLUSTERED 
(
	[OrganizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Petitioner]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Petitioner](
	[PetitionerId] [bigint] IDENTITY(1,1) NOT NULL,
	[PetitionerXref] [nvarchar](50) NOT NULL,
	[OrganizationId] [bigint] NULL,
	[OpenedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[InactiveDate] [datetime] NULL,
	[FirmClientNumber] [nvarchar](50) NULL,
	[PetitionerName] [nvarchar](255) NULL,
	[PetitionerShortName] [nvarchar](255) NULL,
	[PetitionerNameOnForm] [nvarchar](255) NULL,
	[PetitionerEmail] [nvarchar](200) NULL,
	[TradeDBAName] [nvarchar](255) NULL,
	[YearEstablished] [int] NULL,
	[BusinessType] [nvarchar](150) NULL,
	[BusinessInfo] [nvarchar](max) NULL,
	[IndustryType] [nvarchar](150) NULL,
	[USEmployeeCount] [int] NULL,
	[WorldwideEmployeeCount] [int] NULL,
	[GrossAnnualIncome] [int] NULL,
	[NetAnnualIncome] [int] NULL,
	[BlanketLApprovalNumber] [nvarchar](20) NULL,
	[BlanketLExpirationDate] [datetime] NULL,
	[IsPetitionerOnBlanketL] [bit] NULL,
	[IsPetitionerH1bDependent] [bit] NULL,
	[IsPetitionerWillfulViolator] [bit] NULL,
	[IsOver50PctEEH1bL1aL1bStatus] [bit] NULL,
	[IsHigherEducationInstitution] [bit] NULL,
	[IsNonprofitOrganizationEntity] [bit] NULL,
	[IsNonprofitGovernmentResearch] [bit] NULL,
	[IsPrimarySecondaryEducationInstitution] [bit] NULL,
	[IsNonprofitCurriculumRelatedTraining] [bit] NULL,
	[IsPetitionerGuamCnmiCapExempt] [bit] NULL,
	[FederalEmployerId] [nvarchar](15) NULL,
	[NaicsCode] [nvarchar](15) NULL,
	[Address1] [nvarchar](255) NULL,
	[AptSteFlr] [char](10) NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](75) NULL,
	[County] [nvarchar](75) NULL,
	[StateProvince] [nvarchar](75) NULL,
	[ZipCode] [nvarchar](15) NULL,
	[Country] [nvarchar](75) NULL,
	[PhoneNumber1] [nvarchar](15) NULL,
	[PhoneNumber1Ext] [char](10) NULL,
	[PhoneNumber2] [nvarchar](15) NULL,
	[PhoneNumber2Ext] [char](10) NULL,
	[MobileNumber] [nvarchar](15) NULL,
	[FaxNumber] [nvarchar](15) NULL,
	[OriginatingAttorney] [nvarchar](255) NULL,
	[OriginatingAttorneyCredit] [int] NULL,
	[ManagingAttorney] [nvarchar](255) NULL,
	[ManagingAttorneyCredit] [int] NULL,
	[WorkingAttorney] [nvarchar](255) NULL,
	[WorkingAttorneyCredit] [int] NULL,
	[SourceCreatedBy] [nvarchar](50) NULL,
	[SourceCreatedDate] [datetime] NULL,
	[SourceUpdatedBy] [nvarchar](50) NULL,
	[SourceUpdatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PetitionerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[processed_form_details]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[processed_form_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[last_processed_form_id] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisaBulletinData]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisaBulletinData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[VisaBulletinId] [int] NOT NULL,
	[col1] [text] NULL,
	[col2] [text] NULL,
	[col3] [text] NULL,
	[col4] [text] NULL,
	[col5] [text] NULL,
	[col6] [text] NULL,
	[col7] [text] NULL,
	[table_info] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisaBulletinHeader]    Script Date: 11/8/2022 5:51:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisaBulletinHeader](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[month] [nvarchar](50) NULL,
	[year] [int] NULL,
	[text] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClientDetails] ON 
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1, N'Abercrombie & Fitch', N'A&F', N'Abercrombie & Fitch Management Co.', N'HGEYM07803', NULL, NULL, N'Status Report', N'Weekly', N'Monday', N'11:00', N'thompsonmir@gtlaw.com;', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:54.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (2, N'Acuity Lighting Brands', N'Acuity', N'Acuity', N'HGEYM23236', NULL, NULL, N'Status Report', N'Weekly', N'Monday', N'10:00', N'Acuityimmigration@gtlaw.com', N'', 6, N'Yes       ', 1, N'June', CAST(N'2022-11-02T22:53:54.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (3, N'Aggreko', N'Aggreko', N'Aggreko, LLC', N'HGEYM45061', NULL, NULL, N'Status Report', N'Weekly', N'Tuesday', N'10:00', N'Aggrekoimmigration@gtlaw.com', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:54.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (4, N'Alcon', N'Alcon', N'Alcon Laboratories, Inc.', N'HGEYM07812', NULL, NULL, N'Status Report', N'Weekly', N'Tuesday', N'10:00', N'heyerc@gtlaw.com;', N'vicenten@gtlaw.com;', 6, N'No        ', 1, N'November', CAST(N'2022-11-02T22:53:54.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (5, N'Ascena', N'Ascena', N'Ascena Retail Group', N'HGEYM07810', NULL, NULL, N'Status Report', N'Weekly', N'', N'11:00', N'heyerc@gtlaw.com', N'SantiestebanA@gtlaw.com;', 6, N'TBD       ', 0, NULL, NULL)
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (6, N'Bacardi', N'Bacardi', N'Bacardi U.S.A., Inc.', N'HGEYM07811', NULL, NULL, N'Status Report', N'Weekly', N'Tuesday', N'11:00', N'CappellariC@gtlaw.com;', N'nocec@gtlaw.com;', 6, N'Yes       ', 1, N'June', CAST(N'2022-11-02T22:53:54.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (7, N'BSCA', N'BSCA', N'Blue Shield of California', N'HGEYM45067', NULL, NULL, N'Status Report', N'Weekly', N'', N'10:00', N'BSCAimmigration@gtlaw.com', N'', 6, N'No        ', 1, N'May', NULL)
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (8, N'Campbells Soups', N'Campbells Soup', N'Campbells Soup', N'HGEYM31083', NULL, NULL, N'Status Report', N'Weekly', N'Tuesday', N'12:00', N'thompsonmir@gtlaw.com;', N'nocec@gtlaw.com;', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:54.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (9, N'Coca-Cola', N'Coca-Cola', N'Coca-Cola Refreshments USA, Inc.', N'HGEYM02955', NULL, NULL, N'Status Report', N'Weekly', N'Wednesday', N'12:00', N'heyerc@gtlaw.com;', N'graya@gtlaw.com;', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:54.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (10, N'Copart', N'Copart', N'', N'', N'Copart, Inc. ', N'PJU24902', N'Status Report', N'Weekly', N'', N'10:00', N'nocec@gtlaw.com;', N'graya@gtlaw.com;', 6, N'TBD       ', 1, N'June', NULL)
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (11, N'Del Monte', N'Del Monte', N'Del Monte', N'HGEYM37764', NULL, NULL, N'Status Report', N'Weekly', N'Thursday', N'11:00', N'heyerc@gtlaw.com', N'holodj@gtlaw.com', 6, N'No        ', 1, N'May', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (12, N'EDP & EDPR', N'EDP & EDPR', N'EDP', N'HGEYM40230', NULL, NULL, N'Status Report', N'Weekly', N'Monday', N'10:00', N'holodj@gtlaw.com', N'nocec@gtlaw.com;Donna.Rudnicki@gtlaw.com', 6, N'Yes       ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (13, N'Euromonitor', N'Euromonitor', N'Euromonitor International, Inc.', N'HGEYM45070', NULL, NULL, N'Status Report', N'Weekly', N'Thursday', N'11:00', N'holodj@gtlaw.com', N'nocec@gtlaw.com;', 6, N'No        ', 1, N'May', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (14, N'Express', N'Express', N'Express, LLC', N'HGEYM45069', NULL, NULL, N'Status Report', N'Weekly', N'Thursday', N'11:00', N'thompsonmir@gtlaw.com;', N'nocec@gtlaw.com;', 6, N'No        ', 1, N'May', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (15, N'Fractal', N'Fractal', N'Fractal Analytics, Inc.', N'HGEYM45063', NULL, NULL, N'Status Report', N'Weekly', N'Tuesday', N'13:00', N'Fractal@gtlaw.com;', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (16, N'Lectra & Gerber', N'Lectra & Gerber', N'Lectra', N'HGEYM41224', NULL, NULL, N'Status Report', N'Weekly', N'Thursday', N'11:00', N'holodj@gtlaw.com', N'', 6, N'No        ', 1, N'May', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (17, N'LendingTree & QuoteWizard', N'LendingTree & QuoteWizard', N'LendingTree', N'HGEYM39412', NULL, NULL, N'Status Report', N'Weekly', N'Thursday', N'10:00', N'LTimmigration@gtlaw.com', N'', 6, N'No        ', 1, N'May', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (18, N'Lidl', N'Lidl', N'Lidl', N'HGEYM14682', NULL, NULL, N'Status Report', N'Weekly', N'Wednesday', N'12:00', N'nocec@gtlaw.com;
holodj@gtlaw.com;', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (19, N'OneMain', N'OneMain', N'Springleaf General Services Corporation', N'HGEYM09938', NULL, NULL, N'Status Report', N'Weekly', N'Thursday', N'10:00', N'porterl@gtlaw.com;', N'onemain@gtlaw.com;', 6, N'No        ', 1, N'May', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (20, N'SCM', N'SCM', N'SCM Group North America, Inc.', N'HGEYM45071', NULL, NULL, N'Status Report', N'Weekly', N'Monday', N'12:00', N'holodj@gtlaw.com', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (21, N'SES', N'SES', N'SES', N'HGEYM32353', NULL, NULL, N'Status Report', N'Weekly', N'Thursday', N'12:00', N'holodj@gtlaw.com', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (22, N'Spirent & OctoScope', N'Spirent & OctoScope', N'Spirent', N'HGEYM38577', NULL, NULL, N'Status Report', N'Weekly', N'Tuesday', N'10:00', N'Spirentimmigration@gtlaw.com', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (23, N'Subway', N'Subway', N'Franchise World Headquarters, LLC', N'HGEYM45059', NULL, NULL, N'Status Report', N'Weekly', N'Monday', N'12:00', N'thompsonmir@gtlaw.com;nocec@gtlaw.com;', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (24, N'Symphony', N'Symphony', N'', N'', N'Symphony Communication Services LLC ', N'PGEYM36112', N'Status Report', N'Weekly', N'Wednesday', N'17:00', N'thompsonmir@gtlaw.com;', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (25, N'Tapestry', N'Tapestry', N'Tapestry', N'HGEYM15149', NULL, NULL, N'Status Report', N'Weekly', N'Tuesday', N'10:00', N'nocec@gtlaw.com;thompsonmir@gtlaw.com;', N'graya@gtlaw.com;', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (26, N'Target', N'Target', N'Target Corporation', N'HGEYM08774', NULL, NULL, N'Status Report', N'Weekly', N'Tuesday', N'12:00', N'heyerc@gtlaw.com;holodj@gtlaw.com;', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (27, N'Zimmer', N'Zimmer', N'Zimmer HQ', N'HGEYM25599', NULL, NULL, N'Status Report', N'Weekly', N'Monday', N'11:00', N'rubyj@gtlaw.com;parkse@gtlaw.com', N'Lockwoodd@gtlaw.com', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (28, N'Zoom Video', N'Zoom Video', N'', N'', N'Zoom Video Communications, Inc.', N'PGEYM38352', N'Status Report', N'Weekly', N'Wednesday', N'12:00', N'holodj@gtlaw.com', N'nocec@gtlaw.com;Donna.Rudnicki@gtlaw.com;harta@gtlaw.com', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (29, N'InComm', N'InComm', N'InComm', N'HGEYM44832', NULL, NULL, N'Status Report', N'Weekly', N'Monday', N'17:00', N'thompsonmir@gtlaw.com;nocec@gtlaw.com;', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (30, N'Lixil', N'Lixil', N'AS America Inc. d/b/a American Standard Brands (Lixil)  ', N'HGEYM45066', NULL, NULL, N'Status Report', N'Weekly', N'Wednesday', N'17:00', N'thompsonmir@gtlaw.com', N'nocec@gtlaw.com', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1029, N'ZimVie', N'ZimVie', N'ZimVie', N'HGEYM46263', NULL, NULL, N'Status Report', N'Weekly', N'Monday', N'11:00', N'rubyj@gtlaw.com;parkse@gtlaw.com', N'Lockwoodd@gtlaw.com', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1030, N'Avient', N'Avient', N'Avient', N'HGEYM47100', NULL, NULL, N'Status Report', N'Weekly', N'Monday', N'12:00', N'porterl@gtlaw.com;parkse@gtlaw.com', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1031, N'Avet', N'Avet', N'Avet Pharmaceutical Labs Inc.', N'HGEYM45685', NULL, NULL, N'Status Report', N'Weekly', N'Wednesday', N'10:00', N'holodj@gtlaw.com', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1032, N'Oerlikon', N'Oerlikon', N'Oerlikon', N'HGEYM17829', NULL, NULL, N'Status Report', N'Weekly', N'Wednesday', N'12:00', N'holodj@gtlaw.com', N'', 6, N'No        ', 1, N'June', CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1033, N'Julia Holod', N'Julia', NULL, NULL, NULL, NULL, N'Open Cases', N'Weekly', N'Monday', N'12:00', N'holodj@gtlaw.com', N'', NULL, NULL, NULL, NULL, CAST(N'2022-11-02T22:53:55.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1036, N'Cole Heyer', N'Cole ', NULL, NULL, NULL, NULL, N'Open Cases', N'Weekly', N'Monday', N'12:00', N'heyerc@gtlaw.com', N'', NULL, NULL, NULL, NULL, CAST(N'2022-11-02T22:54:08.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1037, N'Donna Rudnicki', N'Donna', NULL, NULL, NULL, NULL, N'Open Cases', N'Weekly', N'Monday', N'12:00', N'Donna.Rudnicki@gtlaw.com', N'', NULL, NULL, NULL, NULL, CAST(N'2022-11-02T22:54:12.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1041, N'Faraz Qaisrani', N'Faraz ', NULL, NULL, NULL, NULL, N'Open Cases', N'Weekly', N'Monday', N'12:00', N'qaisranif@gtlaw.com', N'', NULL, NULL, NULL, NULL, CAST(N'2022-11-02T22:54:12.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1042, N'G.Caterina Cappellari', N'Caterina ', NULL, NULL, NULL, NULL, N'Open Cases', N'Weekly', N'Monday', N'12:00', N'CappellariC@gtlaw.com', N'', NULL, NULL, NULL, NULL, CAST(N'2022-11-02T22:54:13.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1043, N'Jay Ruby', N'Jay', NULL, NULL, NULL, NULL, N'Open Cases', N'Weekly', N'Monday', N'12:00', N'rubyj@gtlaw.com', N'', NULL, NULL, NULL, NULL, CAST(N'2022-11-02T22:54:13.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1044, N'Linnea Porter', N'Linnea', NULL, NULL, NULL, NULL, N'Open Cases', N'Weekly', N'Monday', N'12:00', N'porterl@gtlaw.com', N'', NULL, NULL, NULL, NULL, CAST(N'2022-11-02T22:54:13.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1045, N'Miriam Thompson', N'Miriam', NULL, NULL, NULL, NULL, N'Open Cases', N'Weekly', N'Monday', N'12:00', N'thompsonmir@gtlaw.com', N'', NULL, NULL, NULL, NULL, CAST(N'2022-11-02T22:54:14.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1046, N'Seongbae Park', N'Seongbae', NULL, NULL, NULL, NULL, N'Open Cases', N'Weekly', N'Monday', N'12:00', N'parkse@gtlaw.com', N'', NULL, NULL, NULL, NULL, CAST(N'2022-11-02T22:54:15.000' AS DateTime))
GO
INSERT [dbo].[ClientDetails] ([id], [client_name], [clientShortName], [organizationName], [organizationXref], [petitionerName], [petitionerXref], [report_name], [cadence], [delivery_day], [delivery_time], [recipient_to], [recipient_cc], [no_of_tabs], [special_criteria], [expiration_report_sent], [expiration_report_sent_on], [status_report_sent_on]) VALUES (1049, N'Courtney Noce', N'Courtney', NULL, NULL, NULL, NULL, N'Open Cases', N'Weekly', N'Monday', N'12:00', N'porterl@gtlaw.com', N'nocec@gtlaw.com', NULL, NULL, NULL, NULL, CAST(N'2022-11-02T22:54:16.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ClientDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[VisaBulletinData] ON 
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (1, 1, N'Employment-
based', N'All Chargeability 
Areas Except
Those Listed', N'CHINA-
mainland 
born', N'EL SALVADOR
GUATEMALA
HONDURAS', N'INDIA', N'MEXICO', N'PHILIPPINES', N'A         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (2, 1, N'1st', N'C', N'C', N'C', N'C', N'C', N'C', N'A         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (3, 1, N'2nd', N'C', N'08JUN19', N'C', N'01APR12', N'C', N'C', N'A         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (4, 1, N'3rd', N'C', N'15JUN18', N'C', N'01APR12', N'C', N'C', N'A         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (5, 1, N'Other Workers', N'01JUN20', N'01DEC12', N'01JUN20', N'01APR12', N'01JUN20', N'01JUN20', N'A         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (6, 1, N'4th', N'C', N'C', N'15MAR18', N'C', N'15SEP20', N'C', N'A         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (7, 1, N'Certain Religious Workers', N'C', N'C', N'15MAR18', N'C', N'15SEP20', N'C', N'A         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (8, 1, N'5th Unreserved
(including C5, T5, I5, R5)', N'C', N'22MAR15', N'C', N'08NOV19', N'C', N'C', N'A         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (9, 1, N'5th Set Aside:
Rural (20%)', N'C', N'C', N'C', N'C', N'C', N'C', N'A         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (10, 1, N'5th Set Aside:
High Unemployment (10%)', N'C', N'C', N'C', N'C', N'C', N'C', N'A         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (11, 1, N'5th Set Aside:
Infrastructure (2%)', N'C', N'C', N'C', N'C', N'C', N'C', N'A         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (12, 1, N'Employment-
based', N'All Chargeability
Areas Except
Those Listed', N'CHINA-
mainland 
born', N'EL SALVADOR
GUATEMALA
HONDURAS', N'INDIA', N'MEXICO ', N'PHILIPPINES ', N'B         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (13, 1, N'1st', N'C', N'C', N'C', N'C', N'C', N'C', N'B         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (14, 1, N'2nd', N'C', N'08JUL19', N'C', N'01MAY12 ', N'C', N'C', N'B         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (15, 1, N'3rd', N'C', N'15JUL18', N'C', N'01JUL12', N'C', N'C', N'B         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (16, 1, N'Other Workers', N'08SEP22', N'01NOV15', N'08SEP22', N'01JUL12', N'08SEP22', N'08SEP22', N'B         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (17, 1, N'4th', N'C', N'C', N'15APR18', N'C', N'15OCT20', N'C', N'B         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (18, 1, N'Certain Religious Workers', N'C', N'C', N'15APR18', N'C', N'15OCT20', N'C', N'B         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (19, 1, N'5th Unreserved
(including C5, T5, I5, R5)', N'C', N'01JAN16', N'C', N'08DEC19', N'C', N'C', N'B         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (20, 1, N'5th Set Aside:
(Rural - 20%)', N'C', N'C', N'C', N'C', N'C', N'C', N'B         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (21, 1, N'5th Set Aside:
(High Unemployment - 10%)', N'C', N'C', N'C', N'C', N'C', N'C', N'B         ')
GO
INSERT [dbo].[VisaBulletinData] ([id], [VisaBulletinId], [col1], [col2], [col3], [col4], [col5], [col6], [col7], [table_info]) VALUES (22, 1, N'5th Set Aside:
(Infrastructure - 2%)', N'C', N'C', N'C', N'C', N'C', N'C', N'B         ')
GO
SET IDENTITY_INSERT [dbo].[VisaBulletinData] OFF
GO
SET IDENTITY_INSERT [dbo].[VisaBulletinHeader] ON 
GO
INSERT [dbo].[VisaBulletinHeader] ([id], [month], [year], [text]) VALUES (1, N'November', 2022, N'')
GO
SET IDENTITY_INSERT [dbo].[VisaBulletinHeader] OFF
GO
USE [master]
GO
ALTER DATABASE [ReportsAutomation_G] SET  READ_WRITE 
GO
