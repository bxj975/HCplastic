window.__justep.__ResourceEngine.loadCss([{url: '/v_5597_nol_zh_CNs_desktopd_pc/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_5597_nol_zh_CNs_desktopd_pc/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_5597_nol_zh_CNs_desktopd_pc/system/components/comp2.min.js','/v_5597_nol_zh_CNs_desktopd_pc/system/components/biz.comp.min.js','/v_5597_nol_zh_CNs_desktopd_pc/system/biz.common.min.js','/v_5597_nol_zh_CNs_desktopd_pc/system/core.min.js','/v_5597_nol_zh_CNs_desktopd_pc/system/common.min.js','/v_5597_nol_zh_CNs_desktopd_pc/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/smartFilter/smartFilter');
require('$model/UI2/system/components/justep/data/bizData');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/dataTables/dataTables');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/custom/crm/process/order/forthActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cIFJzAn';
	this._flag_='9fc7354b527a29b46ff23fc21776740e';
	this.callParent(contextUrl);
 var __BizData__ = require("$UI/system/components/justep/data/bizData");new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_YWMB":{"define":"CU_YWMB","name":"CU_YWMB","relation":"CU_YWMB","type":"String"},"fMBMC":{"define":"CU_YWMB.fMBMC","isBiz":true,"label":"模板名称","name":"fMBMC","relation":"CU_YWMB.fMBMC","type":"String"},"fMBNR":{"define":"CU_YWMB.fMBNR","isBiz":true,"label":"模板内容","name":"fMBNR","relation":"CU_YWMB.fMBNR","type":"Text"},"fMBZX":{"define":"CU_YWMB.fMBZX","isBiz":true,"label":"模板属性","name":"fMBZX","relation":"CU_YWMB.fMBZX","type":"String"},"fWHR":{"define":"CU_YWMB.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_YWMB.fWHR","type":"String"},"fWHSJ":{"define":"CU_YWMB.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_YWMB.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_YWMB.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_YWMB.fXXBM","type":"String"},"version":{"define":"CU_YWMB.version","isBiz":true,"label":"版本","name":"version","relation":"CU_YWMB.version","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"CU_YWMB","limit":20,"offset":0,"queryAction":"queryCU_YWMBAction","updateMode":"whereVersion","xid":"dialogData"});
}}); 
return __result;});
