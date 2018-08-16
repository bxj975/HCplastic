<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:pc">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:649px;left:509px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/bizData" xid="treeData"
      autoLoad="true" autoNew="false" concept="CU_KHXX" columns="" isTree="true" onValueChanged="treeDataValueChanged"> 
      <writer xid="default1" action="/custom/crm/logic/action/saveCU_KHXXAction"/>  
      <creator xid="default2" action="/custom/crm/logic/action/createCU_KHXXAction"/>  
      <reader action="/custom/crm/logic/action/queryCU_KHXXAction"/>  
      <treeOption parentRelation="fPARENT" nodeKindRelation="fSFFL" rootFilter=""/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="lxData" idColumn="type"> 
      <column label="type" name="type" type="String" xid="xid4"/>  
      <data xid="default4">[{"type":"YES"},{"type":"NO"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="personData" concept="SA_OPPerson"> 
      <reader xid="default5" action="/system/logic/action/queryTaskNumAction"/>  
      <filter name="filter0" xid="filter1"><![CDATA[sMainOrgID='QbM7QR2lqgsG7psyKtf' OR sMainOrgID='6fQK2l4tks3FiM9apeF']]></filter> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="typeData" concept="CU_KHFL"> 
      <creator xid="default6" action="/custom/crm/logic/action/createCU_KHFLAction"/>  
      <reader xid="default7" action="/custom/crm/logic/action/queryCU_KHFLAction"/>  
      <writer xid="default8" action="/custom/crm/logic/action/saveCU_KHFLAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="jsData" idColumn="type"> 
      <column label="type" name="type" type="String" xid="xid5"/>  
      <data xid="default9">[{"type":"现结"},{"type":"账期"}]</data> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1" src="$UI/custom/crm/process/custom/secondActivity.w" status="normal"><result concept="treeData" operation="modify" origin="dialogData" xid="default3">
   <mapping from="CU_KHXX" to="fPARENT" xid="default10"></mapping></result></span><div class="container-fluid" xid="view"> 
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
          height="auto" width="100%" appearance="tree" expandColumn="fKHMC" virtualRootLabel="客户信息"
          useVirtualRoot="true"> 
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
          <div xid="formGroup4" class="form-group"> 
            <div xid="col41" class="col-sm-2"> 
              <label xid="fKHLBL" class="control-label" bind-text="treeData.label('fKHLB')"/> 
            </div>  
            <div xid="col42" class="col-sm-10"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="typeGridSelect" bind-ref="$model.treeData.ref(&quot;fKHLB&quot;)"> 
                <option xid="option4" data="typeData" value="fFLMC" label="fFLMC"/> 
              </div> 
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
          <div xid="formGroup24" class="form-group"> 
            <div xid="col41" class="col-sm-2"> 
              <label xid="fJSFSL" class="control-label" bind-text="treeData.label('fJSFS')"/> 
            </div>  
            <div xid="col42" class="col-sm-10"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="gridSelect2" bind-ref="$model.treeData.ref(&quot;fJSFS&quot;)"> 
                <option xid="option5" data="jsData" value="type" label="type"/> 
              </div> 
            </div> 
          </div>  
          <div xid="formGroup12" class="form-group"> 
            <div xid="col121" class="col-sm-2"> 
              <label xid="fGZRL" class="control-label" bind-text="treeData.label('fGZR')"/> 
            </div>  
            <div xid="col122" class="col-sm-10"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="gridSelect1" bind-ref="$model.treeData.ref(&quot;fGZR&quot;)" inputFilterable="true"> 
                <option xid="option3" data="personData" value="sName" label="sName"/> 
              </div> 
            </div> 
          </div>  
          <div xid="formGroup13" class="form-group"> 
            <div xid="col131" class="col-sm-2"> 
              <label xid="fLXKHL" class="control-label" bind-text="treeData.label('fLXKH')"/> 
            </div>  
            <div xid="col132" class="col-sm-10"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="lxGridSelect" bind-ref="$model.treeData.ref(&quot;fLXKH&quot;)"> 
                <option xid="option1" data="lxData" value="type" label="type"/> 
              </div> 
            </div> 
          </div>  
          <div xid="formGroup15" class="form-group"> 
            <div xid="col151" class="col-sm-2"> 
              <label xid="fZDYYL" class="control-label" bind-text="treeData.label('fZDYY')"/> 
            </div>  
            <div xid="col152" class="col-sm-10"> 
              <input xid="fZDYY" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fZDYY')"/> 
            </div> 
          </div>  
          <div xid="formGroup16" class="form-group"> 
            <div xid="col161" class="col-sm-2"> 
              <label xid="fZDYEL" class="control-label" bind-text="treeData.label('fZDYE')"/> 
            </div>  
            <div xid="col162" class="col-sm-10"> 
              <input xid="fZDYE" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fZDYE')"/> 
            </div> 
          </div>  
          <div xid="formGroup17" class="form-group"> 
            <div xid="col171" class="col-sm-2"> 
              <label xid="fZDYSL" class="control-label" bind-text="treeData.label('fZDYS')"/> 
            </div>  
            <div xid="col172" class="col-sm-10"> 
              <input xid="fZDYS" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fZDYS')"/> 
            </div> 
          </div>  
          <div xid="formGroup18" class="form-group"> 
            <div xid="col181" class="col-sm-2"> 
              <label xid="fZDYSIL" class="control-label" bind-text="treeData.label('fZDYSI')"/> 
            </div>  
            <div xid="col182" class="col-sm-10"> 
              <input xid="fZDYSI" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fZDYSI')"/> 
            </div> 
          </div>  
          <div xid="formGroup19" class="form-group"> 
            <div xid="col191" class="col-sm-2"> 
              <label xid="fZDYWL" class="control-label" bind-text="treeData.label('fZDYW')"/> 
            </div>  
            <div xid="col192" class="col-sm-10"> 
              <input xid="fZDYW" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fZDYW')"/> 
            </div> 
          </div>  
          <div xid="formGroup20" class="form-group"> 
            <div xid="col201" class="col-sm-2"> 
              <label xid="fZDYLL" class="control-label" bind-text="treeData.label('fZDYL')"/> 
            </div>  
            <div xid="col202" class="col-sm-10"> 
              <input xid="fZDYL" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fZDYL')"/> 
            </div> 
          </div>  
          <div xid="formGroup21" class="form-group"> 
            <div xid="col211" class="col-sm-2"> 
              <label xid="fWHSJL" class="control-label" bind-text="treeData.label('fWHSJ')"/> 
            </div>  
            <div xid="col212" class="col-sm-10"> 
              <input xid="fWHSJ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fWHSJ')" readonly="true"/> 
            </div> 
          </div>  
          <div xid="formGroup22" class="form-group"> 
            <div xid="col221" class="col-sm-2"> 
              <label xid="fWHRL" class="control-label" bind-text="treeData.label('fWHR')"/> 
            </div>  
            <div xid="col222" class="col-sm-10"> 
              <input xid="fWHR" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="treeData.ref('fWHR')" readonly="true"/> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
