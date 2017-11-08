<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:ns1="http://www.kpei.co.id/schema/ExpandableVariable" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns2="http://www.kpei.co.id/schema/Header" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns0="http://www.kpei.co.id/razor/FreeCollateral" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://www.kpei.co.id/service/FreeCollateralDerivativeSend" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:inp1="http://www.kpei.co.id/schema/FreeCollateral" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 nxsd xsd ns1 ns2 wsdl tns inp1 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <inp1:FreeCollateral>
         <inp1:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/ns0:kpeiOutbound/ns0:header/@id"/>
            </xsl:attribute>
            <ns2:asAt>
               <xsl:value-of select="concat(xp20:format-dateTime(xp20:current-dateTime(),&quot;[Y0001]-[M01]-[D01]T[H01]:[m01]:[s01]&quot;),&quot;Z&quot;)"/>
            </ns2:asAt>
            <ns2:source>
               <xsl:value-of select="/ns0:kpeiOutbound/ns0:header/ns0:sourceSystem"/>
            </ns2:source>
         </inp1:header>
         <inp1:body>
            <xsl:for-each select="/ns0:kpeiOutbound/ns0:body/ns0:response[contains(@market, 'Derivative') = true()]">
               <inp1:freeCollateralItem>
                  <inp1:firmId>
                     <xsl:value-of select="@memberId"/>
                  </inp1:firmId>
                  <inp1:market>
                     <xsl:value-of select="@market"/>
                  </inp1:market>
                  <inp1:value>
                     <xsl:value-of select="ns0:value"/>
                  </inp1:value>
               </inp1:freeCollateralItem>
            </xsl:for-each>
         </inp1:body>
      </inp1:FreeCollateral>
   </xsl:template>
</xsl:stylesheet>
