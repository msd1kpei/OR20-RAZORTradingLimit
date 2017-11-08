<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://www.kpei.co.id/razor/TradingLimit" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:tns="http://www.kpei.co.id/MemberInterface" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 nxsd xsd tm soap12 soapenc soap mime wsdl tns http xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <tns:SetClearingMemberLimit>
         <tns:header>
            <tns:asAt>
               <xsl:value-of select="/ns0:kpeiOutbound/ns0:header/ns0:asAt"/>
            </tns:asAt>
            <tns:source>
               <xsl:value-of select="/ns0:kpeiOutbound/ns0:header/ns0:sourceSystem"/>
            </tns:source>
            <tns:id>
               <xsl:value-of select="/ns0:kpeiOutbound/ns0:header/@id"/>
            </tns:id>
         </tns:header>
         <tns:body>
            <tns:clearingMemberLimitCollection>
               <xsl:for-each select="/ns0:kpeiOutbound/ns0:body/ns0:response">
                  <tns:clearingMemberLimit>
                     <tns:clearingMemberId>
                        <xsl:value-of select="@memberId"/>
                     </tns:clearingMemberId>
                     <tns:market>
                        <xsl:value-of select="@market"/>
                     </tns:market>
                     <tns:tradingLimit>
                        <xsl:value-of select="ns0:value"/>
                     </tns:tradingLimit>
                     <tns:effectiveCollatral>
                        <xsl:text disable-output-escaping="no"/>
                     </tns:effectiveCollatral>
                     <tns:blockedCollateral>
                        <xsl:text disable-output-escaping="no"/>
                     </tns:blockedCollateral>
                     <tns:freeCollateral>
                        <xsl:text disable-output-escaping="no"/>
                     </tns:freeCollateral>
                  </tns:clearingMemberLimit>
               </xsl:for-each>
            </tns:clearingMemberLimitCollection>
         </tns:body>
      </tns:SetClearingMemberLimit>
   </xsl:template>
</xsl:stylesheet>
