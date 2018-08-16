define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/reportData/reportData');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/report/report');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/toolBar/toolBar');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/custom/crm/process/fhorderselect/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c2uuArm';
	this._flag_='c90f5a6fcc13393bf323213001f2002e';
	this.callParent(contextUrl);
 var __Report_Data__ = require("$UI/system/components/justep/reportData/reportData");new __Report_Data__(this,{"action":"fhselectAction","autoLoad":false,"columns":"","dataModel":"","fnModel":"","onAfterRefresh":"","onBeforeRefresh":"","src":"","type":"ksqlaction","xid":"p1"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"beginDate":{"define":"beginDate","label":"beginDate","name":"beginDate","relation":"beginDate","rules":{"date":true},"type":"Date"},"custom":{"define":"custom","label":"custom","name":"custom","relation":"custom","type":"String"},"endDate":{"define":"endDate","label":"endDate","name":"endDate","relation":"endDate","rules":{"date":true},"type":"Date"}},"directDelete":false,"events":{},"idColumn":"beginDate","limit":20,"xid":"selectData"});
}}); 
return __result;});