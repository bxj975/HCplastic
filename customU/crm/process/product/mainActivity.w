<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" xid="window" design="device:pc;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:407px;left:303px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/bizData" xid="mainData"
      directDelete="true" autoLoad="true" concept="CU_CPXX" limit="15" columns=""
      onSaveCommit="saveCommit"> 
      <reader action="/custom/crm/logic/action/queryCU_CPXXAction"/>  
      <writer action="/custom/crm/logic/action/saveCU_CPXXAction"/>  
      <creator action="/custom/crm/logic/action/createCU_CPXXAction"/>  
      <calculateRelation relation="calcCheckBox"/> 
    <rule xid="rule1">
   <col name="fGZKH" xid="ruleCol1">
    <required xid="required1">
     <expr xid="default7">true</expr></required> </col> 
   <col name="fYSLX" xid="ruleCol2">
    <required xid="required2">
     <expr xid="default8">true</expr></required> </col> 
   <col name="fCPMC" xid="ruleCol3">
    <required xid="required3">
     <expr xid="default9"></expr></required> </col> </rule></div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="czData" concept="CU_CZXX" limit="200"> 
      <creator xid="default13" action="/custom/crm/logic/action/createCU_CZXXAction"/>  
      <reader xid="default14" action="/custom/crm/logic/action/queryCU_CZXXAction"/>  
      <writer xid="default15" action="/custom/crm/logic/action/saveCU_CZXXAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="printData" idColumn="type"> 
      <column label="type" name="type" type="String" xid="xid1"/>  
      <data xid="default12">[{"type":"表印"},{"type":"复合"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="dxData" concept="CU_DXXX" limit="200"> 
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
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="main2Data" idColumn="fBZY" autoNew="true"> 
      <column name="fBZY" type="String" xid="xid2"/>  
      <column name="fBZE" type="String" xid="xid4"/>  
      <column name="fGZKH" type="String" xid="xid5"/>  
      <column name="fCPMC" type="String" xid="xid6"/>  
      <column name="fGGXH" type="String" xid="xid7"/>  
      <column name="fYSLX" type="String" xid="xid3"/>  
      <column name="fCZ" type="String" xid="xid8"/>  
      <column name="fDX" type="String" xid="xid9"/>  
      <column name="fCPYQ" type="String" xid="xid10"/>  
      <column name="fJLDW" type="String" xid="xid11"/>  
      <column name="fJG" type="Decimal" xid="xid12"/>  
      <column name="fBZ" type="String" xid="xid13"/>
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    src="$UI/custom/crm/process/order/secondActivity.w" status="normal">
    
  <result concept="mainData" operation="modify" origin="dialogData" xid="default10">
   <mapping from="CU_KHXX" to="fBYYI" xid="default11"></mapping>
   <mapping from="fKHMC" to="fGZKH" xid="default19"></mapping></result></span>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver" onReceive="windowReceiverReceive" style="top:34px;left:34px;"/>
  <div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs"> 
    <ul class="nav nav-tabs" xid="navs"> 
      <li class="active" xid="nav-list"> 
        <a content="list" xid="tabItem1"><![CDATA[列表]]></a> 
      </li>  
      <li role="presentation" xid="nav-detail"> 
        <a content="detail" xid="tabItem2"><![CDATA[详细]]></a> 
      </li> 
    </ul>  
    <div class="tab-content" xid="contents"> 
      <div class="tab-pane active" xid="list"> 
        <div xid="bar" component="$UI/system/components/justep/toolBar/toolBar"
          class="x-toolbar x-toolbar-spliter form-inline"> 
          <div component="$UI/system/components/justep/smartFilter/smartFilter"
            xid="smartFilter1" filterData="mainData" class="pull-right" filterCols="fGZKH,fCPBM,fCPMC,fGGXH,fYSLX,fCZ,fDX,fJLDW,fWHSJ,fWHR" autoRefreshMode="input"> 
            <input type="text" class="form-control" placeholder="搜索" data-bind="valueUpdate: ['input', 'afterkeydown']"
              bind-value="$model.comp($element.parentElement).searchText" bind-change="$model.comp($element.parentElement).onInputChange.bind($model.comp($element.parentElement))"
              xid="input4"/> 
          </div>  
          <a component="$UI/system/components/justep/button/button" label=" 新建"
            class="btn btn-link btn-icon-left" icon="icon-plus" onClick="addBtnClick"
            xid="addBtn1"> 
            <i class="icon-plus"/>  
            <span>新建</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="delBtn1" label="删除" icon="icon-minus" onClick="delBtn1Click"> 
            <i xid="i7" class="icon-minus"/>  
            <span xid="span11">删除</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="refreshBtn1" onClick='{"operation":"mainData.refresh"}'> 
            <i xid="i6"/>  
            <span xid="span10">刷新</span> 
          </a> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label "
            label="取消" xid="cancelBtn1" onClick='{"operation":"windowReceiver.windowCancel"}'
            disabled="true"> 
            <i xid="i2"/>  
            <span xid="span2">取消</span> 
          </a> 
        </div>  
        <div component="$UI/system/components/justep/dataTables/dataTables"
          flexibleWidth="false" class="table table-hover table-striped hidder-xs"
          xid="listData" data="mainData" rowActiveClass="active" onRowDblClick="grid3RowClick"
          responsive="true"> 
          <columns xid="column"> 
            <column name="fGZKH"/>  
            <column name="fCPBM"/>  
            <column name="fCPMC"/>  
            <column name="fGGXH"/>  
            <column name="fYSLX"/>  
            <column name="fCZ"/>  
            <column name="fDX"/>  
            <column name="fJLDW"/> 
          </columns> 
        </div>  
        <div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid"
          xid="pageBar" data="mainData"> 
          <div class="row" xid="div1"> 
            <div class="col-sm-3" xid="div2"> 
              <div class="x-pagerbar-length" xid="div3"> 
                <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect"
                  class="x-pagerlimitselect" xid="limitSelect1"> 
                  <span xid="span2">显示</span>  
                  <select component="$UI/system/components/justep/select/select"
                    class="form-control input-sm" xid="select1"> 
                    <option value="10" xid="default1">10</option>  
                    <option value="20" xid="default2">20</option>  
                    <option value="50" xid="default3">50</option>  
                    <option value="100" xid="default4">100</option> 
                  </select>  
                  <span xid="span5">条</span> 
                </label> 
              </div> 
            </div>  
            <div class="col-sm-3" xid="div4"> 
              <div class="x-pagerbar-info" xid="div5">当前显示1-10条，共16条</div> 
            </div>  
            <div class="col-sm-6" xid="div6"> 
              <div class="x-pagerbar-pagination" xid="div7"> 
                <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination"
                  xid="pagination1"> 
                  <li class="prev" xid="li1"> 
                    <a href="#" xid="a1"> 
                      <span aria-hidden="true" xid="span6">«</span>  
                      <span class="sr-only" xid="span7">Previous</span> 
                    </a> 
                  </li>  
                  <li class="next" xid="li2"> 
                    <a href="#" xid="a2"> 
                      <span aria-hidden="true" xid="span8">»</span>  
                      <span class="sr-only" xid="span9">Next</span> 
                    </a> 
                  </li> 
                </ul> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div class="tab-pane" xid="detail"> 
        <div xid="detailBar" component="$UI/system/components/justep/toolBar/toolBar"
          class="x-toolbar x-toolbar-spliter form-inline"> 
          <a component="$UI/system/components/justep/button/button" label="添加"
            class="btn btn-link btn-icon-left" icon="icon-plus" onClick="addBtnClick"
            xid="newBtn2" disabled="true"> 
            <i class="icon-plus" xid="i3"/>  
            <span xid="span1">添加</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" label=" 保存"
            class="btn btn-link btn-icon-left" onClick="{operation:'mainData.save'}"
            xid="saveBtn"> 
            <i/>  
            <span>保存</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            label="删除" xid="delBtn2" icon="icon-minus" onClick="delBtn2Click"> 
            <i xid="i2" class="icon-minus"/>  
            <span xid="label6">删除</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="button5" onClick='{"operation":"mainData.refresh"}'> 
            <i xid="i8"/>  
            <span xid="span12"/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="复制" xid="copyBtn" onClick="copyBtnClick"> 
            <i xid="i14"/>  
            <span xid="span13">复制</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="粘贴" xid="pasteBtn" onClick="pasteBtnClick" disabled="true"> 
            <i xid="i16"/>  
            <span xid="span21">粘贴</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="preBtn" onClick='{"operation":"mainData.prevRow"}'> 
            <i xid="i4"/>  
            <span xid="span3"/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="nextBtn" onClick='{"operation":"mainData.nextRow"}'> 
            <i xid="i5"/>  
            <span xid="span4"/> 
          </a>  
          <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox"
            xid="checkbox1" label="编辑" checkedValue="是" uncheckedValue="否" checked="false"
            onChange="checkbox1Change"/>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label "
            label="取消" xid="cancelBtn" onClick='{"operation":"windowReceiver.windowCancel"}'
            disabled="true"> 
            <i xid="i2"/>  
            <span xid="span2">取消</span> 
          </a> 
        </div>  
        <div class="container-fluid"> 
          <div component="$UI/system/components/justep/controlGroup/controlGroup"
            class="x-control-group" title="详细" collapsible="true"> 
            <div class="x-control-group-title">详细</div>  
            <div xid="mainForm" class="form-horizontal" component="$UI/system/components/bootstrap/form/form"
              style="margin:30px 10px"> 
              <div xid="formGroup1" class="form-group"> 
                <div xid="col11" class="col-sm-2"> 
                  <label xid="versionL" class="control-label" bind-text="mainData.label('version')"/> 
                </div>  
                <div xid="col12" class="col-sm-10"> 
                  <input xid="version" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('version')" readonly="true"/> 
                </div> 
              </div>  
              <div xid="formGroup11" class="form-group"> 
                <div xid="col111" class="col-sm-2"> 
                  <label xid="fGZKHL" class="control-label" bind-text="mainData.label('fGZKH')"/> 
                </div>  
                <div xid="col112" class="col-sm-9"> 
                  <input xid="fGZKH" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fGZKH')" bind-dblclick="fGZKHDblclick"/> 
                </div>  
                <div xid="col234" class="col-sm-1"> 
                  <a component="$UI/system/components/justep/button/button"
                    class="btn btn-default" xid="customBtn" onClick="customBtnClick"
                    icon="linear linear-volume"> 
                    <i xid="i17" class="linear linear-volume"/>  
                    <span xid="span29"/> 
                  </a> 
                </div> 
              </div>  
              <div xid="formGroup2" class="form-group"> 
                <div xid="col21" class="col-sm-2"> 
                  <label xid="fCPBML" class="control-label" bind-text="mainData.label('fCPBM')"/> 
                </div>  
                <div xid="col22" class="col-sm-10"> 
                  <input xid="fCPBM" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fCPBM')"/> 
                </div> 
              </div>  
              <div xid="formGroup3" class="form-group"> 
                <div xid="col31" class="col-sm-2"> 
                  <label xid="fCPMCL" class="control-label" bind-text="mainData.label('fCPMC')"/> 
                </div>  
                <div xid="col32" class="col-sm-10"> 
                  <input xid="fCPMC" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fCPMC')"/> 
                </div> 
              </div>  
              <div xid="formGroup4" class="form-group"> 
                <div xid="col41" class="col-sm-2"> 
                  <label xid="fGGXHL" class="control-label" bind-text="mainData.label('fGGXH')"/> 
                </div>  
                <div xid="col42" class="col-sm-10"> 
                  <input xid="fGGXH" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fGGXH')"/> 
                </div> 
              </div>  
              <div xid="formGroup5" class="form-group"> 
                <div xid="col51" class="col-sm-2"> 
                  <label xid="fYSLXL" class="control-label" bind-text="mainData.label('fYSLX')"/> 
                </div>  
                <div xid="col52" class="col-sm-10"> 
                  <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                    xid="printGridSelect" bind-ref="$model.mainData.ref(&quot;fYSLX&quot;)"
                    inputFilterable="true"> 
                    <option xid="option1" data="printData" value="type" label="type"/> 
                  </div> 
                </div> 
              </div>  
              <div xid="formGroup6" class="form-group"> 
                <div xid="col61" class="col-sm-2"> 
                  <label xid="fCZL" class="control-label" bind-text="mainData.label('fCZ')"/> 
                </div>  
                <div xid="col62" class="col-sm-10"> 
                  <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                    xid="czGridSelect" bind-ref="$model.mainData.ref(&quot;fCZ&quot;)" inputFilterable="true"> 
                    <option xid="option2" data="czData" value="fCZMC" label="fCZMC"/> 
                  </div> 
                </div> 
              </div>  
              <div xid="formGroup7" class="form-group"> 
                <div xid="col71" class="col-sm-2"> 
                  <label xid="fDXL" class="control-label" bind-text="mainData.label('fDX')"/> 
                </div>  
                <div xid="col72" class="col-sm-10"> 
                  <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                    xid="dxGridSelect" bind-ref="$model.mainData.ref(&quot;fDX&quot;)" inputFilterable="true"> 
                    <option xid="option3" data="dxData" value="fDXMC" label="fDXMC"/> 
                  </div> 
                </div> 
              </div>  
              <div xid="formGroup8" class="form-group"> 
                <div xid="col81" class="col-sm-2"> 
                  <label xid="fCPYQL" class="control-label" bind-text="mainData.label('fCPYQ')"/> 
                </div>  
                <div xid="col82" class="col-sm-4"> 
                  <textarea xid="fCPYQ" class="form-control" component="$UI/system/components/justep/textarea/textarea"
                    bind-ref="$model.mainData.ref(&quot;fCPYQ&quot;)" style="height:140px;"/> 
                </div> 
              </div>  
              <div xid="formGroup9" class="form-group"> 
                <div xid="col91" class="col-sm-2"> 
                  <label xid="fJLDWL" class="control-label" bind-text="mainData.label('fJLDW')"/> 
                </div>  
                <div xid="col92" class="col-sm-10"> 
                  <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                    xid="unitGridSelect" bind-ref="$model.mainData.ref(&quot;fJLDW&quot;)" inputFilterable="true"> 
                    <option xid="option4" data="unitData" value="fDWMC" label="fDWMC"/> 
                  </div> 
                </div> 
              </div>  
              <div xid="formGroup10" class="form-group"> 
                <div xid="col101" class="col-sm-2"> 
                  <label xid="fJGL" class="control-label" bind-text="mainData.label('fJG')"/> 
                </div>  
                <div xid="col102" class="col-sm-10"> 
                  <input xid="fJG" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fJG')"/> 
                </div> 
              </div>  
              <div xid="formGroup101" class="form-group"> 
                <div xid="col1011" class="col-sm-2"> 
                  <label xid="fBZL" class="control-label" bind-text="mainData.label('fBZ')"/> 
                </div>  
                <div xid="col1021" class="col-sm-10"> 
                  <input xid="fBZ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fBZ')"/> 
                </div> 
              </div>  
              <div xid="formGroup14" class="form-group"> 
                <div xid="col141" class="col-sm-2"> 
                  <label xid="fWHSJL" class="control-label" bind-text="mainData.label('fWHSJ')"/> 
                </div>  
                <div xid="col142" class="col-sm-10"> 
                  <input xid="fWHSJ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fWHSJ')" readonly="true"/> 
                </div> 
              </div>  
              <div xid="formGroup15" class="form-group"> 
                <div xid="col151" class="col-sm-2"> 
                  <label xid="fWHRL" class="control-label" bind-text="mainData.label('fWHR')"/> 
                </div>  
                <div xid="col152" class="col-sm-10"> 
                  <input xid="fWHR" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fWHR')" readonly="true"/> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
