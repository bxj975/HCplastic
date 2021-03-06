define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/pagerBar/pagerBar');
require('$model/UI2/system/components/bootstrap/form/form');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/controlGroup/controlGroup');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/bootstrap/pagination/pagination');
require('$model/UI2/system/components/justep/smartFilter/smartFilter');
require('$model/UI2/system/components/justep/data/bizData');
require('$model/UI2/system/components/justep/toolBar/toolBar');
require('$model/UI2/system/components/justep/dataTables/dataTables');
require('$model/UI2/system/components/bootstrap/tabs/tab');
require('$model/UI2/system/components/justep/pagerLimitSelect/pagerLimitSelect');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/gridSelect/gridSelect');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/bootstrap/tabs/tabs');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/custom/crm/process/clerk/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cNzy2mu';
	this._flag_='af609580714cd765895cee71d16a8938';
	this.callParent(contextUrl);
 var __BizData__ = require("$UI/system/components/justep/data/bizData");new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_ZYXX":{"define":"CU_ZYXX","name":"CU_ZYXX","relation":"CU_ZYXX","type":"String"},"calcCheckBox":{"define":"EXPRESS","name":"calcCheckBox","relation":"EXPRESS","type":"String"},"fBYE":{"define":"CU_ZYXX.fBYE","isBiz":true,"label":"备用二","name":"fBYE","relation":"CU_ZYXX.fBYE","type":"String"},"fBYY":{"define":"CU_ZYXX.fBYY","isBiz":true,"label":"备用一","name":"fBYY","relation":"CU_ZYXX.fBYY","type":"String"},"fBZ":{"define":"CU_ZYXX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_ZYXX.fBZ","type":"String"},"fBZE":{"define":"CU_ZYXX.fBZE","isBiz":true,"label":"标注二","name":"fBZE","relation":"CU_ZYXX.fBZE","type":"String"},"fBZY":{"define":"CU_ZYXX.fBZY","isBiz":true,"label":"标注一","name":"fBZY","relation":"CU_ZYXX.fBZY","type":"String"},"fCSNY":{"define":"CU_ZYXX.fCSNY","isBiz":true,"label":"出生年月","name":"fCSNY","relation":"CU_ZYXX.fCSNY","rules":{"date":true},"type":"Date"},"fGW":{"define":"CU_ZYXX.fGW","isBiz":true,"label":"岗位","name":"fGW","relation":"CU_ZYXX.fGW","type":"String"},"fLXDH":{"define":"CU_ZYXX.fLXDH","isBiz":true,"label":"电话","name":"fLXDH","relation":"CU_ZYXX.fLXDH","type":"String"},"fLXQQ":{"define":"CU_ZYXX.fLXQQ","isBiz":true,"label":"QQ","name":"fLXQQ","relation":"CU_ZYXX.fLXQQ","type":"String"},"fLXWX":{"define":"CU_ZYXX.fLXWX","isBiz":true,"label":"微信","name":"fLXWX","relation":"CU_ZYXX.fLXWX","type":"String"},"fRZSJ":{"define":"CU_ZYXX.fRZSJ","isBiz":true,"label":"入职时间","name":"fRZSJ","relation":"CU_ZYXX.fRZSJ","rules":{"date":true},"type":"Date"},"fSFZHM":{"define":"CU_ZYXX.fSFZHM","isBiz":true,"label":"身份证号","name":"fSFZHM","relation":"CU_ZYXX.fSFZHM","type":"String"},"fSHDZ":{"define":"CU_ZYXX.fSHDZ","isBiz":true,"label":"地址","name":"fSHDZ","relation":"CU_ZYXX.fSHDZ","type":"String"},"fTXSJ":{"define":"CU_ZYXX.fTXSJ","isBiz":true,"label":"提醒时间","name":"fTXSJ","relation":"CU_ZYXX.fTXSJ","rules":{"date":true},"type":"Date"},"fWHR":{"define":"CU_ZYXX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_ZYXX.fWHR","type":"String"},"fWHSJ":{"define":"CU_ZYXX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_ZYXX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXB":{"define":"CU_ZYXX.fXB","isBiz":true,"label":"性别","name":"fXB","relation":"CU_ZYXX.fXB","type":"String"},"fYDDH":{"define":"CU_ZYXX.fYDDH","isBiz":true,"label":"手机","name":"fYDDH","relation":"CU_ZYXX.fYDDH","type":"String"},"fZDYE":{"define":"CU_ZYXX.fZDYE","isBiz":true,"label":"自定义二","name":"fZDYE","relation":"CU_ZYXX.fZDYE","type":"String"},"fZDYL":{"define":"CU_ZYXX.fZDYL","isBiz":true,"label":"自定义六","name":"fZDYL","relation":"CU_ZYXX.fZDYL","type":"String"},"fZDYS":{"define":"CU_ZYXX.fZDYS","isBiz":true,"label":"自定义三","name":"fZDYS","relation":"CU_ZYXX.fZDYS","type":"String"},"fZDYSI":{"define":"CU_ZYXX.fZDYSI","isBiz":true,"label":"自定义四","name":"fZDYSI","relation":"CU_ZYXX.fZDYSI","type":"String"},"fZDYW":{"define":"CU_ZYXX.fZDYW","isBiz":true,"label":"自定义五","name":"fZDYW","relation":"CU_ZYXX.fZDYW","type":"String"},"fZDYY":{"define":"CU_ZYXX.fZDYY","isBiz":true,"label":"自定义一","name":"fZDYY","relation":"CU_ZYXX.fZDYY","type":"String"},"fZYBM":{"define":"CU_ZYXX.fZYBM","isBiz":true,"label":"职员编码","name":"fZYBM","relation":"CU_ZYXX.fZYBM","type":"String"},"fZYMC":{"define":"CU_ZYXX.fZYMC","isBiz":true,"label":"职员名称","name":"fZYMC","relation":"CU_ZYXX.fZYMC","type":"String"},"version":{"define":"CU_ZYXX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_ZYXX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":true,"events":{"onSaveCommit":"saveCommit"},"idColumn":"CU_ZYXX","limit":15,"newAction":"createCU_ZYXXAction","offset":0,"queryAction":"queryCU_ZYXXAction","saveAction":"saveCU_ZYXXAction","updateMode":"whereVersion","xid":"mainData"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"ganbu":{"define":"ganbu","label":"ganbu","name":"ganbu","relation":"ganbu","type":"String"},"sex":{"define":"sex","label":"sex","name":"sex","relation":"sex","type":"String"},"type":{"define":"type","label":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"type","initData":"[{\"type\":\"职工\",\"sex\":\"男\"},{\"type\":\"劳务工\",\"sex\":\"女\",\"ganbu\":\"干部\"}]","limit":20,"xid":"typeData"});
}}); 
return __result;});