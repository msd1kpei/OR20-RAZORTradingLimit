<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:client="http://xmlns.oracle.com/ARIS_KPEI_PROJECT_jws/OR20_RAZORTradingLimit/TradingLimitBPEL" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:imp1="http://www.kpei.co.id/razor/TradingLimit" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns3="http://www.kpei.co.id/razor/FreeCollateral/RMOL_write" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/file/ARIS-KPEI-PROJECT/OR20-RAZORTradingLimit/OR20_sendTradingLimit" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://www.kpei.co.id/middleware/outbound/tradingLimit" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl imp1 plt xsd wsdl tns client ns3 ns2 xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <imp1:kpeiOutbound>
         <imp1:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/imp1:kpeiOutbound/imp1:header/@id"/>
            </xsl:attribute>
            <imp1:asAt>
               <xsl:value-of select="/imp1:kpeiOutbound/imp1:header/imp1:asAt"/>
            </imp1:asAt>
            <imp1:sourceSystem>
               <xsl:value-of select="/imp1:kpeiOutbound/imp1:header/imp1:sourceSystem"/>
            </imp1:sourceSystem>
         </imp1:header>
         <imp1:body>
            <xsl:attribute name="type">
               <xsl:value-of select="/imp1:kpeiOutbound/imp1:body/@type"/>
            </xsl:attribute>
            <xsl:for-each select="/imp1:kpeiOutbound/imp1:body/imp1:response">
               <imp1:response>
                  <xsl:attribute name="market">
                     <xsl:value-of select="@market"/>
                  </xsl:attribute>
                  <xsl:attribute name="memberId">
                     <xsl:value-of select="@memberId"/>
                  </xsl:attribute>
                  <imp1:value>
                     <xsl:value-of select="imp1:value"/>
                  </imp1:value>
               </imp1:response>
            </xsl:for-each>
         </imp1:body>
      </imp1:kpeiOutbound>
   </xsl:template>
</xsl:stylesheet>
