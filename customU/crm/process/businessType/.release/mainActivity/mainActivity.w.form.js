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
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/pagerLimitSelect/pagerLimitSelect');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/gridSelect/gridSelect');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/bootstrap/tabs/tabs');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/custom/crm/process/businessType/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cYjmEN3';
	this._flag_='1ee29db7182b1f9315258165370217db';
	this.callParent(contextUrl);
 var __BizData__ = require("$UI/system/components/justep/data/bizData");new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_YWLX":{"define":"CU_YWLX","name":"CU_YWLX","relation":"CU_YWLX","type":"String"},"calcCheckBox":{"define":"EXPRESS","name":"calcCheckBox","relation":"EXPRESS","type":"String"},"fBZ":{"define":"CU_YWLX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_YWLX.fBZ","type":"String"},"fLB":{"define":"CU_YWLX.fLB","isBiz":true,"label":"类别","name":"fLB","relation":"CU_YWLX.fLB","type":"String"},"fWHR":{"define":"CU_YWLX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_YWLX.fWHR","type":"String"},"fWHSJ":{"define":"CU_YWLX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_YWLX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_YWLX.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_YWLX.fXXBM","type":"String"},"fYWMC":{"define":"CU_YWLX.fYWMC","isBiz":true,"label":"业务名称","name":"fYWMC","relation":"CU_YWLX.fYWMC","type":"String"},"version":{"define":"CU_YWLX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_YWLX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":true,"events":{"onSaveCommit":"saveCommit","onValueChanged":"mainDataValueChanged"},"idColumn":"CU_YWLX","limit":15,"newAction":"createCU_YWLXAction","offset":0,"queryAction":"queryCU_YWLXAction","saveAction":"saveCU_YWLXAction","updateMode":"whereVersion","xid":"mainData"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"type":{"define":"type","label":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"type","initData":"[{\"type\":\"一类\"},{\"type\":\"二类\"}]","limit":20,"xid":"typeData"});
}}); 
return __result;});