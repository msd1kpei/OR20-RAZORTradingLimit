<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:client="http://xmlns.oracle.com/ARIS_KPEI_PROJECT_jws/OR20_RAZORTradingLimit/TradingLimitBPEL" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns5="http://www.kpei.co.id/schema/TradingLimit" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns3="http://www.kpei.co.id/razor/FreeCollateral/RMOL_write" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns1="http://www.kpei.co.id/schema/Header" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://oracle.com/sca/soapservice/ARIS-KPEI-PROJECT/OR20-RAZORTradingLimit/OR20_RAZORTradingLimit" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns2="http://www.kpei.co.id/middleware/outbound/tradingLimit" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:inp1="http://www.kpei.co.id/razor/TradingLimit" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns0="http://www.kpei.co.id/schema/Extension" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns4="http://schemas.oracle.com/bpel/extension" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl wsdl tns inp1 xsd client ns5 plnk ns3 ns1 ns2 ns0 ns4 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <inp1:kpeiOutbound>
         <inp1:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/inp1:kpeiOutbound/inp1:header/@id"/>
            </xsl:attribute>
            <inp1:asAt>
               <xsl:value-of select="/inp1:kpeiOutbound/inp1:header/inp1:asAt"/>
            </inp1:asAt>
            <inp1:sourceSystem>
               <xsl:value-of select="/inp1:kpeiOutbound/inp1:header/inp1:sourceSystem"/>
            </inp1:sourceSystem>
         </inp1:header>
         <inp1:body>
            <xsl:if test="/inp1:kpeiOutbound/inp1:body/@type">
               <xsl:attribute name="type">
                  <xsl:value-of select="/inp1:kpeiOutbound/inp1:body/@type"/>
               </xsl:attribute>
            </xsl:if>
            <xsl:for-each select="/inp1:kpeiOutbound/inp1:body/inp1:response">
               <inp1:response>
                  <xsl:attribute name="market">
                     <xsl:value-of select="@market"/>
                  </xsl:attribute>
                  <xsl:attribute name="memberId">
                     <xsl:value-of select="@memberId"/>
                  </xsl:attribute>
                  <inp1:value>
                     <xsl:value-of select="inp1:value"/>
                  </inp1:value>
               </inp1:response>
            </xsl:for-each>
         </inp1:body>
      </inp1:kpeiOutbound>
   </xsl:template>
</xsl:stylesheet>
