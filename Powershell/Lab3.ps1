get-ciminstance win32_networkadapterconfiguration | 
where-object ipenabled -eq 'True' | 
format-table @{n="ADPTDescription" ; width =25 ; e={$_.description}},
@{n="Index" ; e={$_.index}},
@{n="IPAddress" ; width = 25 ; e={$_.ipaddress}},
@{n="Subnetmask" ; width = 25 ; e={$_.ipsubnet}},
@{n="DNSDomain" ; width = 25 ; e={$_.DNSDomain}},
@{n="DNSServer" ; width = 25 ; e={$_.DNSServerSearchOrder}}
