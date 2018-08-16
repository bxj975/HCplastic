<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" component="$UI/system/components/justep/window/window" design="device:pc;"
  xid="window">  
  <div component="$UI/system/components/justep/model/model" xid="model" style="height:auto;top:71px;left:759px;"
    onLoad="modelLoad"> 
    <div component="$UI/system/components/justep/data/bizData" xid="mainData"
      directDelete="true" autoLoad="true" concept="CU_DDZB" columns="" autoNew="false"
      onSaveCommit="DataSaveCommit" onValueChanged="mainDataValueChanged" onBeforeSave="mainDataBeforeSave"> 
      <reader action="/custom/crm/logic/action/queryCU_DDZBAction"/>  
      <writer action="/custom/crm/logic/action/saveCU_DDZBAction"/>  
      <creator action="/custom/crm/logic/action/createCU_DDZBAction"/>  
      <rule xid="rule1"> 
        <readonly xid="readonly1"> 
          <expr xid="default22">val("fBYSI")?val("fBYSI")=='是':false</expr>
        </readonly>  
        <col name="fKHBM" xid="ruleCol1"> 
          <required xid="required1"> 
            <expr xid="default4">true</expr>  
            <message xid="default5">有不能为空项目未填！</message>
          </required> 
        </col> 
      </rule>
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="typeData" idColumn="send"> 
      <column label="send" name="send" type="String" xid="xid1"/>  
      <column label="model" name="model" type="String" xid="xid3"/>  
      <data xid="default30">[{"send":"厂送","model":"新版印刷"},{"send":"发门市","model":"原版印刷"},{"send":"自提","model":"改版印刷"}]</data>
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="czData" concept="CU_CZXX"> 
      <creator xid="default6" action="/custom/crm/logic/action/createCU_CZXXAction"/>  
      <reader xid="default7" action="/custom/crm/logic/action/queryCU_CZXXAction"/>  
      <writer xid="default8" action="/custom/crm/logic/action/saveCU_CZXXAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="dxData" concept="CU_DXXX"> 
      <creator xid="default11" action="/custom/crm/logic/action/createCU_DXXXAction"/>  
      <reader xid="default12" action="/custom/crm/logic/action/queryCU_DXXXAction"/>  
      <writer xid="default13" action="/custom/crm/logic/action/saveCU_DXXXAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="false"
      xid="main2Data" idColumn="fKHBM" autoNew="true"> 
      <column name="fKHBM" type="String" xid="xid2"/>  
      <column name="fKHMC" type="String" xid="xid4"/>  
      <column name="fFHFS" type="String" xid="xid5"/>  
      <column name="fKHYQ" type="String" xid="xid6"/>  
      <column name="fBZ" type="String" xid="xid7"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="detail2Data" autoNew="false" idColumn="fCPBM"> 
      <column name="fCPBM" type="String" xid="xid8"/>  
      <column name="fCPMC" type="String" xid="xid9"/>  
      <column name="fGGXH" type="String" xid="xid10"/>  
      <column name="fYSLX" type="String" xid="xid11"/>  
      <column name="fCZ" type="String" xid="xid12"/>  
      <column name="fDX" type="String" xid="xid13"/>  
      <column name="fZBLX" type="String" xid="xid14"/>  
      <column name="fBS" type="Integer" xid="xid15"/>  
      <column name="fBDJ" type="Decimal" xid="xid16"/>  
      <column name="fBFHJ" type="String" xid="xid17"/>  
      <column name="fJLDW" type="String" xid="xid18"/>  
      <column name="fJG" type="Decimal" xid="xid19"/>  
      <column name="fSL" type="Decimal" xid="xid20"/>  
      <column name="fHJ" type="Decimal" xid="xid21"/>  
      <column name="fCPYQ" type="String" xid="xid22"/>  
      <column name="fCPBZ" type="String" xid="xid23"/> 
    </div>  
    <div component="$UI/system/components/justep/data/bizData" xid="detailData"
      directDelete="true" autoLoad="true" concept="CU_DDCB" columns="" autoNew="false"
      onValueChanged="mainDataValueChanged" onAfterNew="detailDataAfterNew"> 
      <reader action="/custom/crm/logic/action/queryCU_DDCBAction"/>  
      <writer action="/custom/crm/logic/action/saveCU_DDCBAction"/>  
      <creator action="/custom/crm/logic/action/createCU_DDCBAction"/>  
      <master data="mainData" relation="fZBID"/>  
      <rule xid="rule2"> 
        <readonly xid="readonly2"> 
          <expr xid="default23">val("fBYSI")?val("fBYSI")=='1':false</expr>
        </readonly>  
        <col name="fSL" xid="ruleCol2"> 
          <required xid="required2"> 
            <expr xid="default25">true</expr>  
            <message xid="default31">有不能为空项目未填！</message>
          </required> 
        </col>  
        <col name="fCPBM" xid="ruleCol3"> 
          <required xid="required3"> 
            <message xid="default32">有不能为空项目未填！</message>  
            <expr xid="default33">true</expr>
          </required> 
        </col>  
        <col name="fYSLX" xid="ruleCol4"> 
          <required xid="required4"> 
            <message xid="default34">有不能为空项目未填！</message>  
            <expr xid="default35">true</expr>
          </required> 
        </col> 
      </rule>
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
      xid="gzrData" concept="CU_ZYXX"> 
      <creator xid="default44" action="/custom/crm/logic/action/createCU_ZYXXAction"/>  
      <reader xid="default45" action="/custom/crm/logic/action/queryCU_ZYXXAction"/>  
      <writer xid="default46" action="/custom/crm/logic/action/saveCU_ZYXXAction"/> 
    </div>  
    <div component="$UI/system/components/justep/data/data" autoLoad="true"
      xid="zblxData" idColumn="type">
      <column label="type" name="type" type="String" xid="xid24"/>  
      <data xid="default48">[{"type":"原版印刷"},{"type":"新版印刷"},{"type":"改版印刷"}]</data>
    </div>
    <div component="$UI/system/components/justep/data/bizData" autoLoad="true"
      xid="personData" concept="CU_ZYXX" onAfterRefresh="personDataAfterRefresh" confirmRefresh="false"> 
      <reader xid="default5" action="/custom/crm/logic/action/queryCU_ZYXXAction"/>  
      <filter name="filter0" xid="filter1"><![CDATA[]]></filter>  
      <creator xid="default38" action="/custom/crm/logic/action/createCU_ZYXXAction"/>  
      <writer xid="default39" action="/custom/crm/logic/action/saveCU_ZYXXAction"/> 
    </div> 
  </div>  
  <span component="$UI/system/components/justep/bizFilter/bizFilter" xid="bizFilter"
    filterData="mainData" style="left:28px;top:290px;"/>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog2"
    style="top:16px;left:371px;" src="$UI/custom/crm/process/order/thirdActivity.w"
    height="80%" width="80%" status="normal" forceRefreshOnOpen="true"> 
    <result concept="detailData" operation="edit" origin="selectData" xid="default3"> 
      <mapping from="fCPBM" to="fCPBM" xid="default20"/>  
      <mapping from="fCPMC" to="fCPMC" xid="default21"/>  
      <mapping from="fGGXH" to="fGGXH" xid="default24"/>  
      <mapping from="fJG" to="fJG" xid="default26"/>  
      <mapping from="fJLDW" to="fJLDW" xid="default27"/>  
      <mapping from="fYSLX" to="fYSLX" xid="default28"/>  
      <mapping from="fCZ" to="fCZ" xid="default29"/>  
      <mapping from="fDX" to="fDX" xid="default36"/>  
      <mapping from="fCPYQ" to="fCPYQ" xid="default37"/>  
      <mapping from="CU_CPXX" to="fBYY" xid="default40"/>  
      <mapping from="fBZ" to="fCPBZ" xid="default41"/>
    </result>
  </span>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog1"
    src="$UI/custom/crm/process/order/secondActivity.w" style="top:11px;left:309px;"
    width="80%" height="80%" status="normal" forceRefreshOnOpen="true"> 
    <result concept="mainData" operation="modify" origin="dialogData" xid="default49"> 
      <mapping from="fKHBM" to="fKHBM" xid="default50"/>  
      <mapping from="fKHMC" to="fKHMC" xid="default51"/>  
      <mapping from="CU_KHXX" to="fBYY" xid="default52"/>
    </result>
  </span>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog3"
    src="$UI/custom/crm/process/order/forthActivity.w" status="normal" style="top:18px;left:200px;" forceRefreshOnOpen="true"> 
    <result concept="mainData" operation="modify" origin="dialogData" xid="default72"> 
      <mapping from="fMBNR" to="fKHYQ" xid="default73"/> 
    </result> 
  </span>  
  <span component="$UI/system/components/justep/windowDialog/windowDialog" xid="windowDialog6"
    src="$UI/custom/crm/process/order/forthActivity.w" status="normal" style="top:91px;left:103px;" forceRefreshOnOpen="true"> 
    <result concept="detailData" operation="modify" origin="dialogData" xid="default1"> 
      <mapping from="fMBNR" to="fCPBZ" xid="default2"/> 
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
            xid="smartFilter" filterData="mainData" filterCols="fHTBH,fDJBH,fDJRQ,fTXSJ,fKHBM,fKHMC,fYSLX,fGZR,fBZY"
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
            xid="delBtn1" onClick="delBtn1Click"> 
            <i xid="i12"/>  
            <span xid="span12">删除</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link  btn-icon-left"
            xid="refreshBtn" onClick="{operation:'mainData.refresh'}"> 
            <i xid="i1"/>  
            <span xid="span1">刷新</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link"
            label="弃审" xid="noBtn" onClick="noBtnClick" disabled="true"> 
            <i xid="i19"/>  
            <span xid="span31">弃审</span>
          </a>
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            label="" xid="filterBtn" icon="icon-search" onClick="{operation:'bizFilter.menu'}"> 
            <i xid="i4" class="icon-search"/>  
            <span xid="span5"/> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="saveBtn" onClick="{&quot;operation&quot;:&quot;mainData.save&quot;}" label="保存" style="visibility:hidden;"> 
            <i xid="i9"/>  
            <span xid="span7">保存</span> 
          </a>  
          <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
            xid="gridSelect2" style="width:120px;" bind-ref="$model.depData.ref(&quot;name&quot;)"
            inputFilterable="true"> 
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
          flexibleWidth="true" rowActiveClass="active" class="table table-condensed table-hover"
          xid="mainTables" data="mainData" pagingType="simple_numbers" lengthMenu="10,25,50,100"
          onRowDblClick="orderTablesRowDblClick"> 
          <columns xid="column"> 
            <column name="fDJBH"/>  
            <column name="fDJRQ"/>  
            <column name="fKHMC"/>  
            <column name="fTXSJ"/> 
            <column name="fGZR"/> 
            <column name="fBYSI"/>  
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
            xid="newBtn2" label="新建" icon="linear linear-bus"> 
            <i xid="i2" class="linear linear-bus"/>  
            <span xid="span2">新建</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="saveBtn2" onClick="saveBtn2Click" label="保存"> 
            <i xid="i10"/>  
            <span xid="span6">保存</span> 
          </a>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="delBtn2" onClick="delBtn2Click"> 
            <i xid="i13"/>  
            <span xid="span14">删除</span> 
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
            xid="yesCheckbox" label="审核" bind-ref="$model.mainData.ref(&quot;fBYSI&quot;)" checkedValue="是"
            uncheckedValue="否" onChange="yesCheckboxChange"/>  
          <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
            xid="button3" onClick="{&quot;operation&quot;:&quot;mainData.refresh&quot;}" label="刷新" style="visibility:hidden;"> 
            <i xid="i11"/>  
            <span xid="span9">刷新</span> 
          </a> 
        </div>  
        <div xid="mainForm" class="form-horizontal container-fluid" component="$UI/system/components/bootstrap/form/form"> 
          <div xid="formGroup1" class="form-group"> 
            <div xid="col11" class="col-sm-2"> 
              <label xid="fDJBHL" class="control-label" bind-text="mainData.label('fDJBH')"/> 
            </div>  
            <div xid="col12" class="col-sm-4"> 
              <input xid="fDJBH" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="mainData.ref('fDJBH')"/> 
            </div>  
            <div xid="col13" class="col-sm-2"> 
              <label xid="fDJRQL" class="control-label" bind-text="mainData.label('fDJRQ')"/> 
            </div>  
            <div xid="col14" class="col-sm-4"> 
              <input xid="fDJRQ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="mainData.ref('fDJRQ')" onChange="fDJRQChange"/> 
            </div> 
          </div>  
          <div xid="formGroup2" class="form-group"> 
            <div xid="col21" class="col-sm-2"> 
              <label xid="fKHMCL" class="control-label" bind-text="mainData.label('fKHMC')"/> 
            </div>  
            <div xid="col22" class="col-sm-3"> 
              <input xid="fKHMC" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="$model.mainData.ref(&quot;fKHMC&quot;)" valueUpdateMode="input" bind-dblclick="fKHMCDblclick"/> 
            </div>  
            <div xid="col231" class="col-sm-1"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-default"
                xid="customBtn" onClick="customBtnClick" icon="linear linear-volume"> 
                <i xid="i17" class="linear linear-volume"/>  
                <span xid="span29"/> 
              </a> 
            </div>  
            <div xid="col23" class="col-sm-2"> 
              <label xid="fKHBML" class="control-label" bind-text="mainData.label('fKHBM')"/> 
            </div>  
            <div xid="col24" class="col-sm-4"> 
              <input xid="fKHBM" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="$model.mainData.ref(&quot;fKHBM&quot;)" readonly="true"/> 
            </div> 
          </div>  
          <div xid="formGroup6" class="form-group"> 
            <div xid="col61" class="col-sm-2"> 
              <label xid="fTXSJL" class="control-label" bind-text="mainData.label('fTXSJ')"/> 
            </div>  
            <div xid="col62" class="col-sm-4"> 
              <input xid="fTXSJ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="mainData.ref('fTXSJ')"/> 
            </div>  
            <div xid="col53" class="col-sm-2"> 
              <label xid="fFHFSL" class="control-label" bind-text="mainData.label('fFHFS')"/> 
            </div>  
            <div xid="col54" class="col-sm-4"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="gridSelect4" bind-ref="$model.mainData.ref(&quot;fFHFS&quot;)"> 
                <option xid="option4" data="typeData" value="send" label="send"
                  filter=" $model.typeData.val(&quot;send&quot;) !=''"/> 
              </div> 
            </div> 
          </div>  
          <div xid="formGroup4" class="form-group"> 
            <div xid="col41" class="col-sm-2"> 
              <label xid="fWHSJL" class="control-label" bind-text="mainData.label('fWHSJ')"/> 
            </div>  
            <div xid="col42" class="col-sm-4"> 
              <input xid="fWHSJ" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="mainData.ref('fWHSJ')" readonly="true"/> 
            </div>  
            <div xid="col51" class="col-sm-2"> 
              <label xid="fWHRL" class="control-label" bind-text="mainData.label('fWHR')"/> 
            </div>  
            <div xid="col52" class="col-sm-4"> 
              <input xid="fWHR" class="form-control" component="$UI/system/components/justep/input/input"
                bind-ref="mainData.ref('fWHR')" readonly="true"/> 
            </div> 
          </div>  
          <div xid="formGroup5" class="form-group"> 
            <div xid="col51" class="col-sm-2"> 
              <label xid="fKCYQL" class="control-label" bind-text="mainData.label('fKHYQ')"/> 
            </div>  
            <div xid="col52" class="col-sm-4"> 
              <textarea xid="fKHYQ" class="form-control" component="$UI/system/components/justep/textarea/textarea"
                bind-ref="mainData.ref('fKHYQ')" style="height:120px;" bind-dblclick="fKHYQDblclick"/> 
            </div>  
            <div xid="col31" class="col-sm-2"> 
              <label xid="fGZRL" class="control-label" bind-text="mainData.label('fGZR')"/> 
            </div>  
            <div xid="col32" class="col-sm-4"> 
              <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                xid="gzrGridSelect" bind-ref="$model.mainData.ref(&quot;fGZR&quot;)" inputFilterable="true"
                disabled="true"> 
                <option xid="option21" data="gzrData" value="fZYMC" label="fZYMC"/> 
              </div> 
            </div> 
          </div>  
          <div component="$UI/system/components/justep/controlGroup/controlGroup"
            class="x-control-group" title="从列表" xid="controlGroup1"> 
            <div component="$UI/system/components/justep/toolBar/toolBar" class="x-toolbar x-toolbar-spliter"
              xid="listBar"> 
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
                xid="productBtn" icon="linear linear-bubble" label="选择" onClick="productBtnClick"> 
                <i xid="i15" class="linear linear-bubble"/>  
                <span xid="span28">选择</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
                xid="deleteBtn" onClick="{operation:'detailData.delete'}"> 
                <i xid="i7"/>  
                <span xid="span11">删除</span> 
              </a>  
              <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-icon-left"
                xid="addBtn" icon="icon-plus" label="添加" onClick="{operation:'detailData.new'}"
                disabled="true" style="visibility:hidden;"> 
                <i xid="i6" class="icon-plus"/>  
                <span xid="span10">添加</span> 
              </a> 
            </div>  
            <div component="$UI/system/components/justep/grid/grid" hiddenCaptionbar="true"
              xid="detailGrid" data="detailData" height="auto" class="x-grid-no-bordered"
              useFooter="true" moveColumn="false"> 
              <columns xid="columns"> 
                <column name="fCPBM" editable="true" width="80px"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fCPBM')" readonly="true"/> 
                  </editor> 
                </column>  
                <column name="fCPMC" editable="true" width="180px"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fCPMC')" readonly="true"/> 
                  </editor> 
                </column>  
                <column name="fGGXH" editable="true" width="180px"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fGGXH')" readonly="true"/> 
                  </editor> 
                </column>  
                <column name="fYSLX" editable="true" width="40px"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fYSLX')" readonly="true"/> 
                  </editor> 
                </column>  
                <column name="fCZ" editable="true" width="140px"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fCZ')" readonly="true"/> 
                  </editor> 
                </column>  
                <column name="fDX" editable="true" width="140px"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fDX')" readonly="true"/> 
                  </editor> 
                </column>
                <column name="fJLDW" editable="true" width="40px"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref(&quot;fJLDW&quot;)" readonly="true"/> 
                  </editor> 
                </column>    
                <column name="fZBLX" editable="true" width="80px"> 
                  <editor> 
                    <div class="x-gridSelect" component="$UI/system/components/justep/gridSelect/gridSelect"
                      xid="zblxgridSelect" bind-ref="ref(&quot;fZBLX&quot;)" clearButton="true" tabindex="11"> 
                      <option xid="option1" data="zblxData" value="type" label="type"/>
                    </div>
                  </editor> 
                </column>  
                <column name="fBS" editable="true" width="40px"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref(&quot;fBS&quot;)" valueUpdateMode="input"
                      onChange="input1Change" tabindex="12"/> 
                  </editor> 
                </column>  
                <column name="fBDJ" editable="true" width="60px"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref(&quot;fBDJ&quot;)" valueUpdateMode="input"
                      onChange="input1Change" tabindex="13"/> 
                  </editor> 
                </column>  
                
                <column name="fJG" editable="true" width="60px"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fJG')" valueUpdateMode="input"
                      onChange="input1Change" tabindex="14"/> 
                  </editor> 
                </column>  
                <column name="fSL" editable="true" width="60px"> 
                  <editor> 
                    <input component="$UI/system/components/justep/input/input"
                      class="form-control" bind-ref="ref('fSL')" onChange="input1Change"
                      valueUpdateMode="input" tabindex="15"/> 
                  </editor> 
                </column> 
              </columns> 
            </div>  
            <div xid="formGroup5" class="form-group"> 
              <div xid="col111" class="col-sm-2"> 
                <label xid="fCPYQL" class="control-label" bind-text="detailData.label('fCPYQ')"/> 
              </div>  
              <div xid="col121" class="col-sm-4"> 
                <textarea xid="fCPYQ" class="form-control" component="$UI/system/components/justep/textarea/textarea"
                  bind-ref="detailData.ref('fCPYQ')" style="height:120px;" tabindex="16"/> 
              </div>  
              <div xid="col211" class="col-sm-2"> 
                <label xid="fCPBZL" class="control-label" bind-text="detailData.label('fCPBZ')"/> 
              </div>  
              <div xid="col221" class="col-sm-4"> 
                <textarea xid="fCPBZ" class="form-control" component="$UI/system/components/justep/textarea/textarea"
                  bind-ref="detailData.ref('fCPBZ')" style="height:120px;" bind-dblclick="fBZ1Dblclick" tabindex="17"/> 
              </div> 
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
