<?xml version="1.0" encoding="utf-8"?>

<model xmlns="http://www.justep.com/model" xmlns:m="http://www.justep.com/model">  
  <procedure name="deleteProcedure" code-model="/custom/crm/logic/code" code="Crm.delete"> 
    <parameter name="danjuID" type="String"/> 
  </procedure>  
  <procedure name="moveProcedure" code-model="/custom/crm/logic/code" code="Crm.move"> 
    <parameter name="customID" type="String"/>  
    <parameter name="clerkID" type="String"/> 
  </procedure>  
  <procedure name="personIDProcedure" code-model="/custom/crm/logic/code" code="Crm.personID"> 
    <parameter name="personName" type="String"/> 
  </procedure>  
  <procedure name="oneMoveProcedure" code-model="/custom/crm/logic/code" code="Crm.oneMove"> 
    <parameter name="customID" type="String"/>  
    <parameter name="clerkID" type="String"/> 
  </procedure>  
  <procedure name="twoMoveProcedure" code-model="/custom/crm/logic/code" code="Crm.twoMove"> 
    <parameter name="customID" type="String"/> 
  </procedure>  
  <procedure name="priceProcedure" code-model="/custom/crm/logic/code" code="Crm.price"> 
    <parameter name="productID" type="String"/>  
    <parameter name="price" type="Decimal"/> 
  </procedure>  
  <procedure name="printProcedure" code-model="/custom/crm/logic/code" code="Crm.print">
    <parameter name="date" type="Date"/>
    <parameter name="type" type="String"/>
  </procedure>
</model>
