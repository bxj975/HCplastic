window.__justep.__ResourceEngine.loadCss([{url: '/v_5597_nol_zh_CNs_desktopd_pc/system/components/pc.addon.min.css', include: '$model/system/components/justep/pagerBar/css/pagerBar,$model/system/components/justep/widgets/css/widgets,$model/system/components/justep/absoluteLayout/css/absoluteLayout,$model/system/components/justep/pagerLimitSelect/css/pagerLimitSelect,$model/system/components/justep/cellLayout/css/cellLayout,$model/system/components/justep/smartContainer/css/smartContainer'},{url: '/v_5597_nol_zh_CNs_desktopd_pc/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_5597_nol_zh_CNs_desktopd_pc/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_5597_nol_zh_CNs_desktopd_pc/system/components/comp2.min.js','/v_5597_nol_zh_CNs_desktopd_pc/system/components/biz.comp.min.js','/v_5597_nol_zh_CNs_desktopd_pc/system/biz.common.min.js','/v_5597_nol_zh_CNs_desktopd_pc/system/core.min.js','/v_5597_nol_zh_CNs_desktopd_pc/system/common.min.js','/v_5597_nol_zh_CNs_desktopd_pc/system/components/comp.min.js','/v_5597_nol_zh_CNs_desktopd_pc/system/components/pc.addon.min.js']);define(function(require){
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
