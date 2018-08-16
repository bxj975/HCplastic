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
var __parent0=require('$model/UI2/custom/crm/process/areaType/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='ceuQ7Ff';
	this._flag_='db280a45ad41fa983d012ebc295805f6';
	this.callParent(contextUrl);
 var __BizData__ = require("$UI/system/components/justep/data/bizData");new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_QYXX":{"define":"CU_QYXX","name":"CU_QYXX","relation":"CU_QYXX","type":"String"},"calcCheckBox":{"define":"EXPRESS","name":"calcCheckBox","relation":"EXPRESS","type":"String"},"fBYE":{"define":"CU_QYXX.fBYE","isBiz":true,"label":"备用二","name":"fBYE","relation":"CU_QYXX.fBYE","type":"String"},"fBYY":{"define":"CU_QYXX.fBYY","isBiz":true,"label":"备用一","name":"fBYY","relation":"CU_QYXX.fBYY","type":"String"},"fBZ":{"define":"CU_QYXX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_QYXX.fBZ","type":"String"},"fBZE":{"define":"CU_QYXX.fBZE","isBiz":true,"label":"标注二","name":"fBZE","relation":"CU_QYXX.fBZE","type":"String"},"fBZY":{"define":"CU_QYXX.fBZY","isBiz":true,"label":"标注一","name":"fBZY","relation":"CU_QYXX.fBZY","type":"String"},"fFLMC":{"define":"CU_QYXX.fFLMC","isBiz":true,"label":"分类名称","name":"fFLMC","relation":"CU_QYXX.fFLMC","rules":{"required":{"params":{"expr":"true"}}},"type":"String"},"fWHR":{"define":"CU_QYXX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_QYXX.fWHR","type":"String"},"fWHSJ":{"define":"CU_QYXX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_QYXX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_QYXX.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_QYXX.fXXBM","rules":{"required":{"params":{"expr":"true"}}},"type":"String"},"version":{"define":"CU_QYXX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_QYXX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":true,"events":{"onSaveCommit":"saveCommit","onValueChanged":"mainDataValueChanged"},"idColumn":"CU_QYXX","limit":15,"newAction":"createCU_QYXXAction","offset":0,"queryAction":"queryCU_QYXXAction","saveAction":"saveCU_QYXXAction","updateMode":"whereVersion","xid":"mainData"});
}}); 
return __result;});