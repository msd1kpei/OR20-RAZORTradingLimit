<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns0="http://xmlns.oracle.com/bam" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:tns="http://xmlns.oracle.com/bpel/sensor" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:sensor="http://www.kpei.co.id/razor/TradingLimit" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl tns sensor nxsd xsd ns0 xsi xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns0:_OrchestrationStateCollection>
         <ns0:_OrchestrationState>
            <ns0:_messageName>
               <xsl:text disable-output-escaping="no">OR20-RAZORTradingLimit</xsl:text>
            </ns0:_messageName>
            <ns0:_compositeInstanceId>
               <xsl:value-of select="/tns:actionData/tns:header/tns:compositeInstanceId"/>
            </ns0:_compositeInstanceId>
            <ns0:_componentName>
               <xsl:value-of select="/tns:actionData/tns:header/tns:componentName"/>
            </ns0:_componentName>
            <ns0:_startTime>
               <xsl:value-of select="/tns:actionData/tns:header/tns:timestamp"/>
            </ns0:_startTime>
            <ns0:_state>
               <xsl:text disable-output-escaping="no">1. Initialization</xsl:text>
            </ns0:_state>
            <ns0:_messageType>
               <xsl:text disable-output-escaping="no">Insert</xsl:text>
            </ns0:_messageType>
         </ns0:_OrchestrationState>
      </ns0:_OrchestrationStateCollection>
   </xsl:template>
</xsl:stylesheet>
