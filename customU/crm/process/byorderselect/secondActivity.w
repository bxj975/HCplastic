<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" xid="window" design="device:pc;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:463px;top:331px;" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/bizData" xid="dialogData"
      autoLoad="true" autoNew="false" concept="CU_KHXX" columns="" isTree="false"> 
      <reader action="/custom/crm/logic/action/queryCU_KHXXAction"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver" style="top:2px;left:606px;" onReceive="windowReceiverReceive"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    src="$UI/custom/crm/process/custom/mainActivity.w">
    
  <result concept="dialogData" operation="edit" origin="mainData" xid="default1">
   <mapping from="CU_KHXX" to="CU_KHXX" xid="default2"></mapping>
   <mapping from="fKHBM" to="fKHBM" xid="default3"></mapping>
   <mapping from="fKHMC" to="fKHMC" xid="default4"></mapping></result></span>
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top2"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row"
        xid="row1"> 
        <div class="col col-xs-6 col-md-4" xid="col1"> 
          <div component="$UI/system/components/justep/smartFilter/smartFilter"
            xid="smartFilter1" filterData="dialogData" filterCols="fKHBM,fKHMC,fYDDH,fGZR"> 
            <input type="text" class="form-control" placeholder="搜索" data-bind="valueUpdate: ['input', 'afterkeydown']"
              bind-value="$model.comp($element.parentElement).searchText" bind-change="$model.comp($element.parentElement).onInputChange.bind($model.comp($element.parentElement))"
              xid="input1"/> 
          </div> 
        </div>  
        <div class="col col-xs-6 col-md-8" xid="col3"> 
          <div component="$UI/system/components/justep/button/buttonGroup"
            class="btn-group pull-right" tabbed="true" xid="buttonGroup2"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
              xid="preBtn" onClick='{"operation":"dialogData.prevPage"}' icon="icon-ios7-arrow-back"> 
              <i xid="i5" class="icon-ios7-arrow-back"/>  
              <span xid="span5">上页</span> 
            </a>  
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
              xid="nextBtn" onClick='{"operation":"dialogData.nextPage"}' icon="icon-ios7-arrow-forward"> 
              <i xid="i6" class="icon-ios7-arrow-forward"/>  
              <span xid="span6">下页</span> 
            </a> 
          </div>  
          </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div class="x-bordered" style="height:100%;" xid="searchDiv"> 
        <div component="$UI/system/components/justep/dataTables/dataTables"
          flexibleWidth="true" data="dialogData" rowActiveClass="active" class="table"
          xid="dataTables" scrollCollapse="false" ordering="false" lengthMenu="20"
          onRowSelect="dataTablesRowSelect" onRowDblClick="dataTablesRowDblClick"> 
          <columns> 
            <column name="fKHBM"/>  
            <column name="fKHMC"/>  
            <column name="fZYMC"/> 
          </columns> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1" height="42"> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label x-dialog-button"
        label="取消" xid="cancelBtn" onClick='{"operation":"windowReceiver.windowCancel"}'> 
        <i xid="i2"/>  
        <span xid="span2">取消</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-primary x-dialog-button"
        label="确定" xid="OKBtn" onClick="OKBtnClick" bind-enable="canOK"> 
        <i xid="i1"/>  
        <span xid="span1">确定</span> 
      </a> 
    </div> 
  </div> 
</div>
