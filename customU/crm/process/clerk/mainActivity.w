<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" xid="window" design="device:pc;">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;left:350px;top:185px;"> 
    <div component="$UI/system/components/justep/data/bizData" xid="mainData"
      directDelete="true" autoLoad="true" concept="CU_ZYXX" limit="15" columns=""
      onSaveCommit="saveCommit"> 
      <reader action="/custom/crm/logic/action/queryCU_ZYXXAction"/>  
      <writer action="/custom/crm/logic/action/saveCU_ZYXXAction"/>  
      <creator action="/custom/crm/logic/action/createCU_ZYXXAction"/>  
      <calculateRelation relation="calcCheckBox"/> 
    </div> 
     <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="typeData" idColumn="type"> 
      <column label="type" name="type" type="String" xid="xid1"/>  
      <column label="sex" name="sex" type="String" xid="xid2"/>  
      <column label="ganbu" name="ganbu" type="String" xid="xid4"/>  
      <data xid="default5">[{"type":"职工","sex":"男"},{"type":"劳务工","sex":"女","ganbu":"干部"}]</data> 
    </div>  
  </div>  
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
            xid="smartFilter1" filterData="mainData" class="pull-right" filterCols="fZYBM,fZYMC,fXB,fYDDH,fLXWX,fLXQQ,fWHSJ,fWHR"> 
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
            xid="button4" onClick="button2Click" label="删除" icon="icon-minus"> 
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
          responsive="true"> 
          <columns xid="column"> 
            <column name="fZYBM"/>  
            <column name="fZYMC"/>  
            <column name="fXB"/>  
            <column name="fYDDH"/>  
            <column name="fLXWX"/>  
            <column name="fLXQQ"/>  
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
            class="btn btn-link btn-icon-left" onClick="{operation:'mainData.save'}"
            xid="saveBtn"> 
            <i/>  
            <span>保存</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            label="删除" xid="button2" icon="icon-minus" onClick="button2Click"> 
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
                  <label xid="fZYBML" class="control-label" bind-text="mainData.label('fZYBM')"/> 
                </div>  
                <div xid="col22" class="col-sm-10"> 
                  <input xid="fZYBM" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fZYBM')"/> 
                </div> 
              </div>  
              <div xid="formGroup3" class="form-group"> 
                <div xid="col31" class="col-sm-2"> 
                  <label xid="fZYMCL" class="control-label" bind-text="mainData.label('fZYMC')"/> 
                </div>  
                <div xid="col32" class="col-sm-10"> 
                  <input xid="fZYMC" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fZYMC')"/> 
                </div> 
              </div>  
              <div xid="formGroup4" class="form-group"> 
                <div xid="col41" class="col-sm-2"> 
                  <label xid="fXBL" class="control-label" bind-text="mainData.label('fXB')"/> 
                </div>  
                <div xid="col42" class="col-sm-10"> 
                  <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                    xid="sexGridSelect" bind-ref="$model.mainData.ref(&quot;fXB&quot;)" inputFilterable="true"> 
                    <option xid="option2" data="typeData" value="sex" label="sex"/> 
                  </div> 
                </div> 
              </div> 
               <div xid="formGroup31" class="form-group"> 
                <div xid="col311" class="col-sm-2"> 
                  <label xid="fGWL" class="control-label" bind-text="mainData.label('fGW')"/> 
                </div>  
                <div xid="col321" class="col-sm-10"> 
                  <input xid="fGW" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fGW')"/> 
                </div> 
              </div>   
              <div xid="formGroup5" class="form-group"> 
                <div xid="col51" class="col-sm-2"> 
                  <label xid="fCSNYL" class="control-label" bind-text="mainData.label('fCSNY')"/> 
                </div>  
                <div xid="col52" class="col-sm-10"> 
                  <input xid="fCSNY" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fCSNY')"/> 
                </div> 
              </div>  
              <div xid="formGroup6" class="form-group"> 
                <div xid="col61" class="col-sm-2"> 
                  <label xid="fRZSJL" class="control-label" bind-text="mainData.label('fRZSJ')"/> 
                </div>  
                <div xid="col62" class="col-sm-10"> 
                  <input xid="fRZSJ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fRZSJ')"/> 
                </div> 
              </div>  
              <div xid="formGroup7" class="form-group"> 
                <div xid="col71" class="col-sm-2"> 
                  <label xid="fYDDHL" class="control-label" bind-text="mainData.label('fYDDH')"/> 
                </div>  
                <div xid="col72" class="col-sm-10"> 
                  <input xid="fYDDH" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fYDDH')"/> 
                </div> 
              </div>  
              <div xid="formGroup8" class="form-group"> 
                <div xid="col81" class="col-sm-2"> 
                  <label xid="fLXDHL" class="control-label" bind-text="mainData.label('fLXDH')"/> 
                </div>  
                <div xid="col82" class="col-sm-10"> 
                  <input xid="fLXDH" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fLXDH')"/> 
                </div> 
              </div>  
              <div xid="formGroup9" class="form-group"> 
                <div xid="col91" class="col-sm-2"> 
                  <label xid="fLXWXL" class="control-label" bind-text="mainData.label('fLXWX')"/> 
                </div>  
                <div xid="col92" class="col-sm-10"> 
                  <input xid="fLXWX" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fLXWX')"/> 
                </div> 
              </div>  
              <div xid="formGroup10" class="form-group"> 
                <div xid="col101" class="col-sm-2"> 
                  <label xid="fLXQQL" class="control-label" bind-text="mainData.label('fLXQQ')"/> 
                </div>  
                <div xid="col102" class="col-sm-10"> 
                  <input xid="fLXQQ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fLXQQ')"/> 
                </div> 
              </div>  
              <div xid="formGroup11" class="form-group"> 
                <div xid="col111" class="col-sm-2"> 
                  <label xid="fSFZHML" class="control-label" bind-text="mainData.label('fSFZHM')"/> 
                </div>  
                <div xid="col112" class="col-sm-10"> 
                  <input xid="fSFZHM" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fSFZHM')"/> 
                </div> 
              </div>  
              <div xid="formGroup12" class="form-group"> 
                <div xid="col121" class="col-sm-2"> 
                  <label xid="fSHDZL" class="control-label" bind-text="mainData.label('fSHDZ')"/> 
                </div>  
                <div xid="col122" class="col-sm-10"> 
                  <input xid="fSHDZ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fSHDZ')"/> 
                </div> 
              </div>  
              <div xid="formGroup13" class="form-group"> 
                <div xid="col131" class="col-sm-2"> 
                  <label xid="fBZL" class="control-label" bind-text="mainData.label('fBZ')"/> 
                </div>  
                <div xid="col132" class="col-sm-10"> 
                  <input xid="fBZ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fBZ')"/> 
                </div> 
              </div>  
              <div xid="formGroup14" class="form-group"> 
                <div xid="col141" class="col-sm-2"> 
                  <label xid="fZDYYL" class="control-label" bind-text="mainData.label('fZDYY')"/> 
                </div>  
                <div xid="col142" class="col-sm-10"> 
                  <input xid="fZDYY" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fZDYY')"/> 
                </div> 
              </div>  
              <div xid="formGroup15" class="form-group"> 
                <div xid="col151" class="col-sm-2"> 
                  <label xid="fZDYEL" class="control-label" bind-text="mainData.label('fZDYE')"/> 
                </div>  
                <div xid="col152" class="col-sm-10"> 
                  <input xid="fZDYE" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fZDYE')"/> 
                </div> 
              </div>  
              <div xid="formGroup16" class="form-group"> 
                <div xid="col161" class="col-sm-2"> 
                  <label xid="fZDYSL" class="control-label" bind-text="mainData.label('fZDYS')"/> 
                </div>  
                <div xid="col162" class="col-sm-10"> 
                  <input xid="fZDYS" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fZDYS')"/> 
                </div> 
              </div>  
              <div xid="formGroup17" class="form-group"> 
                <div xid="col171" class="col-sm-2"> 
                  <label xid="fZDYSIL" class="control-label" bind-text="mainData.label('fZDYSI')"/> 
                </div>  
                <div xid="col172" class="col-sm-10"> 
                  <input xid="fZDYSI" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fZDYSI')"/> 
                </div> 
              </div>  
              <div xid="formGroup18" class="form-group"> 
                <div xid="col181" class="col-sm-2"> 
                  <label xid="fZDYWL" class="control-label" bind-text="mainData.label('fZDYW')"/> 
                </div>  
                <div xid="col182" class="col-sm-10"> 
                  <input xid="fZDYW" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fZDYW')"/> 
                </div> 
              </div>  
              <div xid="formGroup19" class="form-group"> 
                <div xid="col191" class="col-sm-2"> 
                  <label xid="fZDYLL" class="control-label" bind-text="mainData.label('fZDYL')"/> 
                </div>  
                <div xid="col192" class="col-sm-10"> 
                  <input xid="fZDYL" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fZDYL')"/> 
                </div> 
              </div>  
              <div xid="formGroup20" class="form-group"> 
                <div xid="col201" class="col-sm-2"> 
                  <label xid="fWHSJL" class="control-label" bind-text="mainData.label('fWHSJ')"/> 
                </div>  
                <div xid="col202" class="col-sm-10"> 
                  <input xid="fWHSJ" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fWHSJ')" readonly="true"/> 
                </div> 
              </div>  
              <div xid="formGroup21" class="form-group"> 
                <div xid="col211" class="col-sm-2"> 
                  <label xid="fWHRL" class="control-label" bind-text="mainData.label('fWHR')"/> 
                </div>  
                <div xid="col212" class="col-sm-10"> 
                  <input xid="fWHR" class="form-control" component="$UI/system/components/justep/input/input"
                    bind-ref="mainData.ref('fWHR')"/> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
