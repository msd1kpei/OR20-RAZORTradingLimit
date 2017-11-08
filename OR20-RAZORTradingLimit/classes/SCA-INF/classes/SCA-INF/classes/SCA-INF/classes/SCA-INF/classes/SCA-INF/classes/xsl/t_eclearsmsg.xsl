<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.kpei.co.id/razor/TradingLimit" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://www.kpei.co.id/middleware/outbound/tradingLimit" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 nxsd xsd ns1 bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref bpmn ora socket ldap">
   <xsl:template match="/">
      <ns1:kpeiOutbound>
         <ns1:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/ns0:kpeiOutbound/ns0:header/@id"/>
            </xsl:attribute>
            <ns1:asAt>
               <xsl:value-of select="/ns0:kpeiOutbound/ns0:header/ns0:asAt"/>
            </ns1:asAt>
            <ns1:sourceSystem>
               <xsl:value-of select="/ns0:kpeiOutbound/ns0:header/ns0:sourceSystem"/>
            </ns1:sourceSystem>
         </ns1:header>
         <ns1:body>
            <xsl:if test="/ns0:kpeiOutbound/ns0:body/@type">
               <xsl:attribute name="type">
                  <xsl:value-of select="/ns0:kpeiOutbound/ns0:body/@type"/>
               </xsl:attribute>
            </xsl:if>
            <xsl:for-each select="/ns0:kpeiOutbound/ns0:body/ns0:response">
               <ns1:response>
                  <xsl:attribute name="market">
                     <xsl:value-of select="@market"/>
                  </xsl:attribute>
                  <xsl:attribute name="memberId">
                     <xsl:value-of select="@memberId"/>
                  </xsl:attribute>
                  <ns1:value>
                     <xsl:value-of select="ns0:value"/>
                  </ns1:value>
               </ns1:response>
            </xsl:for-each>
         </ns1:body>
      </ns1:kpeiOutbound>
   </xsl:template>
</xsl:stylesheet>
