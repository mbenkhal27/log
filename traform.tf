provider "vra7" {
	username=""
	password = ""
	tenant = ""
	host = ""
	insecure = "true"
}

resource "vra7_resource" "RHEL_6_Full_Support" {
    catalog_name="RHEL 6 Full-Support"
	resource_configuration {
		RHEL_6_Full_Support.Optum.Environment="DEV"
		RHEL_6_Full_Support.Optum.Interface.Zone="Intranet"
		RHEL_6_Full_Support.Optum.Network.Zone="intranet"
		RHEL_6_Full_Support.cpu = "2"
		RHEL_6_Full_Support.memory = "4096"
		RHEL_6_Full_Support.Optum.Server.Type = "APP"
		RHEL_6_Full_Support.Optum.VMDKSize="64"
		RHEL_6_Full_Support.Optum.DataCenter = "CTC"
		RHEL_6_Full_Support.Optum.UnixID.Search = "mbenk"
		RHEL_6_Full_Support.Optum.UnixID.SearchResult = "mbenkhal"
	}
    RHEL_6_Full_Support.count = 1
	catalog_configuration {
		RHEL_6_Full_Support.Optum.rules.use.agreement = "yes"
		RHEL_6_Full_Support.lease_days = ""
	}
}