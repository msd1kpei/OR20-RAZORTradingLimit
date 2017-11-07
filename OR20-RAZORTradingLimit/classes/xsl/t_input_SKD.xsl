<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns0="http://www.kpei.co.id/schema/TradingLimit" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:ns2="http://www.kpei.co.id/schema/Extension" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://www.kpei.co.id/schema/Header" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 ns2 xsd ns1 bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns0:TradingLimit>
         <ns0:header>
            <xsl:if test="/ns0:TradingLimit/ns0:header/@id">
               <xsl:attribute name="id">
                  <xsl:value-of select="/ns0:TradingLimit/ns0:header/@id"/>
               </xsl:attribute>
            </xsl:if>
            <ns1:asAt>
               <xsl:value-of select="/ns0:TradingLimit/ns0:header/ns1:asAt"/>
            </ns1:asAt>
            <ns1:source>
               <xsl:value-of select="/ns0:TradingLimit/ns0:header/ns1:source"/>
            </ns1:source>
         </ns0:header>
         <ns0:body>
            <xsl:for-each select="/ns0:TradingLimit/ns0:body/ns0:TradingLimitItem">
               <ns0:TradingLimitItem>
                  <ns0:firmId>
                     <xsl:value-of select="ns0:firmId"/>
                  </ns0:firmId>
                  <ns0:market>
                     <xsl:value-of select="ns0:market"/>
                  </ns0:market>
                  <xsl:if test="ns0:value">
                     <ns0:value>
                        <xsl:value-of select="ns0:value"/>
                     </ns0:value>
                  </xsl:if>
                  <xsl:if test="ns0:clientList">
                     <ns0:clientList>
                        <xsl:for-each select="ns0:clientList/ns0:client">
                           <ns0:client>
                              <ns0:SID>
                                 <xsl:value-of select="ns0:SID"/>
                              </ns0:SID>
                              <ns0:value>
                                 <xsl:value-of select="ns0:value"/>
                              </ns0:value>
                           </ns0:client>
                        </xsl:for-each>
                     </ns0:clientList>
                  </xsl:if>
               </ns0:TradingLimitItem>
            </xsl:for-each>
         </ns0:body>
         <ns0:ext>
            <xsl:if test="/ns0:TradingLimit/ns0:ext/ns2:value">
               <xsl:for-each select="/ns0:TradingLimit/ns0:ext/ns2:value">
                  <ns2:value>
                     <xsl:if test="@id">
                        <xsl:attribute name="id">
                           <xsl:value-of select="@id"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="."/>
                  </ns2:value>
               </xsl:for-each>
            </xsl:if>
         </ns0:ext>
      </ns0:TradingLimit>
   </xsl:template>
</xsl:stylesheet>
