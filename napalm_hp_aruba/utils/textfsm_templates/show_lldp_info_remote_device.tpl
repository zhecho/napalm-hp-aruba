# 
# Aruba "show lldp info remote-device PORT"
#
#
# LLDP Remote Device Information Detail                                                                     
#                                                                                                           
#  Local Port   : 1/22                                                                                      
#  ChassisType  : network-address                                                                           
#  ChassisId    : 10.107.164.216                                                                            
#  PortType     : mac-address                                                                               
#  PortId       : 00 90 8f aa ff ff
#  SysName      : 405HD-00908ffffff
#  System Descr : AUDC/3.1.2.89 AUDC-IPPhone-405HD_UC_3.1.2.89/11                                           
#  PortDescr    : e
#  Pvid         :                                                                                           
#                                                                                                           
#  System Capabilities Supported  : bridge, telephone                                                       
#  System Capabilities Enabled    : bridge, telephone                                                       
#                                                                                                           
#  Remote Management Address                                                                                
#     Type    : ipv4                                                                                        
#     Address : 10.107.164.216                                                                              
#                                                                                                           
#  MED Information Detail                                                                                   
#    EndpointClass          :Class3                                                                         
#    Media Policy Vlan id   :0                                                                              
#    Media Policy Priority  :0                                                                              
#    Media Policy Dscp      :0                                                                              
#    Media Policy Tagged    :False                                                                          
#    Poe Device Type        :PD                                                                             
#    Power Requested        :3.8 W                                                                          
#    Power Source           :Local & PSE                                                                    
#    Power Priority         :Unknown                                                                        
#                                                                                                           
#
Value LOCAL_PORT (\S+)
Value CHASSIS_TYPE (\S+)
Value CHASSIS_ID (.*)
Value PORT_TYPE (\S+)
Value PORT_ID (.*)
Value SYSTEM_NAME (.*)
Value SYSTEM_DESCRIPTION (.*)
Value PORT_DESCRIPTION (.*)
Value SYSTEM_CAPABILITIES_SUPPORTED (\S+)
Value SYSTEM_CAPABILITIES_ENABLED (\S+)
Value REMOTE_MGMT_IP_FAMILY (\S+)
Value REMOTE_MGMT_IP (\d+.\d+.\d+.\d+.)

Start
  ^\s+Local\s+Port\s+\:\s+${LOCAL_PORT}
  ^\s+ChassisType\s+\:\s+${CHASSIS_TYPE}
  ^\s+ChassisId\s+\:\s+${CHASSIS_ID}
  ^\s+PortType\s+\:\s+${PORT_TYPE}
  ^\s+PortId\s+\:\s+${PORT_ID}
  ^\s+SysName\s+\:\s+${SYSTEM_NAME}
  ^\s+System\s+Descr\s+\:\s+${SYSTEM_DESCRIPTION}
  ^\s+PortDescr\s+\:\s+${PORT_DESCRIPTION}
  ^\s+System\s+Capabilities\s+Supported\s+\:\s+${SYSTEM_CAPABILITIES_SUPPORTED}
  ^\s+System\s+Capabilities\s+Enabled\s+\:\s+${SYSTEM_CAPABILITIES_ENABLED}
  ^\s+Remote\s+Management\s+address
  ^\s+Type\s+\:\s+${REMOTE_MGMT_IP_FAMILY}
  ^\s+Address\s+\:\s+${REMOTE_MGMT_IP} -> Record

EOF
