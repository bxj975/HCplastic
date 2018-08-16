<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:489px;left:390px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/bizData" xid="treeData"
      autoLoad="true" autoNew="false" concept="CU_KHXX" columns="" isTree="true" onValueChanged="treeDataValueChanged"> 
      <writer xid="default1" action="/custom/crm/logic/action/saveCU_KHXXAction"/>  
      <creator xid="default2" action="/custom/crm/logic/action/createCU_KHXXAction"/>  
      <reader action="/custom/crm/logic/action/queryCU_KHXXAction"/>  
      <treeOption parentRelation="fPARENT" nodeKindRelation="fSFFL" rootFilter=""/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    src="$UI/custom/crm/process/custom/secondActivity.w" status="normal"> 
    <result concept="treeData" operation="modify" origin="dialogData" xid="default3"> 
      <mapping from="CU_KHXX" to="fPARENT" xid="default4"/> 
    </result> 
  </span>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver" style="top:2px;left:606px;" onReceive="windowReceiverReceive"/>  
  <div class="container-fluid" xid="view"> 
    <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar form-inline x-toolbar-spliter"
      xid="toolBar1"> 
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        onClick="{'operation':'treeData.new'}" xid="button3"> 
        <i xid="i3"/>  
        <span xid="span3"/> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        onClick="{'operation':'treeData.save'}" xid="button1"> 
        <i xid="i1"/>  
        <span xid="span1"/> 
      </a>  
     
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        onClick="{'operation':'treeData.delete'}" xid="button2"> 
        <i xid="i2"/>  
        <span xid="span2"/> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        onClick="{'operation':'treeData.newChild'}" xid="button4"> 
        <i xid="i4"/>  
        <span xid="span4"/> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        onClick="{'operation':'treeData.newBrother'}" xid="button5"> 
        <i xid="i5"/>  
        <span xid="span5"/> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link"
        label="移动" xid="moveBtn" icon="linear linear-linespacing" onClick="moveBtnClick"> 
        <i xid="i6" class="linear linear-linespacing"/>  
        <span xid="span6">移动</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link"
        label="一级" xid="firstBtn" onClick="firstBtnClick" icon="linear linear-location"> 
        <i xid="i8" class="linear linear-location"/>  
        <span xid="span8">一级</span> 
      </a>  
       <a component="$UI/system/components/justep/button/button" class="btn btn-link "
        label="确定" xid="OKBtn" onClick="OKBtnClick" bind-enable="canOK"> 
        <i xid="i1"/>  
        <span xid="span1">确定</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label "
        label="取消" xid="cancelBtn" onClick="{&quot;operation&quot;:&quot;windowReceiver.windowCancel&quot;}"> 
        <i xid="i2"/>  
        <span xid="span2">取消</span> 
      </a>  
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        onClick="{'operation':'treeData.refresh'}" xid="button7"> 
        <i xid="i7"/>  
        <span xid="span7"/> 
      </a>  
      <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox"
        xid="checkbox1" label="编辑" checkedValue="是" uncheckedValue="否" checked="false"
        onChange="checkbox1Change"/>  
      <input xid="seekInput" class="form-control" component="$UI/system/components/justep/input/input"
        style="width:139px;" valueUpdateMode="input"/> 
    </div>  
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1"> 
      <div class="col col-xs-3" xid="col1" style="overflow: auto;"> 
        <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
          altRows="true" class="x-grid-no-bordered" xid="grid2" data="treeData" directEdit="false"
          height="auto" width="100%" appearance="tree" expandColumn="fKHMC" virtualRootLabel="客户信息"
          useVirtualRoot="true" onRowSelect="grid2RowSelect"> 
          <columns xid="columns2"> 
            <column name="fKHMC" xid="column1"/> 
          </columns> 
        </div> 
      </div>  
      <div class="col col-xs-9 col-spliter-left" xid="col2"> 
        <div xid="mainForm" class="form-horizontal" component="$UI/system/components/bootstrap/form/form"
          style="margin:30px 10px"> 
          <div xid="formGroup1" class="form-group"> 
            <div xid="col11" class="col-sm-2"> 
              <label xid="versionL" class="control-label" bind-text="treeData.label('version')"/> 
            </div>  
            <div xid="col12" class="col-sm-10"> 
              <input xid="version" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('version')" readonly="true"/> 
            </div> 
          </div>  
          <div xid="formGroup2" class="form-group"> 
            <div xid="col21" class="col-sm-2"> 
              <label xid="fKHBML" class="control-label" bind-text="treeData.label('fKHBM')"/> 
            </div>  
            <div xid="col22" class="col-sm-10"> 
              <input xid="fKHBM" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fKHBM')"/> 
            </div> 
          </div>  
          <div xid="formGroup3" class="form-group"> 
            <div xid="col31" class="col-sm-2"> 
              <label xid="fKHMCL" class="control-label" bind-text="treeData.label('fKHMC')"/> 
            </div>  
            <div xid="col32" class="col-sm-10"> 
              <input xid="fKHMC" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fKHMC')"/> 
            </div> 
          </div>  
          <div xid="formGroup5" class="form-group"> 
            <div xid="col51" class="col-sm-2"> 
              <label xid="fLXRL" class="control-label" bind-text="treeData.label('fLXR')"/> 
            </div>  
            <div xid="col52" class="col-sm-10"> 
              <input xid="fLXR" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fLXR')"/> 
            </div> 
          </div>  
          <div xid="formGroup6" class="form-group"> 
            <div xid="col61" class="col-sm-2"> 
              <label xid="fLXDHL" class="control-label" bind-text="treeData.label('fLXDH')"/> 
            </div>  
            <div xid="col62" class="col-sm-10"> 
              <input xid="fLXDH" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fLXDH')"/> 
            </div> 
          </div>  
          <div xid="formGroup7" class="form-group"> 
            <div xid="col71" class="col-sm-2"> 
              <label xid="fYDDHL" class="control-label" bind-text="treeData.label('fYDDH')"/> 
            </div>  
            <div xid="col72" class="col-sm-10"> 
              <input xid="fYDDH" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fYDDH')"/> 
            </div> 
          </div>  
          <div xid="formGroup8" class="form-group"> 
            <div xid="col81" class="col-sm-2"> 
              <label xid="fLXQQL" class="control-label" bind-text="treeData.label('fLXQQ')"/> 
            </div>  
            <div xid="col82" class="col-sm-10"> 
              <input xid="fLXQQ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fLXQQ')"/> 
            </div> 
          </div>  
          <div xid="formGroup9" class="form-group"> 
            <div xid="col91" class="col-sm-2"> 
              <label xid="fLXWXL" class="control-label" bind-text="treeData.label('fLXWX')"/> 
            </div>  
            <div xid="col92" class="col-sm-10"> 
              <input xid="fLXWX" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fLXWX')"/> 
            </div> 
          </div>  
          <div xid="formGroup10" class="form-group"> 
            <div xid="col101" class="col-sm-2"> 
              <label xid="fSHDZL" class="control-label" bind-text="treeData.label('fSHDZ')"/> 
            </div>  
            <div xid="col102" class="col-sm-10"> 
              <input xid="fSHDZ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fSHDZ')"/> 
            </div> 
          </div>  
          <div xid="formGroup11" class="form-group"> 
            <div xid="col111" class="col-sm-2"> 
              <label xid="fBZL" class="control-label" bind-text="treeData.label('fBZ')"/> 
            </div>  
            <div xid="col112" class="col-sm-10"> 
              <input xid="fBZ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fBZ')"/> 
            </div> 
          </div>  
          <div xid="formGroup4" class="form-group"> 
            <div xid="col41" class="col-sm-2"> 
              <label xid="fJSFSL" class="control-label" bind-text="treeData.label('fJSFS')"/> 
            </div>  
            <div xid="col42" class="col-sm-10"> 
              <input xid="fJSFS" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="$model.treeData.ref(&quot;fJSFS&quot;)" readonly="true"/> 
            </div> 
          </div>  
          <div xid="formGroup12" class="form-group"> 
            <div xid="col121" class="col-sm-2"> 
              <label xid="fGZRL" class="control-label" bind-text="treeData.label('fGZR')"/> 
            </div>  
            <div xid="col122" class="col-sm-10"> 
              <input xid="fGZR" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fGZR')" readonly="true"/> 
            </div> 
          </div>  
          <div xid="formGroup14" class="form-group"> 
            <div xid="col141" class="col-sm-2"> 
              <label xid="fWHSJL" class="control-label" bind-text="treeData.label('fWHSJ')"/> 
            </div>  
            <div xid="col142" class="col-sm-10"> 
              <input xid="fWHSJ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fWHSJ')" readonly="true"/> 
            </div> 
          </div>  
          <div xid="formGroup15" class="form-group"> 
            <div xid="col151" class="col-sm-2"> 
              <label xid="fWHRL" class="control-label" bind-text="treeData.label('fWHR')"/> 
            </div>  
            <div xid="col152" class="col-sm-10"> 
              <input xid="fWHR" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fWHR')" readonly="true"/> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
