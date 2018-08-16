window.__justep.__ResourceEngine.loadCss([{url: '/v_5597_nol_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_5597_nol_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_5597_nol_zh_CNs_d_m/system/biz.common.min.js','/v_5597_nol_zh_CNs_d_m/system/core.min.js','/v_5597_nol_zh_CNs_d_m/system/common.min.js','/v_5597_nol_zh_CNs_d_m/system/components/comp.min.js','/v_5597_nol_zh_CNs_d_m/system/components/justep/report.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/reportData/reportData');
require('$model/UI2/system/components/justep/input/input');
require('$model/UI2/system/components/justep/report/report');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/toolBar/toolBar');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/custom/crm/process/byorder/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cAjAFfy';
	this._flag_='1688926a2669421bfd00e23193b68f78';
	this.callParent(contextUrl);
 var __Report_Data__ = require("$UI/system/components/justep/reportData/reportData");new __Report_Data__(this,{"action":"byorderAction","autoLoad":false,"columns":"","dataModel":"","fnModel":"","onAfterRefresh":"","onBeforeRefresh":"","src":"","type":"ksqlaction","xid":"p1"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"date":{"define":"date","label":"date","name":"date","relation":"date","rules":{"date":true},"type":"Date"}},"directDelete":false,"events":{},"idColumn":"date","limit":20,"xid":"selectData"});
}}); 
return __result;});
