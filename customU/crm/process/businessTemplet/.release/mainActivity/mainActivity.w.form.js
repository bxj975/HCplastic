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
require('$model/UI2/system/components/justep/textarea/textarea');
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
var __parent0=require('$model/UI2/custom/crm/process/businessTemplet/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cBJJjmq';
	this._flag_='a1e7c59fcbee86cd2c79c8dea07e35d5';
	this.callParent(contextUrl);
 var __BizData__ = require("$UI/system/components/justep/data/bizData");new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_YWMB":{"define":"CU_YWMB","name":"CU_YWMB","relation":"CU_YWMB","type":"String"},"calcCheckBox":{"define":"EXPRESS","name":"calcCheckBox","relation":"EXPRESS","type":"String"},"fMBMC":{"define":"CU_YWMB.fMBMC","isBiz":true,"label":"模板名称","name":"fMBMC","relation":"CU_YWMB.fMBMC","type":"String"},"fMBNR":{"define":"CU_YWMB.fMBNR","isBiz":true,"label":"模板内容","name":"fMBNR","relation":"CU_YWMB.fMBNR","type":"Text"},"fMBZX":{"define":"CU_YWMB.fMBZX","isBiz":true,"label":"模板属性","name":"fMBZX","relation":"CU_YWMB.fMBZX","type":"String"},"fWHR":{"define":"CU_YWMB.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_YWMB.fWHR","type":"String"},"fWHSJ":{"define":"CU_YWMB.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_YWMB.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_YWMB.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_YWMB.fXXBM","type":"String"},"version":{"define":"CU_YWMB.version","isBiz":true,"label":"版本","name":"version","relation":"CU_YWMB.version","rules":{"integer":true},"type":"Integer"}},"directDelete":true,"events":{"onSaveCommit":"saveCommit","onValueChanged":"mainDataValueChanged"},"idColumn":"CU_YWMB","limit":15,"newAction":"createCU_YWMBAction","offset":0,"queryAction":"queryCU_YWMBAction","saveAction":"saveCU_YWMBAction","updateMode":"whereVersion","xid":"mainData"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"type":{"define":"type","label":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"type","initData":"[{\"type\":\"公用模板\"},{\"type\":\"个人模板\"}]","limit":20,"xid":"typeData"});
}}); 
return __result;});