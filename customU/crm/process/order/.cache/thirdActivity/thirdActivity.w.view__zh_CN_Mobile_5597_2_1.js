window.__justep.__ResourceEngine.loadCss([{url: '/v_5597_nol_zh_CNs_d_m/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_5597_nol_zh_CNs_d_m/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_5597_nol_zh_CNs_d_m/system/components/comp2.min.js','/v_5597_nol_zh_CNs_d_m/system/components/biz.comp.min.js','/v_5597_nol_zh_CNs_d_m/system/biz.common.min.js','/v_5597_nol_zh_CNs_d_m/system/core.min.js','/v_5597_nol_zh_CNs_d_m/system/common.min.js','/v_5597_nol_zh_CNs_d_m/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/bootstrap/row/row');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/smartFilter/smartFilter');
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/data/bizData');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/dataTables/dataTables');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/custom/crm/process/order/thirdActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c2Mr6nu';
	this._flag_='10456e6e5f961a0eabf8a3cdd75c3936';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":false,"confirmRefresh":false,"defCols":{"CU_CPXX":{"define":"CU_CPXX","label":"id","name":"CU_CPXX","relation":"CU_CPXX","type":"String"},"fBZ":{"define":"fBZ","label":"产品备注","name":"fBZ","relation":"fBZ","type":"String"},"fCPBM":{"define":"fCPBM","label":"产品编码","name":"fCPBM","relation":"fCPBM","type":"String"},"fCPMC":{"define":"fCPMC","label":"产品名称","name":"fCPMC","relation":"fCPMC","type":"String"},"fCPYQ":{"define":"fCPYQ","label":"产品要求","name":"fCPYQ","relation":"fCPYQ","type":"String"},"fCZ":{"define":"fCZ","label":"材质","name":"fCZ","relation":"fCZ","type":"String"},"fDX":{"define":"fDX","label":"袋型","name":"fDX","relation":"fDX","type":"String"},"fGGXH":{"define":"fGGXH","label":"规格型号","name":"fGGXH","relation":"fGGXH","type":"String"},"fJG":{"define":"fJG","label":"价格","name":"fJG","relation":"fJG","type":"String"},"fJLDW":{"define":"fJLDW","label":"计量单位","name":"fJLDW","relation":"fJLDW","type":"String"},"fYSLX":{"define":"fYSLX","label":"印刷类型","name":"fYSLX","relation":"fYSLX","type":"String"}},"directDelete":false,"events":{},"idColumn":"CU_CPXX","limit":20,"xid":"selectData"});
 var __BizData__ = require("$UI/system/components/justep/data/bizData");new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_CPXX":{"define":"CU_CPXX","name":"CU_CPXX","relation":"CU_CPXX","type":"String"},"fBYE":{"define":"CU_CPXX.fBYE","isBiz":true,"label":"备用二","name":"fBYE","relation":"CU_CPXX.fBYE","type":"String"},"fBYS":{"define":"CU_CPXX.fBYS","isBiz":true,"label":"备用三","name":"fBYS","relation":"CU_CPXX.fBYS","type":"String"},"fBYSI":{"define":"CU_CPXX.fBYSI","isBiz":true,"label":"备用四","name":"fBYSI","relation":"CU_CPXX.fBYSI","type":"String"},"fBYY":{"define":"CU_CPXX.fBYY","isBiz":true,"label":"备用一","name":"fBYY","relation":"CU_CPXX.fBYY","type":"String"},"fBYYI":{"define":"CU_CPXX.fBYYI","isBiz":true,"label":"客户ID","name":"fBYYI","relation":"CU_CPXX.fBYYI","type":"String"},"fBZ":{"define":"CU_CPXX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_CPXX.fBZ","type":"Text"},"fBZE":{"define":"CU_CPXX.fBZE","isBiz":true,"label":"标注二","name":"fBZE","relation":"CU_CPXX.fBZE","type":"String"},"fBZY":{"define":"CU_CPXX.fBZY","isBiz":true,"label":"标注一","name":"fBZY","relation":"CU_CPXX.fBZY","type":"String"},"fCPBM":{"define":"CU_CPXX.fCPBM","isBiz":true,"label":"产品编码","name":"fCPBM","relation":"CU_CPXX.fCPBM","type":"String"},"fCPMC":{"define":"CU_CPXX.fCPMC","isBiz":true,"label":"产品名称","name":"fCPMC","relation":"CU_CPXX.fCPMC","type":"String"},"fCPYQ":{"define":"CU_CPXX.fCPYQ","isBiz":true,"label":"产品要求","name":"fCPYQ","relation":"CU_CPXX.fCPYQ","type":"Text"},"fCZ":{"define":"CU_CPXX.fCZ","isBiz":true,"label":"材质","name":"fCZ","relation":"CU_CPXX.fCZ","type":"String"},"fDX":{"define":"CU_CPXX.fDX","isBiz":true,"label":"袋型","name":"fDX","relation":"CU_CPXX.fDX","type":"String"},"fGGXH":{"define":"CU_CPXX.fGGXH","isBiz":true,"label":"规格型号","name":"fGGXH","relation":"CU_CPXX.fGGXH","type":"String"},"fGZKH":{"define":"CU_CPXX.fGZKH","isBiz":true,"label":"归属客户","name":"fGZKH","relation":"CU_CPXX.fGZKH","type":"String"},"fJG":{"define":"CU_CPXX.fJG","isBiz":true,"label":"价格","name":"fJG","relation":"CU_CPXX.fJG","rules":{"number":true},"type":"Decimal"},"fJLDW":{"define":"CU_CPXX.fJLDW","isBiz":true,"label":"计量单位","name":"fJLDW","relation":"CU_CPXX.fJLDW","type":"String"},"fPARENT":{"define":"CU_CPXX.fPARENT","isBiz":true,"label":"父ID","name":"fPARENT","relation":"CU_CPXX.fPARENT","type":"String"},"fSFFL":{"define":"CU_CPXX.fSFFL","isBiz":true,"label":"是否分类","name":"fSFFL","relation":"CU_CPXX.fSFFL","type":"String"},"fWHR":{"define":"CU_CPXX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_CPXX.fWHR","type":"String"},"fWHSJ":{"define":"CU_CPXX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_CPXX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fYSLX":{"define":"CU_CPXX.fYSLX","isBiz":true,"label":"印刷类型","name":"fYSLX","relation":"CU_CPXX.fYSLX","type":"String"},"version":{"define":"CU_CPXX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_CPXX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"CU_CPXX","limit":20,"offset":0,"queryAction":"queryCU_CPXXAction","updateMode":"whereVersion","xid":"dialogData"});
}}); 
return __result;});
