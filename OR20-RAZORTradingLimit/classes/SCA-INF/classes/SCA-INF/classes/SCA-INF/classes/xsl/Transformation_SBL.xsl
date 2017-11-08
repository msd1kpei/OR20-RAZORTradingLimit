<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://www.kpei.co.id/razor/FreeCollateral" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/ARIS-KPEI-PROJECT/OR17-RAZORFreeCollateral/MidPoolLimitSBL" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl nxsd ns0 xsd plt wsdl tns bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <kpeiOutbound>
         <header>
            <xsl:attribute name="id">
               <xsl:value-of select="/ns0:kpeiOutbound/ns0:header/@id"/>
            </xsl:attribute>
            <asAt>
               <xsl:value-of select="/ns0:kpeiOutbound/ns0:header/ns0:asAt"/>
            </asAt>
            <sourceSystem>
               <xsl:value-of select="/ns0:kpeiOutbound/ns0:header/ns0:sourceSystem"/>
            </sourceSystem>
         </header>
         <body>
            <xsl:if test="/ns0:kpeiOutbound/ns0:body/@type">
               <xsl:attribute name="type">
                  <xsl:text disable-output-escaping="no">AvailableMargin</xsl:text>
               </xsl:attribute>
            </xsl:if>
            <xsl:for-each select="/ns0:kpeiOutbound/ns0:body/ns0:response">
               <response>
                  <xsl:attribute name="market">
                     <xsl:text disable-output-escaping="no">SBL</xsl:text>
                  </xsl:attribute>
                  <xsl:attribute name="memberId">
                     <xsl:value-of select="@memberId"/>
                  </xsl:attribute>
                  <value>
                     <xsl:value-of select="ns0:value"/>
                  </value>
               </response>
            </xsl:for-each>
         </body>
      </kpeiOutbound>
   </xsl:template>
</xsl:stylesheet>
