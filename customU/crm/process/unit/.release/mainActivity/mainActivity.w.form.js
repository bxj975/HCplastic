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
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/bootstrap/tabs/tabs');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/custom/crm/process/unit/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cieqYNv';
	this._flag_='8f829dd0da89f6efefa776bf80aa4aa1';
	this.callParent(contextUrl);
 var __BizData__ = require("$UI/system/components/justep/data/bizData");new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_JLDW":{"define":"CU_JLDW","name":"CU_JLDW","relation":"CU_JLDW","type":"String"},"calcCheckBox":{"define":"EXPRESS","name":"calcCheckBox","relation":"EXPRESS","type":"String"},"fBZ":{"define":"CU_JLDW.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_JLDW.fBZ","type":"String"},"fDWMC":{"define":"CU_JLDW.fDWMC","isBiz":true,"label":"单位名称","name":"fDWMC","relation":"CU_JLDW.fDWMC","rules":{"required":{"params":{"expr":"true"}}},"type":"String"},"fWHR":{"define":"CU_JLDW.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_JLDW.fWHR","type":"String"},"fWHSJ":{"define":"CU_JLDW.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_JLDW.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_JLDW.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_JLDW.fXXBM","rules":{"required":{"params":{"expr":"true"}}},"type":"String"},"version":{"define":"CU_JLDW.version","isBiz":true,"label":"版本","name":"version","relation":"CU_JLDW.version","rules":{"integer":true},"type":"Integer"}},"directDelete":true,"events":{"onSaveCommit":"saveCommit","onValueChanged":"mainDataValueChanged"},"idColumn":"CU_JLDW","limit":15,"newAction":"createCU_JLDWAction","offset":0,"queryAction":"queryCU_JLDWAction","saveAction":"saveCU_JLDWAction","updateMode":"whereVersion","xid":"mainData"});
}}); 
return __result;});