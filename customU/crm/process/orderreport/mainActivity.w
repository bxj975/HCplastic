<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/reportData/reportData" xid="p1"> 
      <source xid="default1"><action xid="default2" name="jlorderAction" type="ksqlaction"></action></source> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="selectData" idColumn="date" autoNew="true">
      <column label="date" name="date" type="Date" xid="xid1"/>
    </div> 
  </div>
    <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter"
    xid="toolBar1"> 
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      onClick="{'operation':'report1.pageSetup'}" xid="button1"> 
      <i xid="i1"/>  
      <span xid="span1"/> 
    </a>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      onClick="{'operation':'report1.preview'}" xid="button2"> 
      <i xid="i2"/>  
      <span xid="span2"/> 
    </a>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      onClick="{'operation':'report1.print'}" xid="button3"> 
      <i xid="i3"/>  
      <span xid="span3"/> 
    </a>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      onClick="{'operation':'report1.exportWord'}" xid="button5"> 
      <i xid="i5"/>  
      <span xid="span5"/> 
    </a>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
      onClick="{'operation':'report1.exportExcel'}" xid="button6"> 
      <i xid="i6"/>  
      <span xid="span6"/> 
    </a>  
    <input component="$UI/system/components/justep/input/input" class="form-control"
      xid="input1" bind-ref="$model.selectData.ref(&quot;date&quot;)"/>  
    <a component="$UI/system/components/justep/button/button" class="btn btn-link"
      label="确定" xid="button4" onClick="button4Click"> 
      <i xid="i4"/>  
      <span xid="span4">确定</span>
    </a>
  </div>   
  <div component="$UI/system/components/justep/report/report" src="fhorder_xls.xml" reportName="report"
    autoLoad="true" dataList="" class="x-report x-scroll-h" xid="report1"/> 
</div>
