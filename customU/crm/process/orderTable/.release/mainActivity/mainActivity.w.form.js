define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/reportData/reportData');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/report/report');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/toolBar/toolBar');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/custom/crm/process/orderTable/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cZr6fui';
	this._flag_='487d917f7085365335099c8f66b5507c';
	this.callParent(contextUrl);
 var __Report_Data__ = require("$UI/system/components/justep/reportData/reportData");new __Report_Data__(this,{"action":"ygorderAction","autoLoad":false,"columns":"","dataModel":"","fnModel":"","onAfterRefresh":"","onBeforeRefresh":"","src":"","type":"ksqlaction","xid":"p1"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"date":{"define":"date","label":"date","name":"date","relation":"date","rules":{"date":true},"type":"Date"}},"directDelete":false,"events":{},"idColumn":"date","limit":20,"xid":"selectData"});
}}); 
return __result;});