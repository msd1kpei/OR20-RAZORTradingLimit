<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:inp1="http://www.kpei.co.id/schema/RazorFreeCollateral" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:imp1="http://www.kpei.co.id/razor/FreeCollateral" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://oracle.com/sca/soapservice/MWSKD/MWSKD-17-NilaiValidasiCOLW/FreeCollateralSend" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/file/ARIS-KPEI-PROJECT/OR17-RAZORFreeCollateral/OR17_sendFreeCollateral" exclude-result-prefixes="xsi xsl imp1 plt wsdl xsd tns inp1 ns0 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
   <xsl:template match="/">
      <inp1:kpeiOutbound>
         <inp1:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/imp1:kpeiOutbound/imp1:header/@id"/>
            </xsl:attribute>
            <inp1:asAt>
               <xsl:value-of select="/imp1:kpeiOutbound/imp1:header/imp1:asAt"/>
            </inp1:asAt>
            <inp1:sourceSystem>
               <xsl:value-of select="/imp1:kpeiOutbound/imp1:header/imp1:sourceSystem"/>
            </inp1:sourceSystem>
            <inp1:filename>
               <xsl:value-of select="/imp1:kpeiOutbound/imp1:header/imp1:filename"/>
            </inp1:filename>
         </inp1:header>
         <inp1:body>
            <xsl:if test="/imp1:kpeiOutbound/imp1:body/@type">
               <xsl:attribute name="type">
                  <xsl:value-of select="/imp1:kpeiOutbound/imp1:body/@type"/>
               </xsl:attribute>
            </xsl:if>
            <xsl:for-each select="/imp1:kpeiOutbound/imp1:body/imp1:response">
               <inp1:response>
                  <xsl:attribute name="market">
                     <xsl:value-of select="@market"/>
                  </xsl:attribute>
                  <xsl:attribute name="memberId">
                     <xsl:value-of select="@memberId"/>
                  </xsl:attribute>
                  <inp1:value>
                     <xsl:value-of select="imp1:value"/>
                  </inp1:value>
               </inp1:response>
            </xsl:for-each>
         </inp1:body>
      </inp1:kpeiOutbound>
   </xsl:template>
</xsl:stylesheet>
