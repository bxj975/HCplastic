<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:678px;left:457px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/bizData" xid="treeData"
      autoLoad="true" autoNew="false" concept="CU_CPXX" columns="" isTree="true" onValueChanged="treeDataValueChanged"> 
      <writer xid="default1" action="/custom/crm/logic/action/saveCU_CPXXAction"/>  
      <creator xid="default2" action="/custom/crm/logic/action/createCU_CPXXAction"/>  
      <reader action="/custom/crm/logic/action/queryCU_CPXXAction"/>  
      <treeOption parentRelation="fPARENT" nodeKindRelation="fSFFL" rootFilter=""/>  
      <rule xid="rule1">
   <col name="fCPBM" xid="ruleCol1">
    <required xid="required1">
     <expr xid="default3">true</expr>
     <message xid="default7">产品编码不能为空！</message></required> </col> 
   <col name="fCPMC" xid="ruleCol2">
    <required xid="required2">
     <message xid="default8">产品名称不能为空！</message>
     <expr xid="default9">true</expr></required> </col> 
   <col name="fJLDW" xid="ruleCol3">
    <required xid="required3">
     <message xid="default10">计量单位不能为空！</message>
     <expr xid="default11">true</expr></required> </col> 
   <col name="fGGXH" xid="ruleCol4">
    <required xid="required4">
     <expr xid="default21">true</expr></required> </col> 
   <col name="fYSLX" xid="ruleCol5">
    <required xid="required5">
     <expr xid="default22">true</expr></required> </col> 
   <col name="fCZ" xid="ruleCol6">
    <required xid="required6">
     <expr xid="default23">true</expr></required> </col> 
   <col name="fDX" xid="ruleCol7">
    <required xid="required7">
     <expr xid="default24">true</expr></required> </col> </rule></div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="czData" concept="CU_CZXX"> 
      <creator xid="default13" action="/custom/crm/logic/action/createCU_CZXXAction"/>  
      <reader xid="default14" action="/custom/crm/logic/action/queryCU_CZXXAction"/>  
      <writer xid="default15" action="/custom/crm/logic/action/saveCU_CZXXAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="printData" idColumn="type"> 
      <column label="type" name="type" type="String" xid="xid1"/>  
      <data xid="default12">[{&quot;type&quot;:&quot;表印&quot;},{&quot;type&quot;:&quot;复合&quot;}]</data></div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="dxData" concept="CU_DXXX"> 
      <creator xid="default16" action="/custom/crm/logic/action/createCU_DXXXAction"/>  
      <reader xid="default17" action="/custom/crm/logic/action/queryCU_DXXXAction"/>  
      <writer xid="default18" action="/custom/crm/logic/action/saveCU_DXXXAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="unitData" concept="CU_JLDW"> 
      <creator xid="default4" action="/custom/crm/logic/action/createCU_JLDWAction"/>  
      <reader xid="default5" action="/custom/crm/logic/action/queryCU_JLDWAction"/>  
      <writer xid="default6" action="/custom/crm/logic/action/saveCU_JLDWAction"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    src="$UI/custom/crm/process/product/seconActivity.w" status="normal"> 
    <result concept="treeData" operation="modify" origin="dialogData" xid="default19"> 
      <mapping from="CU_CPXX" to="fPARENT" xid="default20"/> 
    </result> 
  </span>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver" style="top:1px;left:570px;" onReceive="windowReceiverReceive"/>  
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
      <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
        onClick="{'operation':'treeData.refresh'}" xid="button7"> 
        <i xid="i7"/>  
        <span xid="span7"/> 
      </a>  
      <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox"
        xid="checkbox1" label="编辑" checkedValue="是" uncheckedValue="否" checked="false"
        onChange="checkbox1Change"/>  
      <input xid="seekInput" class="form-control" component="$UI/system/components/justep/input/input"
        style="width:139px;" format="0,000" valueUpdateMode="input"/> 
    </div>  
    <div component="$UI/system/components/bootstrap/row/row" class="row" xid="row1"> 
      <div class="col col-xs-3" xid="col1" style="overflow: auto;"> 
        <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
          altRows="true" class="x-grid-no-bordered" xid="grid2" data="treeData" directEdit="false"
          height="auto" width="100%" appearance="tree" expandColumn="fCPMC" virtualRootLabel="产品信息"
          useVirtualRoot="true" onRowSelect="grid2RowSelect"> 
          <columns xid="columns2"> 
            <column name="fCPMC" xid="column1"/> 
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
              <label xid="fCPBML" class="control-label" bind-text="treeData.label('fCPBM')"/> 
            </div>  
            <div xid="col22" class="col-sm-10"> 
              <input xid="fCPBM" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fCPBM')"/> 
            </div> 
          </div>  
          <div xid="formGroup3" class="form-group"> 
            <div xid="col31" class="col-sm-2"> 
              <label xid="fCPMCL" class="control-label" bind-text="treeData.label('fCPMC')"/> 
            </div>  
            <div xid="col32" class="col-sm-10"> 
              <input xid="fCPMC" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fCPMC')"/> 
            </div> 
          </div>  
          <div xid="formGroup4" class="form-group"> 
            <div xid="col41" class="col-sm-2"> 
              <label xid="fGGXHL" class="control-label" bind-text="treeData.label('fGGXH')"/> 
            </div>  
            <div xid="col42" class="col-sm-10"> 
              <input xid="fGGXH" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fGGXH')"/> 
            </div> 
          </div>  
          <div xid="formGroup10" class="form-group"> 
            <div xid="col101" class="col-sm-2"> 
              <label xid="fYSLXL" class="control-label" bind-text="treeData.label('fYSLX')"/> 
            </div>  
            <div xid="col102" class="col-sm-10"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="gridSelect1" bind-ref="$model.treeData.ref(&quot;fYSLX&quot;)" inputFilterable="true"> 
                <option xid="option1" data="printData" value="type" label="type"/> 
              </div> 
            </div> 
          </div>  
          <div xid="formGroup11" class="form-group"> 
            <div xid="col111" class="col-sm-2"> 
              <label xid="fCZL" class="control-label" bind-text="treeData.label('fCZ')"/> 
            </div>  
            <div xid="col112" class="col-sm-10"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="gridSelect2" bind-ref="$model.treeData.ref(&quot;fCZ&quot;)" inputFilterable="true"> 
                <option xid="option2" data="czData" value="fCZMC" label="fCZMC"/> 
              </div> 
            </div> 
          </div>  
          <div xid="formGroup12" class="form-group"> 
            <div xid="col121" class="col-sm-2"> 
              <label xid="fDXL" class="control-label" bind-text="treeData.label('fDX')"/> 
            </div>  
            <div xid="col122" class="col-sm-10"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="gridSelect3" bind-ref="$model.treeData.ref(&quot;fDX&quot;)" inputFilterable="true"> 
                <option xid="option3" data="dxData" value="fDXMC" label="fDXMC"/> 
              </div> 
            </div> 
          </div>  
          <div xid="formGroup13" class="form-group"> 
            <div xid="col131" class="col-sm-2"> 
              <label xid="fJLDWL" class="control-label" bind-text="treeData.label('fJLDW')"/> 
            </div>  
            <div xid="col132" class="col-sm-10"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="gridSelect4" bind-ref="$model.treeData.ref(&quot;fJLDW&quot;)" inputFilterable="true"> 
                <option xid="option4" data="unitData" value="fDWMC" label="fDWMC"/> 
              </div> 
            </div> 
          </div>  
          <div xid="formGroup5" class="form-group"> 
            <div xid="col51" class="col-sm-2"> 
              <label xid="fJGL" class="control-label" bind-text="treeData.label('fJG')"/> 
            </div>  
            <div xid="col52" class="col-sm-10"> 
              <input xid="fJG" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fJG')"/> 
            </div> 
          </div>  
          <div xid="formGroup16" class="form-group"> 
            <div xid="col161" class="col-sm-2"> 
              <label xid="fCPYQL" class="control-label" bind-text="treeData.label('fCPYQ')"/> 
            </div>  
            <div xid="co1l62" class="col-sm-4"> 
              <textarea xid="fCPYQ" class="form-control" component="$UI/system/components/justep/textarea/textarea"
                bind-ref="treeData.ref('fCPYQ')" style="height:140px;"/> 
            </div> 
          </div>  
          <div xid="formGroup6" class="form-group"> 
            <div xid="col61" class="col-sm-2"> 
              <label xid="fBZL" class="control-label" bind-text="treeData.label('fBZ')"/> 
            </div>  
            <div xid="col62" class="col-sm-10"> 
              <input xid="fBZ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fBZ')"/> 
            </div> 
          </div>  
          <div xid="formGroup8" class="form-group"> 
            <div xid="col81" class="col-sm-2"> 
              <label xid="fWHSJL" class="control-label" bind-text="treeData.label('fWHSJ')"/> 
            </div>  
            <div xid="col82" class="col-sm-10"> 
              <input xid="fWHSJ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fWHSJ')" readonly="true"/> 
            </div> 
          </div>  
          <div xid="formGroup9" class="form-group"> 
            <div xid="col91" class="col-sm-2"> 
              <label xid="fWHRL" class="control-label" bind-text="treeData.label('fWHR')"/> 
            </div>  
            <div xid="col92" class="col-sm-10"> 
              <input xid="fWHR" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fWHR')" readonly="true"/> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
