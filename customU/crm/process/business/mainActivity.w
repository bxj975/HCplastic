<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" xid="window" design="device:pc;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:350px;top:185px;" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/bizData" xid="mainData"
      directDelete="true" autoLoad="true" concept="CU_KHWH" limit="15" columns=""
      onSaveCommit="saveCommit" onValueChanged="mainDataValueChanged"> 
      <reader action="/custom/crm/logic/action/queryCU_KHWHAction"/>  
      <writer action="/custom/crm/logic/action/saveCU_KHWHAction"/>  
      <creator action="/custom/crm/logic/action/createCU_KHWHAction"/>  
      <calculateRelation relation="calcCheckBox"/> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="typeData" concept="CU_YWLX">
      <creator xid="default5" action="/custom/crm/logic/action/createCU_YWLXAction"/>  
      <reader xid="default6" action="/custom/crm/logic/action/queryCU_YWLXAction"/>  
      <writer xid="default7" action="/custom/crm/logic/action/saveCU_YWLXAction"/>
    </div>
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="depData" idColumn="name" autoNew="true"> 
      <column label="name" name="name" type="String" xid="xid1"/>  
      <column label="days" name="days" type="String" xid="xid5"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="dateData" idColumn="date"> 
      <column label="date" name="date" type="String" xid="xid2"/>  
      <column label="days" name="days" type="String" xid="xid4"/>  
      <data xid="default11">[{"date":"今天","days":"1"},{"date":"一周","days":"7"},{"date":"一个月","days":"30"},{"date":"三个月","days":"90"},{"date":"一年","days":"360"},{"date":"全部","days":"720"}]</data> 
    </div> 
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="personData" concept="CU_ZYXX" onAfterRefresh="personDataAfterRefresh" confirmRefresh="false"> 
      <reader xid="default5" action="/custom/crm/logic/action/queryCU_ZYXXAction"/>  
      <filter name="filter0" xid="filter1"><![CDATA[]]></filter>  
      <creator xid="default38" action="/custom/crm/logic/action/createCU_ZYXXAction"/>  
      <writer xid="default39" action="/custom/crm/logic/action/saveCU_ZYXXAction"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    src="$UI/custom/crm/process/order/secondActivity.w" status="normal">
    
  <result concept="mainData" operation="modify" origin="dialogData" xid="default19">
   <mapping from="fKHBM" to="fKHBM" xid="default20"></mapping>
   <mapping from="fKHMC" to="fKHMC" xid="default21"></mapping></result></span>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog2"
    src="$UI/custom/crm/process/order/forthActivity.w" status="normal">
    
  <result concept="mainData" operation="modify" origin="dialogData" xid="default17">
   <mapping from="fMBNR" to="fYWJS" xid="default18"></mapping></result></span>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog3"
    src="$UI/custom/crm/process/order/forthActivity.w" status="normal">
    
  <result concept="mainData" operation="modify" origin="dialogData" xid="default15">
   <mapping from="fMBNR" to="fBZ" xid="default16"></mapping></result></span>
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
            xid="smartFilter1" filterData="mainData" class="pull-right" filterCols="fDJBH,fDJRQ,fKHMC,fYWLX,fTXSJ,fWHSJ,fWHR" autoRefreshMode="change"> 
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
            xid="delBtn1" label="删除" icon="icon-minus" onClick="delBtn1Click"> 
            <i xid="i7" class="icon-minus"/>  
            <span xid="span11">删除</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="button3" onClick='{"operation":"mainData.refresh"}'> 
            <i xid="i6"/>  
            <span xid="span10">刷新</span> 
          </a> 
          <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
            xid="gridSelect2" style="width:120px;" bind-ref="$model.depData.ref(&quot;name&quot;)"
            inputFilterable="true" onShowOption="gridSelect2ShowOption"> 
            <option xid="option2" data="personData" value="fZYMC" label="fZYMC"/> 
          </div>  
          <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
            xid="gridSelect3" style="width:90px;" bind-ref="$model.depData.ref(&quot;days&quot;)"
            inputFilterable="true"> 
            <option xid="option3" data="dateData" value="days" label="date"/> 
          </div>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="确定" xid="qdBtn" onClick="qdBtnClick"> 
            <i xid="i18"/>  
            <span xid="span30">确定</span>
          </a>
        </div>  
        <div component="$UI/system/components/justep/dataTables/dataTables"
          flexibleWidth="false" class="table table-hover table-striped hidder-xs"
          xid="listData" data="mainData" rowActiveClass="active" onRowDblClick="grid3RowClick"
          responsive="true"> 
          <columns xid="column"> 
            <column name="fDJBH"/>  
            <column name="fDJRQ"/>  
            <column name="fKHMC"/>  
            <column name="fYWLX"/>  
            <column name="fTXSJ"/>  
            <column name="fWHSJ"/>  
            <column name="fWHR"/> 
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
            xid="newBtn2"> 
            <i class="icon-plus" xid="i3"/>  
            <span xid="span1">添加</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" label=" 保存"
            class="btn btn-link btn-icon-left" onClick="saveBtnClick"
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
        <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox" xid="checkbox1" checkedValue="是" uncheckedValue="否" onChange="checkbox1Change" label="编辑"></span></div>  
        <div class="container-fluid"> 
          <div component="$UI/system/components/justep/controlGroup/controlGroup"
            class="x-control-group" title="详细" collapsible="true"> 
            <div class="x-control-group-title">详细</div>  
            <div xid="mainForm" class="form-horizontal" component="$UI/system/components/bootstrap/form/form"
              style="margin:30px 10px"> 
              <div xid="formGroup1" class="form-group"> 
                <div xid="col11" class="col-sm-2"> 
                  <label xid="fDJBHL" class="control-label" bind-text="mainData.label('fDJBH')"/> 
                </div>  
                <div xid="col12" class="col-sm-10"> 
                  <input xid="fDJBH" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fDJBH')"/> 
                </div> 
              </div>  
              <div xid="formGroup2" class="form-group"> 
                <div xid="col21" class="col-sm-2"> 
                  <label xid="fDJRQL" class="control-label" bind-text="mainData.label('fDJRQ')"/> 
                </div>  
                <div xid="col22" class="col-sm-10"> 
                  <input xid="fDJRQ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fDJRQ')" readonly="true"/> 
                </div> 
              </div>  
              <div xid="formGroup41" class="form-group"> 
                <div xid="col411" class="col-sm-2"> 
                  <label xid="fKHBML" class="control-label" bind-text="mainData.label('fKHBM')"/> 
                </div>  
                <div xid="col421" class="col-sm-10"> 
                  <input xid="fKHBM" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fKHBM')" bind-dblclick="fKHBMDblclick"/> 
                </div> 
              </div>  
              <div xid="formGroup4" class="form-group"> 
                <div xid="col41" class="col-sm-2"> 
                  <label xid="fKHMCL" class="control-label" bind-text="mainData.label('fKHMC')"/> 
                </div>  
                <div xid="col42" class="col-sm-10"> 
                  <input xid="fKHMC" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fKHMC')" readonly="true"/> 
                </div> 
              </div>  
              <div xid="formGroup5" class="form-group"> 
                <div xid="col51" class="col-sm-2"> 
                  <label xid="fYWLXL" class="control-label" bind-text="mainData.label('fYWLX')"/> 
                </div>  
                <div xid="col52" class="col-sm-10"> 
                  <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                    xid="gridSelect1" bind-ref="$model.mainData.ref(&quot;fYWLX&quot;)" inputFilterable="true"> 
                    <option xid="option1" data="typeData" value="fYWMC" label="fYWMC"/>
                  </div>
                </div> 
              </div>  
              <div xid="formGroup6" class="form-group"> 
                <div xid="col61" class="col-sm-2"> 
                  <label xid="fYWJSL" class="control-label" bind-text="mainData.label('fYWJS')"/> 
                </div>  
                <div xid="col62" class="col-sm-10"> 
                  <textarea xid="fYWJS" class="form-control" component="$UI/system/components/justep/textarea/textarea"
                    bind-ref="mainData.ref('fYWJS')" style="height:180px;" bind-dblclick="fYWJSDblclick"/> 
                </div> 
              </div>  
              <div xid="formGroup7" class="form-group"> 
                <div xid="col71" class="col-sm-2"> 
                  <label xid="fBZL" class="control-label" bind-text="mainData.label('fBZ')"/> 
                </div>  
                <div xid="col72" class="col-sm-10"> 
                  <textarea xid="fBZ" class="form-control" component="$UI/system/components/justep/textarea/textarea"
                    bind-ref="mainData.ref('fBZ')" bind-dblclick="fBZDblclick"/> 
                </div> 
              </div>  
              <div xid="formGroup3" class="form-group"> 
                <div xid="col31" class="col-sm-2"> 
                  <label xid="fTXSJL" class="control-label" bind-text="mainData.label('fTXSJ')"/> 
                </div>  
                <div xid="col32" class="col-sm-10"> 
                  <input xid="fTXSJ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fTXSJ')"/> 
                </div> 
              </div>  
              <div xid="formGroup8" class="form-group"> 
                <div xid="col81" class="col-sm-2"> 
                  <label xid="fWHSJL" class="control-label" bind-text="mainData.label('fWHSJ')"/> 
                </div>  
                <div xid="col82" class="col-sm-10"> 
                  <input xid="fWHSJ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fWHSJ')" readonly="true"/> 
                </div> 
              </div>  
              <div xid="formGroup9" class="form-group"> 
                <div xid="col91" class="col-sm-2"> 
                  <label xid="fWHRL" class="control-label" bind-text="mainData.label('fWHR')"/> 
                </div>  
                <div xid="col92" class="col-sm-10"> 
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
