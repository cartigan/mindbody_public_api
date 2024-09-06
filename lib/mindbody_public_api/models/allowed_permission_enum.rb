# mindbody_public_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MindbodyPublicApi
  # AllowedPermission.
  class AllowedPermissionEnum
    ALLOWED_PERMISSION_ENUM = [
      # TODO: Write general description for MANAGECLASSANDEVENTDESCRIPTIONS
      MANAGECLASSANDEVENTDESCRIPTIONS = 'ManageClassAndEventDescriptions'.freeze,

      # TODO: Write general description for MANAGECLASSSCHEDULES
      MANAGECLASSSCHEDULES = 'ManageClassSchedules'.freeze,

      # TODO: Write general description for SCHEDULEFREECLASSESANDEVENTS
      SCHEDULEFREECLASSESANDEVENTS = 'ScheduleFreeClassesAndEvents'.freeze,

      # TODO: Write general description for SCHEDULERESOURCESFORCLASSESANDEVENTS
      SCHEDULERESOURCESFORCLASSESANDEVENTS = 'ScheduleResourcesForClassesAndEvents'.freeze,

      # TODO: Write general description for SUBSTITUTECLASSANDEVENTTEACHERS
      SUBSTITUTECLASSANDEVENTTEACHERS = 'SubstituteClassAndEventTeachers'.freeze,

      # TODO: Write general description for BULKEDITCLASSSCHEDULES
      BULKEDITCLASSSCHEDULES = 'BulkEditClassSchedules'.freeze,

      # TODO: Write general description for ADDSTAFFMEMBERS
      ADDSTAFFMEMBERS = 'AddStaffMembers'.freeze,

      # TODO: Write general description for MANAGEPERSONALINFOFORSTAFF
      MANAGEPERSONALINFOFORSTAFF = 'ManagePersonalInfoForStaff'.freeze,

      # TODO: Write general description for MANAGESTAFFSETTINGS
      MANAGESTAFFSETTINGS = 'ManageStaffSettings'.freeze,

      # TODO: Write general description for MANAGESTAFFLOGINS
      MANAGESTAFFLOGINS = 'ManageStaffLogins'.freeze,

      # TODO: Write general description for MANAGESTAFFSCHEDULES
      MANAGESTAFFSCHEDULES = 'ManageStaffSchedules'.freeze,

      # TODO: Write general description for MANAGESTAFFPAYRATES
      MANAGESTAFFPAYRATES = 'ManageStaffPayRates'.freeze,

      # TODO: Write general description for ACCESSBUSINESSINFORMATIONSCREEN
      ACCESSBUSINESSINFORMATIONSCREEN = 'AccessBusinessInformationScreen'.freeze,

      # TODO: Write general description for ACCESSGENERALSETUPOPTIONSSCREEN
      ACCESSGENERALSETUPOPTIONSSCREEN = 'AccessGeneralSetupOptionsScreen'.freeze,

      # TODO: Write general description for ACCESSNEWSEVENTSSCREEN
      ACCESSNEWSEVENTSSCREEN = 'AccessNewsEventsScreen'.freeze,

      # TODO: Write general description for MANAGEHOLIDAYS
      MANAGEHOLIDAYS = 'ManageHolidays'.freeze,

      # TODO: Write general description for CLASSANDEVENTOPTIONSSCREEN
      CLASSANDEVENTOPTIONSSCREEN = 'ClassAndEventOptionsScreen'.freeze,

      # TODO: Write general description for APPOINTMENTOPTIONSSCREEN
      APPOINTMENTOPTIONSSCREEN = 'AppointmentOptionsScreen'.freeze,

      # TODO: Write general description for ACCESSMEDIAMANAGEMENTSCREEN
      ACCESSMEDIAMANAGEMENTSCREEN = 'AccessMediaManagementScreen'.freeze,

      # TODO: Write general description for ACCESSMEMBERSHIPSETUPSCREEN
      ACCESSMEMBERSHIPSETUPSCREEN = 'AccessMembershipSetupScreen'.freeze,

      # TODO: Write general description for MANAGEPAYMENTMETHODS
      MANAGEPAYMENTMETHODS = 'ManagePaymentMethods'.freeze,

      # TODO: Write general description for MANAGEROOMNUMBERS
      MANAGEROOMNUMBERS = 'ManageRoomNumbers'.freeze,

      # TODO: Write general description for ACCESSRESOURCEMANAGEMENTSCREEN
      ACCESSRESOURCEMANAGEMENTSCREEN = 'AccessResourceManagementScreen'.freeze,

      # TODO: Write general description for ACCESSRESOURCESSCHEDULINGTAB
      ACCESSRESOURCESSCHEDULINGTAB = 'AccessResourcesSchedulingTab'.freeze,

      # TODO: Write general description for ACCESSLINKSSCREEN
      ACCESSLINKSSCREEN = 'AccessLinksScreen'.freeze,

      # TODO: Write general description for BULKCANCELCLIENTRESERVATIONS
      BULKCANCELCLIENTRESERVATIONS = 'BulkCancelClientReservations'.freeze,

      # TODO: Write general description for FINDDUPLICATECLIENTS
      FINDDUPLICATECLIENTS = 'FindDuplicateClients'.freeze,

      # TODO: Write general description for MERGEDUPLICATECLIENTS
      MERGEDUPLICATECLIENTS = 'MergeDuplicateClients'.freeze,

      # TODO: Write general description for MANAGEAUTOEMAILS
      MANAGEAUTOEMAILS = 'ManageAutoEmails'.freeze,

      # TODO: Write general description for MANAGEREVENUECATEGORIESFORSERVICES
      MANAGEREVENUECATEGORIESFORSERVICES = 'ManageRevenueCategoriesForServices'.freeze,

      # TODO: Write general description for MANAGEREVENUECATEGORIESFORPRODUCTS
      MANAGEREVENUECATEGORIESFORPRODUCTS = 'ManageRevenueCategoriesForProducts'.freeze,

      # TODO: Write general description for ACCESSACTIVESESSIONTIMESSCREEN
      ACCESSACTIVESESSIONTIMESSCREEN = 'AccessActiveSessionTimesScreen'.freeze,

      # TODO: Write general description for ACCESSCLASSSESSIONTYPESCREENS
      ACCESSCLASSSESSIONTYPESCREENS = 'AccessClassSessionTypeScreens'.freeze,

      # TODO: Write general description for ACCESSSERVICECATEGORIESSCREEN
      ACCESSSERVICECATEGORIESSCREEN = 'AccessServiceCategoriesScreen'.freeze,

      # TODO: Write general description for MANAGESUBSCRIBERPRICING
      MANAGESUBSCRIBERPRICING = 'ManageSubscriberPricing'.freeze,

      # TODO: Write general description for ADDINTROOFFERSONACQUISITIONDASHBOARD
      ADDINTROOFFERSONACQUISITIONDASHBOARD = 'AddIntroOffersOnAcquisitionDashboard'.freeze,

      # TODO: Write general description for MANAGEMINDBODYNETWORKSETTINGS
      MANAGEMINDBODYNETWORKSETTINGS = 'ManageMindbodyNetworkSettings'.freeze,

      # TODO: Write general description for MANAGEPRODUCTS
      MANAGEPRODUCTS = 'ManageProducts'.freeze,

      # TODO: Write general description for VIEWPRODUCTCOST
      VIEWPRODUCTCOST = 'ViewProductCost'.freeze,

      # TODO: Write general description for MANAGEMEMBERSHIPSETTINGSFORPRICING
      MANAGEMEMBERSHIPSETTINGSFORPRICING = 'ManageMembershipSettingsForPricing'.freeze,

      # TODO: Write general description for MANAGEPROMOTIONCODES
      MANAGEPROMOTIONCODES = 'ManagePromotionCodes'.freeze,

      # TODO: Write general description for EDITSALES
      EDITSALES = 'EditSales'.freeze,

      # TODO: Write general description for PRINTPRODUCTBARCODES
      PRINTPRODUCTBARCODES = 'PrintProductBarcodes'.freeze,

      # TODO: Write general description for MAKESALES
      MAKESALES = 'MakeSales'.freeze,

      # TODO: Write general description for ADDPRODUCTSONRETAILSCREEN
      ADDPRODUCTSONRETAILSCREEN = 'AddProductsOnRetailScreen'.freeze,

      # TODO: Write general description for EDITSALEDATEONRETAILSCREEN
      EDITSALEDATEONRETAILSCREEN = 'EditSaleDateOnRetailScreen'.freeze,

      # TODO: Write general description for EDITSALEPRICECOUNTONRETAILSCREEN
      EDITSALEPRICECOUNTONRETAILSCREEN = 'EditSalePriceCountOnRetailScreen'.freeze,

      # TODO: Write general description for EDITACTIVATIONDATEONRETAILSCREEN
      EDITACTIVATIONDATEONRETAILSCREEN = 'EditActivationDateOnRetailScreen'.freeze,

      # TODO: Write general description for APPLYCUSTOMDISCOUNTSONRETAILSCREEN
      APPLYCUSTOMDISCOUNTSONRETAILSCREEN = 'ApplyCustomDiscountsOnRetailScreen'.freeze,

      # TODO: Write general description for PAYFORANOTHERCLIENTONRETAILSCREEN
      PAYFORANOTHERCLIENTONRETAILSCREEN = 'PayForAnotherClientOnRetailScreen'.freeze,

      # TODO: Write general description for VOIDEDITPASTSALES
      VOIDEDITPASTSALES = 'VoidEditPastSales'.freeze,

      # TODO: Write general description for REFUNDSALES
      REFUNDSALES = 'RefundSales'.freeze,

      # TODO: Write general description for REFUNDSALESTOCREDITCARDS
      REFUNDSALESTOCREDITCARDS = 'RefundSalesToCreditCards'.freeze,

      # TODO: Write general description for LOCATIONSWITCHING
      LOCATIONSWITCHING = 'LocationSwitching'.freeze,

      # TODO: Write general description for PULLREPORTSFORALLLOCATIONS
      PULLREPORTSFORALLLOCATIONS = 'PullReportsForAllLocations'.freeze,

      # TODO: Write general description for LOGINVENTORY
      LOGINVENTORY = 'LogInventory'.freeze,

      # TODO: Write general description for ADJUSTINVENTORY
      ADJUSTINVENTORY = 'AdjustInventory'.freeze,

      # TODO: Write general description for TRANSFERINVENTORY
      TRANSFERINVENTORY = 'TransferInventory'.freeze,

      # TODO: Write general description for MANAGEPURCHASEORDERS
      MANAGEPURCHASEORDERS = 'ManagePurchaseOrders'.freeze,

      # TODO: Write general description for MANAGELOCATIONLOCALIZATION
      MANAGELOCATIONLOCALIZATION = 'ManageLocationLocalization'.freeze,

      # TODO: Write general description for MANAGEPERMISSIONGROUPS
      MANAGEPERMISSIONGROUPS = 'ManagePermissionGroups'.freeze,

      # TODO: Write general description for MANAGECONSTANTCONTACTSETTINGS
      MANAGECONSTANTCONTACTSETTINGS = 'ManageConstantContactSettings'.freeze,

      # TODO: Write general description for ACCESSSERVICESPRICINGSCREEN
      ACCESSSERVICESPRICINGSCREEN = 'AccessServicesPricingScreen'.freeze,

      # TODO: Write general description for MANAGESEMESTERS
      MANAGESEMESTERS = 'ManageSemesters'.freeze,

      # TODO: Write general description for MANAGERETENTIONMARKETING
      MANAGERETENTIONMARKETING = 'ManageRetentionMarketing'.freeze,

      # TODO: Write general description for MANAGESUBSCRIBERSETUPCHECKLIST
      MANAGESUBSCRIBERSETUPCHECKLIST = 'ManageSubscriberSetupChecklist'.freeze,

      # TODO: Write general description for VIEWCLASSANDEVENTRESERVATIONS
      VIEWCLASSANDEVENTRESERVATIONS = 'ViewClassAndEventReservations'.freeze,

      # TODO: Write general description for BOOKCLASSESANDEVENTS
      BOOKCLASSESANDEVENTS = 'BookClassesAndEvents'.freeze,

      # TODO: Write general description for BOOKCLASSESANDEVENTSINTHEPAST
      BOOKCLASSESANDEVENTSINTHEPAST = 'BookClassesAndEventsInThePast'.freeze,

      # TODO: Write general description for BOOKCLASSESANDEVENTSWITHOUTPAYMENT
      BOOKCLASSESANDEVENTSWITHOUTPAYMENT = 'BookClassesAndEventsWithoutPayment'.freeze,

      # TODO: Write general description for CANCELCLASSESANDEVENTS
      CANCELCLASSESANDEVENTS = 'CancelClassesAndEvents'.freeze,

      # TODO: Write general description for MANAGECLASSNOTES
      MANAGECLASSNOTES = 'ManageClassNotes'.freeze,

      # TODO: Write general description for VIEWAPPOINTMENTSCHEDULE
      VIEWAPPOINTMENTSCHEDULE = 'ViewAppointmentSchedule'.freeze,

      # TODO: Write general description for VIEWPERSONALAPPOINTMENTSCHEDULE
      VIEWPERSONALAPPOINTMENTSCHEDULE = 'ViewPersonalAppointmentSchedule'.freeze,

      # TODO: Write general description for EDITPERSONALAPPOINTMENTSCHEDULE
      EDITPERSONALAPPOINTMENTSCHEDULE = 'EditPersonalAppointmentSchedule'.freeze,

      # TODO: Write general description for VIEWAPPOINTMENTDETAILS
      VIEWAPPOINTMENTDETAILS = 'ViewAppointmentDetails'.freeze,

      # TODO: Write general description for MANAGEAPPOINTMENTREQUESTS
      MANAGEAPPOINTMENTREQUESTS = 'ManageAppointmentRequests'.freeze,

      # TODO: Write general description for BOOKAPPOINTMENTSFOROTHERSTAFFMEMBERS
      BOOKAPPOINTMENTSFOROTHERSTAFFMEMBERS = 'BookAppointmentsForOtherStaffMembers'.freeze,

      # TODO: Write general description for BOOKAPPOINTMENTSINTHEPAST
      BOOKAPPOINTMENTSINTHEPAST = 'BookAppointmentsInThePast'.freeze,

      # TODO: Write general description for CHANGEAPPOINTMENTDETAILS
      CHANGEAPPOINTMENTDETAILS = 'ChangeAppointmentDetails'.freeze,

      # TODO: Write general description for USEANYAPPOINTMENTASANADDON
      USEANYAPPOINTMENTASANADDON = 'UseAnyAppointmentAsAnAddon'.freeze,

      # TODO: Write general description for CHANGEAPPOINTMENTDURATION
      CHANGEAPPOINTMENTDURATION = 'ChangeAppointmentDuration'.freeze,

      # TODO: Write general description for CANCELAPPOINTMENTS
      CANCELAPPOINTMENTS = 'CancelAppointments'.freeze,

      # TODO: Write general description for APPLYPAYMENTTOAPPOINTMENTS
      APPLYPAYMENTTOAPPOINTMENTS = 'ApplyPaymentToAppointments'.freeze,

      # TODO: Write general description for CHECKOUTAPPOINTMENTS
      CHECKOUTAPPOINTMENTS = 'CheckOutAppointments'.freeze,

      # TODO: Write general description for OVERRIDEASSIGNEDPRICING
      OVERRIDEASSIGNEDPRICING = 'OverrideAssignedPricing'.freeze,

      # TODO: Write general description for MANAGEAPPOINTMENTCOLORS
      MANAGEAPPOINTMENTCOLORS = 'ManageAppointmentColors'.freeze,

      # TODO: Write general description for VIEWALLLOCATIONONCLIENTLOOKUPSCREEN
      VIEWALLLOCATIONONCLIENTLOOKUPSCREEN = 'ViewAllLocationOnClientLookupScreen'.freeze,

      # TODO: Write general description for ADDCLIENT
      ADDCLIENT = 'AddClient'.freeze,

      # TODO: Write general description for VIEWCLIENTPROFILESCREEN
      VIEWCLIENTPROFILESCREEN = 'ViewClientProfileScreen'.freeze,

      # TODO: Write general description for EDITCLIENTPROFILESCREEN
      EDITCLIENTPROFILESCREEN = 'EditClientProfileScreen'.freeze,

      # TODO: Write general description for ASSIGNCLIENTINDEXES
      ASSIGNCLIENTINDEXES = 'AssignClientIndexes'.freeze,

      # TODO: Write general description for MANAGECLIENTSUSPENSIONS
      MANAGECLIENTSUSPENSIONS = 'ManageClientSuspensions'.freeze,

      # TODO: Write general description for VIEWCLIENTPASTVISITS
      VIEWCLIENTPASTVISITS = 'ViewClientPastVisits'.freeze,

      # TODO: Write general description for VIEWCLIENTACCOUNTANDPURCHASEHISTORY
      VIEWCLIENTACCOUNTANDPURCHASEHISTORY = 'ViewClientAccountAndPurchaseHistory'.freeze,

      # TODO: Write general description for
      # EDITCLIENTSERVICEDURATIONANDASSIGNEDVISITS
      EDITCLIENTSERVICEDURATIONANDASSIGNEDVISITS = 'EditClientServiceDurationAndAssignedVisits'.freeze,

      # TODO: Write general description for EDITCLIENTSERVICESESSIONCOUNT
      EDITCLIENTSERVICESESSIONCOUNT = 'EditClientServiceSessionCount'.freeze,

      # TODO: Write general description for
      # IGNORESERVICECATEGORIESWHENREASSIGNINGPAYMENT
      IGNORESERVICECATEGORIESWHENREASSIGNINGPAYMENT = 'IgnoreServiceCategoriesWhenReassigningPayment'.freeze,

      # TODO: Write general description for VIEWCLIENTAUTOPAYSCHEDULES
      VIEWCLIENTAUTOPAYSCHEDULES = 'ViewClientAutoPaySchedules'.freeze,

      # TODO: Write general description for MANAGECLIENTAUTOPAYSCHEDULES
      MANAGECLIENTAUTOPAYSCHEDULES = 'ManageClientAutoPaySchedules'.freeze,

      # TODO: Write general description for VIEWCLIENTDOCUMENTS
      VIEWCLIENTDOCUMENTS = 'ViewClientDocuments'.freeze,

      # TODO: Write general description for ADDCLIENTDOCUMENTS
      ADDCLIENTDOCUMENTS = 'AddClientDocuments'.freeze,

      # TODO: Write general description for DELETECLIENTDOCUMENTS
      DELETECLIENTDOCUMENTS = 'DeleteClientDocuments'.freeze,

      # TODO: Write general description for VIEWCLIENTFUTUREVISITS
      VIEWCLIENTFUTUREVISITS = 'ViewClientFutureVisits'.freeze,

      # TODO: Write general description for VIEWCLIENTBILLINGINFORMATION
      VIEWCLIENTBILLINGINFORMATION = 'ViewClientBillingInformation'.freeze,

      # TODO: Write general description for EDITCLIENTBILLINGINFORMATION
      EDITCLIENTBILLINGINFORMATION = 'EditClientBillingInformation'.freeze,

      # TODO: Write general description for MANAGECLIENTLOGINS
      MANAGECLIENTLOGINS = 'ManageClientLogins'.freeze,

      # TODO: Write general description for UNASSIGNCLIENTGIFTCARDS
      UNASSIGNCLIENTGIFTCARDS = 'UnassignClientGiftCards'.freeze,

      # TODO: Write general description for IGNORECANCELLATIONPOLICY
      IGNORECANCELLATIONPOLICY = 'IgnoreCancellationPolicy'.freeze,

      # TODO: Write general description for LAUNCHSIGNINSCREEN
      LAUNCHSIGNINSCREEN = 'LaunchSignInScreen'.freeze,

      # TODO: Write general description for DELETEANDTERMINATECLIENTCONTRACTS
      DELETEANDTERMINATECLIENTCONTRACTS = 'DeleteAndTerminateClientContracts'.freeze,

      # TODO: Write general description for RELEASECONTRACTDEPOSITS
      RELEASECONTRACTDEPOSITS = 'ReleaseContractDeposits'.freeze,

      # TODO: Write general description for AUTORENEWANDSUSPENDCONTRACTS
      AUTORENEWANDSUSPENDCONTRACTS = 'AutoRenewAndSuspendContracts'.freeze,

      # TODO: Write general description for MANAGECLASSTESTS
      MANAGECLASSTESTS = 'ManageClassTests'.freeze,

      # TODO: Write general description for SCHEDULECLASSTESTS
      SCHEDULECLASSTESTS = 'ScheduleClassTests'.freeze,

      # TODO: Write general description for MANAGECLIENTREQUIREDFIELDS
      MANAGECLIENTREQUIREDFIELDS = 'ManageClientRequiredFields'.freeze,

      # TODO: Write general description for MANAGECLIENTALERTS
      MANAGECLIENTALERTS = 'ManageClientAlerts'.freeze,

      # TODO: Write general description for MANAGECLIENTTYPESANDCLIENTINDEXES
      MANAGECLIENTTYPESANDCLIENTINDEXES = 'ManageClientTypesAndClientIndexes'.freeze,

      # TODO: Write general description for MANAGECLIENTREFERRALTYPES
      MANAGECLIENTREFERRALTYPES = 'ManageClientReferralTypes'.freeze,

      # TODO: Write general description for MANAGECLIENTRELATIONSHIPTYPES
      MANAGECLIENTRELATIONSHIPTYPES = 'ManageClientRelationshipTypes'.freeze,

      # TODO: Write general description for MANAGECLIENTGENDERS
      MANAGECLIENTGENDERS = 'ManageClientGenders'.freeze,

      # TODO: Write general description for
      # CLIENTACQUISITIONANDANALYTICSDASHBOARDS
      CLIENTACQUISITIONANDANALYTICSDASHBOARDS = 'ClientAcquisitionAndAnalyticsDashboards'.freeze,

      # TODO: Write general description for VIEWRETENTIONMARKETINGDASHBOARD
      VIEWRETENTIONMARKETINGDASHBOARD = 'ViewRetentionMarketingDashboard'.freeze,

      # TODO: Write general description for EXPORTREPORTS
      EXPORTREPORTS = 'ExportReports'.freeze,

      # TODO: Write general description for MANAGETAGGEDCLIENTS
      MANAGETAGGEDCLIENTS = 'ManageTaggedClients'.freeze,

      # TODO: Write general description for STAFFPHONEBOOKREPORT
      STAFFPHONEBOOKREPORT = 'StaffPhoneBookReport'.freeze,

      # TODO: Write general description for SCHEDULEATAGLANCEREPORTFORALLSTAFF
      SCHEDULEATAGLANCEREPORTFORALLSTAFF = 'ScheduleAtAGlanceReportForAllStaff'.freeze,

      # TODO: Write general description for PERSONALSCHEDULEATAGLANCEREPORT
      PERSONALSCHEDULEATAGLANCEREPORT = 'PersonalScheduleAtAGlanceReport'.freeze,

      # TODO: Write general description for ATTENDANCEWITHREVENUEREPORT
      ATTENDANCEWITHREVENUEREPORT = 'AttendanceWithRevenueReport'.freeze,

      # TODO: Write general description for CANCELLATIONSREPORT
      CANCELLATIONSREPORT = 'CancellationsReport'.freeze,

      # TODO: Write general description for PERSONALCANCELLATIONSREPORT
      PERSONALCANCELLATIONSREPORT = 'PersonalCancellationsReport'.freeze,

      # TODO: Write general description for ACCOUNTBALANCESREPORT
      ACCOUNTBALANCESREPORT = 'AccountBalancesReport'.freeze,

      # TODO: Write general description for
      # BULKAUTOPAYSCHEDULINGFROMACCOUNTBALANCESREPORT
      BULKAUTOPAYSCHEDULINGFROMACCOUNTBALANCESREPORT = 'BulkAutoPaySchedulingFromAccountBalancesReport'.freeze,

      # TODO: Write general description for EVENTINVOICESREPORT
      EVENTINVOICESREPORT = 'EventInvoicesReport'.freeze,

      # TODO: Write general description for CASHDRAWERREPORTCURRENTDATE
      CASHDRAWERREPORTCURRENTDATE = 'CashDrawerReportCurrentDate'.freeze,

      # TODO: Write general description for CASHDRAWERREPORTANYDATE
      CASHDRAWERREPORTANYDATE = 'CashDrawerReportAnyDate'.freeze,

      # TODO: Write general description for DAILYCLOSEOUTREPORT
      DAILYCLOSEOUTREPORT = 'DailyCloseoutReport'.freeze,

      # TODO: Write general description for SALESREPORTS
      SALESREPORTS = 'SalesReports'.freeze,

      # TODO: Write general description for SALESBYSUPPLIERANDPRODUCTREPORTS
      SALESBYSUPPLIERANDPRODUCTREPORTS = 'SalesBySupplierAndProductReports'.freeze,

      # TODO: Write general description for PROMOTEFEESREPORT
      PROMOTEFEESREPORT = 'PromoteFeesReport'.freeze,

      # TODO: Write general description for GIFTCARDSREPORT
      GIFTCARDSREPORT = 'GiftCardsReport'.freeze,

      # TODO: Write general description for INVENTORYREPORTS
      INVENTORYREPORTS = 'InventoryReports'.freeze,

      # TODO: Write general description for MARKETINGREPORTS
      MARKETINGREPORTS = 'MarketingReports'.freeze,

      # TODO: Write general description for ANALYSISREPORTS
      ANALYSISREPORTS = 'AnalysisReports'.freeze,

      # TODO: Write general description for CLIENTINDEXESREPORTS
      CLIENTINDEXESREPORTS = 'ClientIndexesReports'.freeze,

      # TODO: Write general description for PAYROLLREPORTSFORALLSTAFF
      PAYROLLREPORTSFORALLSTAFF = 'PayrollReportsForAllStaff'.freeze,

      # TODO: Write general description for PERSONALPAYROLLREPORTS
      PERSONALPAYROLLREPORTS = 'PersonalPayrollReports'.freeze,

      # TODO: Write general description for STAFFPERFORMANCEREPORTS
      STAFFPERFORMANCEREPORTS = 'StaffPerformanceReports'.freeze,

      # TODO: Write general description for ONLINEMETRICSREPORT
      ONLINEMETRICSREPORT = 'OnlineMetricsReport'.freeze,

      # TODO: Write general description for RETENTIONMANAGEMENTREPORT
      RETENTIONMANAGEMENTREPORT = 'RetentionManagementReport'.freeze,

      # TODO: Write general description for ENTRYLOGSREPORT
      ENTRYLOGSREPORT = 'EntryLogsReport'.freeze,

      # TODO: Write general description for STAFFACTIVITYLOGREPORT
      STAFFACTIVITYLOGREPORT = 'StaffActivityLogReport'.freeze,

      # TODO: Write general description for MEMBERSHIPREPORT
      MEMBERSHIPREPORT = 'MembershipReport'.freeze,

      # TODO: Write general description for MANAGEONLINEORDERSREPORT
      MANAGEONLINEORDERSREPORT = 'ManageOnlineOrdersReport'.freeze,

      # TODO: Write general description for TASKSREPORT
      TASKSREPORT = 'TasksReport'.freeze,

      # TODO: Write general description for CLOCKSELFINANDOUT
      CLOCKSELFINANDOUT = 'ClockSelfInAndOut'.freeze,

      # TODO: Write general description for CLOCKOTHERSINANDOUT
      CLOCKOTHERSINANDOUT = 'ClockOthersInAndOut'.freeze,

      # TODO: Write general description for ACCESSTIMECLOCKREPORT
      ACCESSTIMECLOCKREPORT = 'AccessTimeclockReport'.freeze,

      # TODO: Write general description for MANAGETIMECLOCKS
      MANAGETIMECLOCKS = 'ManageTimeClocks'.freeze,

      # TODO: Write general description for MANAGETIMECLOCKTASKS
      MANAGETIMECLOCKTASKS = 'ManageTimeClockTasks'.freeze,

      # TODO: Write general description for MANAGECONTACTLOGTYPES
      MANAGECONTACTLOGTYPES = 'ManageContactLogTypes'.freeze,

      # TODO: Write general description for VIEWCONTACTLOGS
      VIEWCONTACTLOGS = 'ViewContactLogs'.freeze,

      # TODO: Write general description for ADDCONTACTLOGS
      ADDCONTACTLOGS = 'AddContactLogs'.freeze,

      # TODO: Write general description for EDITOTHERSTAFFMEMBERCONTACTLOGS
      EDITOTHERSTAFFMEMBERCONTACTLOGS = 'EditOtherStaffMemberContactLogs'.freeze,

      # TODO: Write general description for DELETECONTACTLOGS
      DELETECONTACTLOGS = 'DeleteContactLogs'.freeze,

      # TODO: Write general description for CONTACTLOGANALYSISREPORT
      CONTACTLOGANALYSISREPORT = 'ContactLogAnalysisReport'.freeze,

      # TODO: Write general description for SALESFORECASTREPORT
      SALESFORECASTREPORT = 'SalesForecastReport'.freeze,

      # TODO: Write general description for VIEWALLCLIENTS
      VIEWALLCLIENTS = 'ViewAllClients'.freeze,

      # TODO: Write general description for MANAGECLIENTSALESREPS
      MANAGECLIENTSALESREPS = 'ManageClientSalesReps'.freeze,

      # TODO: Write general description for CREATERETAILTICKETS
      CREATERETAILTICKETS = 'CreateRetailTickets'.freeze,

      # TODO: Write general description for EDITRETAILTICKETS
      EDITRETAILTICKETS = 'EditRetailTickets'.freeze,

      # TODO: Write general description for MANAGETASKASSIGNMENTS
      MANAGETASKASSIGNMENTS = 'ManageTaskAssignments'.freeze,

      # TODO: Write general description for MERCHANTACCOUNTREPORTS
      MERCHANTACCOUNTREPORTS = 'MerchantAccountReports'.freeze,

      # TODO: Write general description for VOIDCREDITCARDTRANSACTIONS
      VOIDCREDITCARDTRANSACTIONS = 'VoidCreditCardTransactions'.freeze,

      # TODO: Write general description for SETTLECREDITCARDTRANSACTIONS
      SETTLECREDITCARDTRANSACTIONS = 'SettleCreditCardTransactions'.freeze,

      # TODO: Write general description for USESTOREDCREDITCARDS
      USESTOREDCREDITCARDS = 'UseStoredCreditCards'.freeze,

      # TODO: Write general description for MANAGEAUTOPAYS
      MANAGEAUTOPAYS = 'ManageAutoPays'.freeze,

      # TODO: Write general description for VIEWPERSONALREVIEWS
      VIEWPERSONALREVIEWS = 'ViewPersonalReviews'.freeze,

      # TODO: Write general description for VIEWOTHERSREVIEWS
      VIEWOTHERSREVIEWS = 'ViewOthersReviews'.freeze,

      # TODO: Write general description for VIEWCLIENTNAMESONREVIEWREPORT
      VIEWCLIENTNAMESONREVIEWREPORT = 'ViewClientNamesOnReviewReport'.freeze,

      # TODO: Write general description for EMAILCLIENTSFROMREVIEWREPORT
      EMAILCLIENTSFROMREVIEWREPORT = 'EmailClientsFromReviewReport'.freeze,

      # TODO: Write general description for FLAGREVIEWFORREMOVAL
      FLAGREVIEWFORREMOVAL = 'FlagReviewForRemoval'.freeze,

      # TODO: Write general description for RESPONDPUBLICLYTOREVIEWS
      RESPONDPUBLICLYTOREVIEWS = 'RespondPubliclyToReviews'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ALLOWED_PERMISSION_ENUM.include?(value)
    end
  end
end
