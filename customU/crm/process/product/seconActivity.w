<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" xid="window" design="device:pc;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:463px;top:331px;"> 
    <div component="$UI/system/components/justep/data/bizData" xid="dialogData"
      autoLoad="true" autoNew="false" concept="CU_CPXX" columns=""
      isTree="true"> 
      <reader action="/custom/crm/logic/action/queryCU_CPXXAction"/>
      <treeOption parentRelation="fPARENT" nodeKindRelation=""
        rootFilter=""/>
    <filter name="filter0" xid="filter1"><![CDATA[fSFFL='']]></filter></div>
    <div component="$UI/system/components/justep/data/bizData" xid="searchData"
      autoLoad="true" autoNew="false" concept="CU_CPXX" isTree="false"> 
      <reader action="/custom/crm/logic/action/queryCU_CPXXAction"/> 
    </div>
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver" style="top:2px;left:606px;" onReceive="windowReceiverReceive"/>  
  <div component="$UI/system/components/justep/panel/panel" class="x-panel x-full"
    xid="panel1"> 
    <div class="x-panel-top" xid="top2"> 
      <div component="$UI/system/components/bootstrap/row/row" class="row"
        xid="row1"> 
        <div class="col col-xs-6 col-md-4" xid="col1"> 
          <div component="$UI/system/components/justep/smartFilter/smartFilter"
            xid="smartFilter1" filterData="dialogData" filterCols="fCPMC" onFilter="smartFilterFilter"> 
            <input type="text" class="form-control" placeholder="搜索" data-bind="valueUpdate: ['input', 'afterkeydown']"
              bind-value="$model.comp($element.parentElement).searchText" bind-change="$model.comp($element.parentElement).onInputChange.bind($model.comp($element.parentElement))"
              xid="input1"/> 
          </div> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content" xid="content1"> 
      <div style="height:100%;overflow-x: hidden;" bind-visible="!showFilterGird.get()" class="x-bordered"> 
        <div component="$UI/system/components/justep/grid/grid" appearance="tree"
          data="dialogData" expandColumn="fCPMC" useVirtualRoot="true"
          virtualRootLabel="产品信息" xid="treeGrid" class="x-grid-no-bordered"
          height="auto" width="100%" onRowClick="treeGridRowClick"> 
          <columns xid="columns2"> 
            <column name="fCPMC"/> 
          </columns> 
        </div>
      </div>  
      <div class="x-bordered" style="display:none;height:0;" bind-visible="showFilterGird"
        xid="searchDiv"> 
        <div component="$UI/system/components/justep/dataTables/dataTables"
          flexibleWidth="true" data="searchData" rowActiveClass="active" class="table"
          xid="searchGrid" scrollCollapse="false" ordering="false" lengthMenu="20"
          onRowSelect="searchGridRowSelect"> 
          <columns>
            <column name="fCPMC"/>
          </columns> 
        </div> 
      </div> 
    </div>  
    <div class="x-panel-bottom" xid="bottom1" height="42"> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label x-dialog-button"
        label="取消" xid="cancelBtn" onClick="{&quot;operation&quot;:&quot;windowReceiver.windowCancel&quot;}"> 
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