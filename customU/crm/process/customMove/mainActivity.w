<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:pc;"
  xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:226px;left:579px;" onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/bizData" xid="mainData"
      directDelete="true" autoLoad="true" concept="CU_JJZB" columns="" autoNew="false"
      onSaveCommit="DataSaveCommit" onValueChanged="mainDataValueChanged"> 
      <reader action="/custom/crm/logic/action/queryCU_JJZBAction"/>  
      <writer action="/custom/crm/logic/action/saveCU_JJZBAction"/>  
      <creator action="/custom/crm/logic/action/createCU_JJZBAction"/>  
      <rule xid="rule1"> 
        <readonly xid="readonly1"> 
          <expr xid="default28">val("fSH")?val("fSH")=='是':false</expr> 
        </readonly> 
      </rule> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" xid="detailData"
      directDelete="true" autoLoad="true" concept="CU_JJCB" columns="" autoNew="false"
      onAfterNew="detailDataAfterNew"> 
      <reader action="/custom/crm/logic/action/queryCU_JJCBAction"/>  
      <writer action="/custom/crm/logic/action/saveCU_JJCBAction"/>  
      <creator action="/custom/crm/logic/action/createCU_JJCBAction"/>  
      <master data="mainData" relation="fZBID"/>  
      <rule xid="rule2"> 
        <readonly xid="readonly2"> 
          <expr xid="default29">val("fSH")?val("fSH")=='1':false</expr> 
        </readonly> 
      </rule> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="personData" concept="CU_ZYXX"> 
      <creator xid="default1" action="/custom/crm/logic/action/createCU_ZYXXAction"/>  
      <reader xid="default2" action="/custom/crm/logic/action/queryCU_ZYXXAction"/>  
      <writer xid="default3" action="/custom/crm/logic/action/saveCU_ZYXXAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="person2Data" concept="CU_ZYXX"> 
      <creator xid="default5" action="/custom/crm/logic/action/createCU_ZYXXAction"/>  
      <reader xid="default6" action="/custom/crm/logic/action/queryCU_ZYXXAction"/>  
      <writer xid="default7" action="/custom/crm/logic/action/saveCU_ZYXXAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="typeData" idColumn="cause"> 
      <column label="cause" name="cause" type="String" xid="xid1"/>  
      <column label="type" name="type" type="String" xid="xid2"/>  
      <data xid="default4">[{"cause":"调整","type":"完全交接"},{"cause":"离职","type":"首次交接"},{"cause":"其他","type":"二次交接"}]</data> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="dateData" idColumn="date"> 
      <column label="date" name="date" type="String" xid="xid2"/>  
      <column label="days" name="days" type="String" xid="xid4"/>  
      <data xid="default11">[{"date":"今天","days":"1"},{"date":"一周","days":"7"},{"date":"一个月","days":"30"},{"date":"三个月","days":"90"},{"date":"一年","days":"360"},{"date":"全部","days":"720"}]</data> 
    </div> 
     <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="depData" idColumn="name" autoNew="true"> 
      <column label="name" name="name" type="String" xid="xid1"/>  
      <column label="days" name="days" type="String" xid="xid5"/> 
    </div>
  </div>  
  <span component="$UI/system/components/justep/bizFilter/bizFilter" xid="bizFilter"
    filterData="mainData" style="left:28px;top:290px;"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    status="normal" src="$UI/custom/crm/process/customMove/secondActivity.w" forceRefreshOnOpen="true"> 
    <result concept="detailData" operation="edit" origin="selectData" xid="default21"> 
      <mapping from="CU_KHXX" to="fKHID" xid="default22"/>  
      <mapping from="fKHBM" to="fKHBM" xid="default23"/>  
      <mapping from="fKHMC" to="fKHMC" xid="default24"/>  
      <mapping from="fZYMC" to="fLXR" xid="default25"/>  
      <mapping from="fFLMC" to="fSZQY" xid="default26"/>  
      <mapping from="fFLMC1" to="fBZY" xid="default27"/> 
    </result> 
  </span>  
  <div component="$UI/system/components/bootstrap/tabs/tabs" xid="tabs"> 
    <ul class="nav nav-tabs" xid="nav"> 
      <li class="active" xid="nav-list"> 
        <a content="ListTabContent" xid="listItem"><![CDATA[列表]]></a> 
      </li>  
      <li role="presentation" xid="nav-detail"> 
        <a content="detailTabContent" xid="detailItem"><![CDATA[详细]]></a> 
      </li> 
    </ul>  
    <div class="tab-content" xid="content"> 
      <div class="tab-pane active" xid="ListTabContent"> 
        <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar x-toolbar-spliter form-inline"> 
          <div component="$UI/system/components/justep/smartFilter/smartFilter"
            xid="smartFilter" filterData="mainData" filterCols="fDJRQ,fLB,fZYMC,fBZ,fWHSJ,fWHR"
            class="pull-right" autoRefreshMode="change"> 
            <input type="text" class="form-control" placeholder="搜索" data-bind="valueUpdate: ['input', 'afterkeydown']"
              bind-value="$model.comp($element.parentElement).searchText" bind-change="$model.comp($element.parentElement).onInputChange.bind($model.comp($element.parentElement))"
              xid="input2"/> 
          </div>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="newBtn" label="新建" onClick="newBtnClick" icon="icon-plus"> 
            <i xid="i8" class="icon-plus"/>  
            <span xid="span8">新建</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="saveBtn" onClick="{&quot;operation&quot;:&quot;mainData.save&quot;}" label="保存"> 
            <i xid="i9"/>  
            <span xid="span7">保存</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="button1" onClick="{&quot;operation&quot;:&quot;mainData.delete&quot;}"> 
            <i xid="i12"/>  
            <span xid="span12">保存</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link  btn-icon-left"
            xid="refreshBtn" onClick="{operation:'mainData.refresh'}" label="刷新" icon="linear linear-redo"> 
            <i xid="i1" class="linear linear-redo"/>  
            <span xid="span1">刷新</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            label="" xid="filterBtn" icon="icon-search" onClick="{operation:'bizFilter.menu'}"> 
            <i xid="i4" class="icon-search"/>  
            <span xid="span5"/> 
          </a>  
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
          flexibleWidth="true" rowActiveClass="active" class="table table-condensed table-hover"
          xid="mainTables" data="mainData" pagingType="simple_numbers" lengthMenu="10,25,50,100"
          onRowDblClick="orderTablesRowDblClick"> 
          <columns xid="column"> 
            <column name="fDJBH"/>  
            <column name="fDJRQ"/>  
            <column name="fLB"/>  
            <column name="fZYMC"/>  
            <column name="fSH"/>  
            <column name="fWHSJ"/>  
            <column name="fWHR"/> 
          </columns> 
        </div>  
        <div component="$UI/system/components/justep/pagerBar/pagerBar" class="x-pagerbar container-fluid"
          xid="pagerBar" data="mainData"> 
          <div class="row" xid="div1"> 
            <div class="col-sm-3" xid="div2"> 
              <div class="x-pagerbar-length" xid="div4"> 
                <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect"
                  class="x-pagerlimitselect" xid="pagerLimitSelect1"> 
                  <span xid="span15">显示</span>  
                  <select component="$UI/system/components/justep/select/select"
                    class="form-control input-sm" xid="select1"> 
                    <option value="10" xid="default9">10</option>  
                    <option value="20" xid="default10">20</option>  
                    <option value="50" xid="default14">50</option>  
                    <option value="100" xid="default15">100</option> 
                  </select>  
                  <span xid="span16">条</span> 
                </label> 
              </div> 
            </div>  
            <div class="col-sm-3" xid="div5"> 
              <div class="x-pagerbar-info" xid="div6">当前显示1-10条，共16条</div> 
            </div>  
            <div class="col-sm-6" xid="div7"> 
              <div class="x-pagerbar-pagination" xid="div8"> 
                <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination"
                  xid="pagination1"> 
                  <li class="prev" xid="li1"> 
                    <a href="#" xid="a1"> 
                      <span aria-hidden="true" xid="span17">«</span>  
                      <span class="sr-only" xid="span18">Previous</span> 
                    </a> 
                  </li>  
                  <li class="next" xid="li2"> 
                    <a href="#" xid="a3"> 
                      <span aria-hidden="true" xid="span19">»</span>  
                      <span class="sr-only" xid="span20">Next</span> 
                    </a> 
                  </li> 
                </ul> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div>  
      <div class="tab-pane" xid="detailTabContent"> 
        <div xid="detailBar" component="$UI/system/components/justep/toolBar/toolBar"
          class="x-toolbar x-toolbar-spliter"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="newBtn2" label="新建" onClick="{&quot;operation&quot;:&quot;mainData.new&quot;}"> 
            <i xid="i2"/>  
            <span xid="span2">新建</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="saveBtn2" onClick="saveBtn2Click" label="保存"> 
            <i xid="i10"/>  
            <span xid="span6">保存</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="delBtn2" onClick="{&quot;operation&quot;:&quot;mainData.delete&quot;}"> 
            <i xid="i13"/>  
            <span xid="span14"/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="refreshBtn2" onClick="{&quot;operation&quot;:&quot;mainData.refresh&quot;}" label="刷新"> 
            <i xid="i11"/>  
            <span xid="span9">刷新</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="preBtn" onClick="{operation:'mainData.prevRow'}"> 
            <i xid="i3"/>  
            <span xid="span3">上一条</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="nextBtn" onClick="{operation:'mainData.nextRow'}"> 
            <i xid="i5"/>  
            <span xid="span4">下一条</span> 
          </a>  
          <span component="$UI/system/components/justep/button/checkbox" class="x-checkbox"
            xid="auditCheckbox" label="审核" bind-ref="$model.mainData.ref(&quot;fSH&quot;)" checkedValue="是"
            uncheckedValue="否" onChange="auditCheckboxChange" disabled="true"/> 
        </div>  
        <div xid="mainForm" class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form"> 
          <div xid="formGroup1" class="form-group"> 
            <div xid="col111" class="col-sm-2"> 
              <label xid="fDJBHL" class="control-label" bind-text="mainData.label('fDJBH')"/> 
            </div>  
            <div xid="col121" class="col-sm-4"> 
              <input xid="fDJBH" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="mainData.ref('fDJBH')"/> 
            </div>  
            <div xid="col11" class="col-sm-2"> 
              <label xid="fDJRQL" class="control-label" bind-text="mainData.label('fDJRQ')"/> 
            </div>  
            <div xid="col12" class="col-sm-4"> 
              <input xid="fDJRQ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="mainData.ref('fDJRQ')" disabled="true"/> 
            </div> 
          </div>  
          <div xid="formGroup2" class="form-group"> 
            <div xid="col13" class="col-sm-2"> 
              <label xid="fLBL" class="control-label" bind-text="mainData.label('fLB')"/> 
            </div>  
            <div xid="col14" class="col-sm-4"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="causeGridSelect" bind-ref="$model.mainData.ref(&quot;fLB&quot;)"> 
                <option xid="option1" data="typeData" value="cause" label="cause"/> 
              </div> 
            </div>  
            <div xid="col13" class="col-sm-2"> 
              <label xid="fBYYL" class="control-label" bind-text="mainData.label('fBYY')"/> 
            </div>  
            <div xid="col14" class="col-sm-4"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="typeGridSelect" bind-ref="$model.mainData.ref(&quot;fBYY&quot;)"> 
                <option xid="option11" data="typeData" value="type" label="type"/> 
              </div> 
            </div> 
          </div>  
          <div xid="formGroup3" class="form-group"> 
            <div xid="col21" class="col-sm-2"> 
              <label xid="fLXRL" class="control-label" bind-text="mainData.label('fLXR')"/> 
            </div>  
            <div xid="col22" class="col-sm-4"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="outGridSelect" bind-ref="$model.mainData.ref(&quot;fLXR&quot;)"> 
                <option xid="option22" data="person2Data" value="CU_ZYXX" label="fZYMC"/> 
              </div> 
            </div>  
            <div xid="col23" class="col-sm-2"> 
              <label xid="fGZRL" class="control-label" bind-text="mainData.label('fGZR')"/> 
            </div>  
            <div xid="col24" class="col-sm-4"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="inGridSelect" bind-ref="$model.mainData.ref(&quot;fGZR&quot;)" bind-extRef="$model.mainData.ref(&quot;fBZY&quot;)"> 
                <option xid="option3" data="personData" label="fZYMC" value="CU_ZYXX"
                  ext="fZYMC"/> 
              </div> 
            </div> 
          </div>  
          <div xid="formGroup4" class="form-group"> 
            <div xid="col31" class="col-sm-2"> 
              <label xid="fBZL" class="control-label" bind-text="mainData.label('fBZ')"/> 
            </div>  
            <div xid="col32" class="col-sm-10"> 
              <input xid="fBZ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="mainData.ref('fBZ')"/> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/controlGroup/controlGroup"
            class="x-control-group" title="从列表" xid="controlGroup1"> 
            <div class="x-control-group-title" xid="controlGroupTitle1"> 
              <span xid="span21">title</span> 
            </div>  
            <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar x-toolbar-spliter"
              xid="listBar"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
                onClick="personBtnClick" xid="personBtn" icon="linear linear-users"
                label="选择"> 
                <i xid="i14" class="linear linear-users"/>  
                <span xid="span13">选择</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
                xid="deleteBtn" onClick="{operation:'detailData.delete'}"> 
                <i xid="i7"/>  
                <span xid="span11">删除</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
                xid="addBtn" icon="icon-plus" label="添加" onClick="{operation:'detailData.new'}"
                style="visibility:hidden;"> 
                <i xid="i6" class="icon-plus"/>  
                <span xid="span10">添加</span> 
              </a> 
            </div>  
            <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
              xid="detailGrid" data="detailData" height="auto" class="x-grid-no-bordered"> 
              <columns xid="columns"> 
                <column name="fKHBM" editable="true"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fKHBM')"/> 
                  </editor> 
                </column>  
                <column name="fKHMC" editable="true"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fKHMC')"/> 
                  </editor> 
                </column>  
                <column name="fBZY" editable="true"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fSZQY')"/> 
                  </editor> 
                </column>  
                <column name="fSZQY" editable="true"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fSZQY')"/> 
                  </editor> 
                </column>  
                <column name="fLXR" editable="true"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fLXR')"/> 
                  </editor> 
                </column>  
                <column name="fGZR" editable="true"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fGZR')"/> 
                  </editor> 
                </column> 
              </columns> 
            </div>  
            <div component="$UI/system/components/justep/pagerBar/pagerBar"
              class="x-pagerbar container-fluid" xid="detailPagerBar" data="detailData"> 
              <div class="row" xid="div3"> 
                <div class="col-sm-3" xid="div9"> 
                  <div class="x-pagerbar-length" xid="div10"> 
                    <label component="$UI/system/components/justep/pagerLimitSelect/pagerLimitSelect"
                      class="x-pagerlimitselect" xid="pagerLimitSelect2"> 
                      <span xid="span22">显示</span>  
                      <select component="$UI/system/components/justep/select/select"
                        class="form-control input-sm" xid="select2"> 
                        <option value="10" xid="default16">10</option>  
                        <option value="20" xid="default17">20</option>  
                        <option value="50" xid="default18">50</option>  
                        <option value="100" xid="default19">100</option> 
                      </select>  
                      <span xid="span23">条</span> 
                    </label> 
                  </div> 
                </div>  
                <div class="col-sm-3" xid="div11"> 
                  <div class="x-pagerbar-info" xid="div12">当前显示0条，共0条</div> 
                </div>  
                <div class="col-sm-6" xid="div13"> 
                  <div class="x-pagerbar-pagination" xid="div14"> 
                    <ul class="pagination" component="$UI/system/components/bootstrap/pagination/pagination"
                      xid="pagination2"> 
                      <li class="prev" xid="li3"> 
                        <a href="#" xid="a2"> 
                          <span aria-hidden="true" xid="span24">«</span>  
                          <span class="sr-only" xid="span25">Previous</span> 
                        </a> 
                      </li>  
                      <li class="next" xid="li4"> 
                        <a href="#" xid="a4"> 
                          <span aria-hidden="true" xid="span26">»</span>  
                          <span class="sr-only" xid="span27">Next</span> 
                        </a> 
                      </li> 
                    </ul> 
                  </div> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  </div> 
</div>
