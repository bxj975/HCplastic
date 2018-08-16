<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" xid="window" design="device:pc;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:179px;left:633px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/bizData" xid="mainData"
      directDelete="true" autoLoad="true" concept="CU_KHXX" limit="60" columns=""
      onSaveCommit="saveCommit" onValueChanged="mainDataValueChanged" onAfterNew="mainDataAfterNew"> 
      <reader action="/custom/crm/logic/action/queryCU_KHXXAction"/>  
      <writer action="/custom/crm/logic/action/saveCU_KHXXAction"/>  
      <creator action="/custom/crm/logic/action/createCU_KHXXAction"/>  
      <calculateRelation relation="calcCheckBox"/> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="personData" concept="CU_ZYXX"> 
      <creator xid="default15" action="/custom/crm/logic/action/createCU_ZYXXAction"/>  
      <reader xid="default16" action="/custom/crm/logic/action/queryCU_ZYXXAction"/>  
      <writer xid="default17" action="/custom/crm/logic/action/saveCU_ZYXXAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="lxData" idColumn="type"> 
      <column label="type" name="type" type="String" xid="xid4"/>  
      <data xid="default4">[{"type":"YES"},{"type":"NO"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="typeData" concept="CU_KHFL" directDelete="false" updateMode="whereAll"> 
      <creator xid="default61" action="/custom/crm/logic/action/createCU_KHFLAction"/>  
      <reader xid="default71" action="/custom/crm/logic/action/queryCU_KHFLAction"/>  
      <writer xid="default81" action="/custom/crm/logic/action/saveCU_KHFLAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="jsData" idColumn="type" autoNew="false"> 
      <column label="type" name="type" type="String" xid="xid5"/>  
      <data xid="default9">[{"type":"现结"},{"type":"账期"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="areaData" concept="CU_QYXX" limit="20"> 
      <creator xid="default12" action="/custom/crm/logic/action/createCU_QYXXAction"/>  
      <reader xid="default13" action="/custom/crm/logic/action/queryCU_QYXXAction"/>  
      <writer xid="default14" action="/custom/crm/logic/action/saveCU_QYXXAction"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowReceiver/windowReceiver"
    xid="windowReceiver" onReceive="windowReceiverReceive"/>  
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
            xid="smartFilter1" filterData="mainData" class="pull-right" filterCols="fKHBM,fKHMC,fKHLB,fLXR,fLXDH,fYDDH,fJSFS,fGZR,fSZQY"> 
            <input type="text" class="form-control" placeholder="搜索" data-bind="valueUpdate: ['input', 'afterkeydown']"
              bind-value="$model.comp($element.parentElement).searchText" bind-change="$model.comp($element.parentElement).onInputChange.bind($model.comp($element.parentElement))"
              xid="input4"/> 
          </div>  
          <a component="$UI/system/components/justep/button/button" label=" 新建"
            class="btn btn-link btn-icon-left" icon="icon-plus" onClick="addBtnClick"> 
            <i class="icon-plus"/>  
            <span>新建</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="delBtn1" onClick="delBtn1Click" label="删除" icon="icon-minus"> 
            <i xid="i7" class="icon-minus"/>  
            <span xid="span11">删除</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="button3" onClick="{&quot;operation&quot;:&quot;mainData.refresh&quot;}"> 
            <i xid="i6"/>  
            <span xid="span10">刷新</span> 
          </a> 
        </div>  
        <div component="$UI/system/components/justep/dataTables/dataTables"
          flexibleWidth="false" class="table table-hover table-striped hidder-xs"
          xid="listData" data="mainData" rowActiveClass="active" onRowDblClick="grid3RowClick"
          responsive="true" onRowSelect="listDataRowSelect"> 
          <columns xid="column"> 
            <column name="fKHBM"/>  
            <column name="fKHMC"/>  
            <column name="fFLMC1" label="类别"/>  
            <column name="fLXR"/>  
            <column name="fLXDH"/>  
            <column name="fYDDH"/>  
            <column name="fJSFS"/>  
            <column name="fZYMC"/>  
            <column name="fFLMC" label="区域"/> 
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
            xid="button5" onClick="{&quot;operation&quot;:&quot;mainData.refresh&quot;}"> 
            <i xid="i8"/>  
            <span xid="span12"/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="preBtn" onClick="{&quot;operation&quot;:&quot;mainData.prevRow&quot;}"> 
            <i xid="i4"/>  
            <span xid="span3"/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="nextBtn" onClick="{&quot;operation&quot;:&quot;mainData.nextRow&quot;}"> 
            <i xid="i5"/>  
            <span xid="span4"/> 
          </a>  
          <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox"
            xid="checkbox1" label="编辑" checkedValue="是" uncheckedValue="否" checked="false"
            onChange="checkbox1Change"/>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link "
            label="确定" xid="OKBtn" onClick="OKBtnClick" bind-enable="canOK" disabled="true"> 
            <i xid="i1"/>  
            <span xid="span1">确定</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-only-label "
            label="取消" xid="cancelBtn" onClick="{&quot;operation&quot;:&quot;windowReceiver.windowCancel&quot;}"
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
              <div xid="formGroup2" class="form-group"> 
                <div xid="col21" class="col-sm-2"> 
                  <label xid="fKHBML" class="control-label" bind-text="mainData.label('fKHBM')"/> 
                </div>  
                <div xid="col22" class="col-sm-10"> 
                  <input xid="fKHBM" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fKHBM')"/> 
                </div> 
              </div>  
              <div xid="formGroup3" class="form-group"> 
                <div xid="col31" class="col-sm-2"> 
                  <label xid="fKHMCL" class="control-label" bind-text="mainData.label('fKHMC')"/> 
                </div>  
                <div xid="col32" class="col-sm-10"> 
                  <input xid="fKHMC" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fKHMC')"/> 
                </div> 
              </div>  
              <div xid="formGroup4" class="form-group"> 
                <div xid="col41" class="col-sm-2"> 
                  <label xid="fKHLBL" class="control-label" bind-text="mainData.label('fKHLB')"/> 
                </div>  
                <div xid="col42" class="col-sm-10"> 
                  <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                    xid="typeGridSelect" bind-ref="$model.mainData.ref(&quot;fKHLB&quot;)"> 
                    <option xid="option7" data="typeData" value="CU_KHFL" label="fFLMC"/> 
                  </div> 
                </div> 
              </div>  
              <div xid="formGroup5" class="form-group"> 
                <div xid="col51" class="col-sm-2"> 
                  <label xid="fSZQYL" class="control-label" bind-text="mainData.label('fSZQY')"/> 
                </div>  
                <div xid="col52" class="col-sm-10"> 
                  <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                    xid="areaGridSelect" bind-ref="$model.mainData.ref(&quot;fSZQY&quot;)"> 
                    <option xid="option6" data="areaData" value="CU_QYXX" label="fFLMC"/> 
                  </div> 
                </div> 
              </div>  
              <div xid="formGroup6" class="form-group"> 
                <div xid="col61" class="col-sm-2"> 
                  <label xid="fLXRL" class="control-label" bind-text="mainData.label('fLXR')"/> 
                </div>  
                <div xid="col62" class="col-sm-10"> 
                  <input xid="fLXR" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fLXR')"/> 
                </div> 
              </div>  
              <div xid="formGroup7" class="form-group"> 
                <div xid="col71" class="col-sm-2"> 
                  <label xid="fLXDHL" class="control-label" bind-text="mainData.label('fLXDH')"/> 
                </div>  
                <div xid="col72" class="col-sm-10"> 
                  <input xid="fLXDH" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fLXDH')"/> 
                </div> 
              </div>  
              <div xid="formGroup8" class="form-group"> 
                <div xid="col81" class="col-sm-2"> 
                  <label xid="fYDDHL" class="control-label" bind-text="mainData.label('fYDDH')"/> 
                </div>  
                <div xid="col82" class="col-sm-10"> 
                  <input xid="fYDDH" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fYDDH')"/> 
                </div> 
              </div>  
              <div xid="formGroup9" class="form-group"> 
                <div xid="col91" class="col-sm-2"> 
                  <label xid="fLXQQL" class="control-label" bind-text="mainData.label('fLXQQ')"/> 
                </div>  
                <div xid="col92" class="col-sm-10"> 
                  <input xid="fLXQQ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fLXQQ')"/> 
                </div> 
              </div>  
              <div xid="formGroup10" class="form-group"> 
                <div xid="col101" class="col-sm-2"> 
                  <label xid="fLXWXL" class="control-label" bind-text="mainData.label('fLXWX')"/> 
                </div>  
                <div xid="col102" class="col-sm-10"> 
                  <input xid="fLXWX" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fLXWX')"/> 
                </div> 
              </div>  
              <div xid="formGroup11" class="form-group"> 
                <div xid="col111" class="col-sm-2"> 
                  <label xid="fSHDZL" class="control-label" bind-text="mainData.label('fSHDZ')"/> 
                </div>  
                <div xid="col112" class="col-sm-10"> 
                  <input xid="fSHDZ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fSHDZ')"/> 
                </div> 
              </div>  
              <div xid="formGroup12" class="form-group"> 
                <div xid="col121" class="col-sm-2"> 
                  <label xid="fJSFSL" class="control-label" bind-text="mainData.label('fJSFS')"/> 
                </div>  
                <div xid="col122" class="col-sm-10"> 
                  <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                    xid="jsGridSelect" bind-ref="$model.mainData.ref(&quot;fJSFS&quot;)"> 
                    <option xid="option5" data="jsData" value="type" label="type"/> 
                  </div> 
                </div> 
              </div>  
              <div xid="formGroup14" class="form-group"> 
                <div xid="col141" class="col-sm-2"> 
                  <label xid="fGZRL" class="control-label" bind-text="mainData.label('fGZR')"/> 
                </div>  
                <div xid="col142" class="col-sm-10"> 
                  <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                    xid="personGridSelect" bind-ref="$model.mainData.ref(&quot;fGZR&quot;)"
                    disabled="true"> 
                    <option xid="option1" data="personData" value="CU_ZYXX" label="fZYMC"/>
                  </div>
                </div> 
              </div>  
              <div xid="formGroup13" class="form-group"> 
                <div xid="col131" class="col-sm-2"> 
                  <label xid="fBZL" class="control-label" bind-text="mainData.label('fBZ')"/> 
                </div>  
                <div xid="col132" class="col-sm-10"> 
                  <textarea xid="fBZ" class="form-control" component="$UI/system/components/justep/textarea/textarea"
                    bind-ref="mainData.ref('fBZ')" style="height:120px;"/> 
                </div> 
              </div>  
              <div xid="formGroup22" class="form-group"> 
                <div xid="col221" class="col-sm-2"> 
                  <label xid="fWHSJL" class="control-label" bind-text="mainData.label('fWHSJ')"/> 
                </div>  
                <div xid="col222" class="col-sm-10"> 
                  <input xid="fWHSJ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fWHSJ')" readonly="true"/> 
                </div> 
              </div>  
              <div xid="formGroup23" class="form-group"> 
                <div xid="col231" class="col-sm-2"> 
                  <label xid="fWHRL" class="control-label" bind-text="mainData.label('fWHR')"/> 
                </div>  
                <div xid="col232" class="col-sm-10"> 
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
