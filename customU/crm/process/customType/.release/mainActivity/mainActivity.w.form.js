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
var __parent0=require('$model/UI2/custom/crm/process/customType/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='ce2ieme';
	this._flag_='9c08a7c8672c77fee437d3d310b27506';
	this.callParent(contextUrl);
 var __BizData__ = require("$UI/system/components/justep/data/bizData");new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_KHFL":{"define":"CU_KHFL","name":"CU_KHFL","relation":"CU_KHFL","type":"String"},"calcCheckBox":{"define":"EXPRESS","name":"calcCheckBox","relation":"EXPRESS","type":"String"},"fBZ":{"define":"CU_KHFL.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_KHFL.fBZ","type":"String"},"fFLMC":{"define":"CU_KHFL.fFLMC","isBiz":true,"label":"分类名称","name":"fFLMC","relation":"CU_KHFL.fFLMC","type":"String"},"fWHR":{"define":"CU_KHFL.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_KHFL.fWHR","type":"String"},"fWHSJ":{"define":"CU_KHFL.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_KHFL.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_KHFL.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_KHFL.fXXBM","type":"String"},"version":{"define":"CU_KHFL.version","isBiz":true,"label":"版本","name":"version","relation":"CU_KHFL.version","rules":{"integer":true},"type":"Integer"}},"directDelete":true,"events":{"onSaveCommit":"saveCommit","onValueChanged":"mainDataValueChanged"},"idColumn":"CU_KHFL","limit":15,"newAction":"createCU_KHFLAction","offset":0,"queryAction":"queryCU_KHFLAction","saveAction":"saveCU_KHFLAction","updateMode":"whereVersion","xid":"mainData"});
}}); 
return __result;});