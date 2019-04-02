# 
# Aruba "show mac-address xxxx-xxxx"
#
#                                                                    
# Status and Counters - Address Table - 00237d-97FFFF
#                                                                                             
# Port                            VLAN                                                        
# ------------------------------- ----                                                        
# 1/22                            164                                                         
#                                                                                             
#
Value VLAN (\S+)
Value PORT (\d+\/\d+)

Start
  ^\s+Port\s+VLAN
  ^\s+-\+
  ^\s+${PORT}\s+${VLAN} -> Record

EOF
