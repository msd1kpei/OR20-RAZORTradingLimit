<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://www.kpei.co.id/razor/FreeCollateral/RMOL_write" xmlns:ns0="http://www.kpei.co.id/razor/FreeCollateral" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl nxsd ns0 xsd tns xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <tns:records>
         <xsl:for-each select="/ns0:kpeiOutbound/ns0:body/ns0:responses/ns0:response">
            <xsl:if test="contains(@market,'Derivatives')">
               <tns:record>
                  <tns:asAt>
                     <xsl:value-of select="@asAt"/>
                  </tns:asAt>
                  <tns:memberCode>
                     <xsl:value-of select="@memberId"/>
                  </tns:memberCode>
                  <tns:freeCollateral>
                     <xsl:value-of select="ns0:value"/>
                  </tns:freeCollateral>
               </tns:record>
            </xsl:if>
         </xsl:for-each>
      </tns:records>
   </xsl:template>
</xsl:stylesheet>
