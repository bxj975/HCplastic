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
var __parent0=require('$model/UI2/custom/crm/process/form/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cvI7J3u';
	this._flag_='65febd0c336f7365279665f5a30757f3';
	this.callParent(contextUrl);
 var __BizData__ = require("$UI/system/components/justep/data/bizData");new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_DXXX":{"define":"CU_DXXX","name":"CU_DXXX","relation":"CU_DXXX","type":"String"},"calcCheckBox":{"define":"EXPRESS","name":"calcCheckBox","relation":"EXPRESS","type":"String"},"fBZ":{"define":"CU_DXXX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_DXXX.fBZ","type":"String"},"fDXMC":{"define":"CU_DXXX.fDXMC","isBiz":true,"label":"袋型名称","name":"fDXMC","relation":"CU_DXXX.fDXMC","type":"String"},"fWHR":{"define":"CU_DXXX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_DXXX.fWHR","type":"String"},"fWHSJ":{"define":"CU_DXXX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_DXXX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_DXXX.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_DXXX.fXXBM","type":"String"},"version":{"define":"CU_DXXX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_DXXX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":true,"events":{"onSaveCommit":"saveCommit","onValueChanged":"mainDataValueChanged"},"idColumn":"CU_DXXX","limit":15,"newAction":"createCU_DXXXAction","offset":0,"queryAction":"queryCU_DXXXAction","saveAction":"saveCU_DXXXAction","updateMode":"whereVersion","xid":"mainData"});
}}); 
return __result;});