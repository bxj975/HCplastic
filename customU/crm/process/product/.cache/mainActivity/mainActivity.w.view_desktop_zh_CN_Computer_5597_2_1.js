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
require('$model/UI2/system/components/justep/windowDialog/windowDialog');
require('$model/UI2/system/components/justep/data/bizData');
require('$model/UI2/system/components/justep/toolBar/toolBar');
require('$model/UI2/system/components/justep/textarea/textarea');
require('$model/UI2/system/components/justep/dataTables/dataTables');
require('$model/UI2/system/components/bootstrap/tabs/tab');
require('$model/UI2/system/components/justep/button/checkbox');
require('$model/UI2/system/components/justep/windowReceiver/windowReceiver');
require('$model/UI2/system/components/justep/pagerLimitSelect/pagerLimitSelect');
require('$model/UI2/system/components/justep/select/select');
require('$model/UI2/system/components/justep/gridSelect/gridSelect');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/bootstrap/tabs/tabs');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/custom/crm/process/product/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cBBBbAv';
	this._flag_='5209c7c21b179d6053a0054eda5bf90c';
	this.callParent(contextUrl);
 var __BizData__ = require("$UI/system/components/justep/data/bizData");new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_CPXX":{"define":"CU_CPXX","name":"CU_CPXX","relation":"CU_CPXX","type":"String"},"calcCheckBox":{"define":"EXPRESS","name":"calcCheckBox","relation":"EXPRESS","type":"String"},"fBYE":{"define":"CU_CPXX.fBYE","isBiz":true,"label":"备用二","name":"fBYE","relation":"CU_CPXX.fBYE","type":"String"},"fBYS":{"define":"CU_CPXX.fBYS","isBiz":true,"label":"备用三","name":"fBYS","relation":"CU_CPXX.fBYS","type":"String"},"fBYSI":{"define":"CU_CPXX.fBYSI","isBiz":true,"label":"备用四","name":"fBYSI","relation":"CU_CPXX.fBYSI","type":"String"},"fBYY":{"define":"CU_CPXX.fBYY","isBiz":true,"label":"备用一","name":"fBYY","relation":"CU_CPXX.fBYY","type":"String"},"fBYYI":{"define":"CU_CPXX.fBYYI","isBiz":true,"label":"客户ID","name":"fBYYI","relation":"CU_CPXX.fBYYI","type":"String"},"fBZ":{"define":"CU_CPXX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_CPXX.fBZ","type":"Text"},"fBZE":{"define":"CU_CPXX.fBZE","isBiz":true,"label":"标注二","name":"fBZE","relation":"CU_CPXX.fBZE","type":"String"},"fBZY":{"define":"CU_CPXX.fBZY","isBiz":true,"label":"标注一","name":"fBZY","relation":"CU_CPXX.fBZY","type":"String"},"fCPBM":{"define":"CU_CPXX.fCPBM","isBiz":true,"label":"产品编码","name":"fCPBM","relation":"CU_CPXX.fCPBM","type":"String"},"fCPMC":{"define":"CU_CPXX.fCPMC","isBiz":true,"label":"产品名称","name":"fCPMC","relation":"CU_CPXX.fCPMC","type":"String"},"fCPYQ":{"define":"CU_CPXX.fCPYQ","isBiz":true,"label":"产品要求","name":"fCPYQ","relation":"CU_CPXX.fCPYQ","type":"Text"},"fCZ":{"define":"CU_CPXX.fCZ","isBiz":true,"label":"材质","name":"fCZ","relation":"CU_CPXX.fCZ","type":"String"},"fDX":{"define":"CU_CPXX.fDX","isBiz":true,"label":"袋型","name":"fDX","relation":"CU_CPXX.fDX","type":"String"},"fGGXH":{"define":"CU_CPXX.fGGXH","isBiz":true,"label":"规格型号","name":"fGGXH","relation":"CU_CPXX.fGGXH","type":"String"},"fGZKH":{"define":"CU_CPXX.fGZKH","isBiz":true,"label":"归属客户","name":"fGZKH","relation":"CU_CPXX.fGZKH","rules":{"required":{"params":{"expr":"true"}}},"type":"String"},"fJG":{"define":"CU_CPXX.fJG","isBiz":true,"label":"价格","name":"fJG","relation":"CU_CPXX.fJG","rules":{"number":true},"type":"Decimal"},"fJLDW":{"define":"CU_CPXX.fJLDW","isBiz":true,"label":"计量单位","name":"fJLDW","relation":"CU_CPXX.fJLDW","type":"String"},"fPARENT":{"define":"CU_CPXX.fPARENT","isBiz":true,"label":"父ID","name":"fPARENT","relation":"CU_CPXX.fPARENT","type":"String"},"fSFFL":{"define":"CU_CPXX.fSFFL","isBiz":true,"label":"是否分类","name":"fSFFL","relation":"CU_CPXX.fSFFL","type":"String"},"fWHR":{"define":"CU_CPXX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_CPXX.fWHR","type":"String"},"fWHSJ":{"define":"CU_CPXX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_CPXX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fYSLX":{"define":"CU_CPXX.fYSLX","isBiz":true,"label":"印刷类型","name":"fYSLX","relation":"CU_CPXX.fYSLX","rules":{"required":{"params":{"expr":"true"}}},"type":"String"},"version":{"define":"CU_CPXX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_CPXX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":true,"events":{"onSaveCommit":"saveCommit"},"idColumn":"CU_CPXX","limit":15,"newAction":"createCU_CPXXAction","offset":0,"queryAction":"queryCU_CPXXAction","saveAction":"saveCU_CPXXAction","updateMode":"whereVersion","xid":"mainData"});
 new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_CZXX":{"define":"CU_CZXX","name":"CU_CZXX","relation":"CU_CZXX","type":"String"},"fBZ":{"define":"CU_CZXX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_CZXX.fBZ","type":"String"},"fCZMC":{"define":"CU_CZXX.fCZMC","isBiz":true,"label":"材质名称","name":"fCZMC","relation":"CU_CZXX.fCZMC","type":"String"},"fWHR":{"define":"CU_CZXX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_CZXX.fWHR","type":"String"},"fWHSJ":{"define":"CU_CZXX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_CZXX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_CZXX.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_CZXX.fXXBM","type":"String"},"version":{"define":"CU_CZXX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_CZXX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"CU_CZXX","limit":200,"newAction":"createCU_CZXXAction","offset":0,"queryAction":"queryCU_CZXXAction","saveAction":"saveCU_CZXXAction","updateMode":"whereVersion","xid":"czData"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"type":{"define":"type","label":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"type","initData":"[{\"type\":\"表印\"},{\"type\":\"复合\"}]","limit":20,"xid":"printData"});
 new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_DXXX":{"define":"CU_DXXX","name":"CU_DXXX","relation":"CU_DXXX","type":"String"},"fBZ":{"define":"CU_DXXX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_DXXX.fBZ","type":"String"},"fDXMC":{"define":"CU_DXXX.fDXMC","isBiz":true,"label":"袋型名称","name":"fDXMC","relation":"CU_DXXX.fDXMC","type":"String"},"fWHR":{"define":"CU_DXXX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_DXXX.fWHR","type":"String"},"fWHSJ":{"define":"CU_DXXX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_DXXX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_DXXX.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_DXXX.fXXBM","type":"String"},"version":{"define":"CU_DXXX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_DXXX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"CU_DXXX","limit":200,"newAction":"createCU_DXXXAction","offset":0,"queryAction":"queryCU_DXXXAction","saveAction":"saveCU_DXXXAction","updateMode":"whereVersion","xid":"dxData"});
 new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_JLDW":{"define":"CU_JLDW","name":"CU_JLDW","relation":"CU_JLDW","type":"String"},"fBZ":{"define":"CU_JLDW.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_JLDW.fBZ","type":"String"},"fDWMC":{"define":"CU_JLDW.fDWMC","isBiz":true,"label":"单位名称","name":"fDWMC","relation":"CU_JLDW.fDWMC","type":"String"},"fWHR":{"define":"CU_JLDW.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_JLDW.fWHR","type":"String"},"fWHSJ":{"define":"CU_JLDW.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_JLDW.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_JLDW.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_JLDW.fXXBM","type":"String"},"version":{"define":"CU_JLDW.version","isBiz":true,"label":"版本","name":"version","relation":"CU_JLDW.version","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"CU_JLDW","limit":20,"newAction":"createCU_JLDWAction","offset":0,"queryAction":"queryCU_JLDWAction","saveAction":"saveCU_JLDWAction","updateMode":"whereVersion","xid":"unitData"});
 new __Data__(this,{"autoLoad":false,"autoNew":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"fBZ":{"define":"fBZ","name":"fBZ","relation":"fBZ","type":"String"},"fBZE":{"define":"fBZE","name":"fBZE","relation":"fBZE","type":"String"},"fBZY":{"define":"fBZY","name":"fBZY","relation":"fBZY","type":"String"},"fCPMC":{"define":"fCPMC","name":"fCPMC","relation":"fCPMC","type":"String"},"fCPYQ":{"define":"fCPYQ","name":"fCPYQ","relation":"fCPYQ","type":"String"},"fCZ":{"define":"fCZ","name":"fCZ","relation":"fCZ","type":"String"},"fDX":{"define":"fDX","name":"fDX","relation":"fDX","type":"String"},"fGGXH":{"define":"fGGXH","name":"fGGXH","relation":"fGGXH","type":"String"},"fGZKH":{"define":"fGZKH","name":"fGZKH","relation":"fGZKH","type":"String"},"fJG":{"define":"fJG","name":"fJG","relation":"fJG","rules":{"number":true},"type":"Decimal"},"fJLDW":{"define":"fJLDW","name":"fJLDW","relation":"fJLDW","type":"String"},"fYSLX":{"define":"fYSLX","name":"fYSLX","relation":"fYSLX","type":"String"}},"directDelete":false,"events":{},"idColumn":"fBZY","limit":20,"xid":"main2Data"});
}}); 
return __result;});
