window.__justep.__ResourceEngine.loadCss([{url: '/v_5570_nol_zh_CNs_desktopd_pc/system/components/pc.addon.min.css', include: '$model/system/components/justep/pagerBar/css/pagerBar,$model/system/components/justep/widgets/css/widgets,$model/system/components/justep/absoluteLayout/css/absoluteLayout,$model/system/components/justep/pagerLimitSelect/css/pagerLimitSelect,$model/system/components/justep/cellLayout/css/cellLayout,$model/system/components/justep/smartContainer/css/smartContainer'},{url: '/v_5570_nol_zh_CNs_desktopd_pc/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/v_5570_nol_zh_CNs_desktopd_pc/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/v_5570_nol_zh_CNs_desktopd_pc/system/components/comp2.min.js','/v_5570_nol_zh_CNs_desktopd_pc/system/components/biz.comp.min.js','/v_5570_nol_zh_CNs_desktopd_pc/system/biz.common.min.js','/v_5570_nol_zh_CNs_desktopd_pc/system/core.min.js','/v_5570_nol_zh_CNs_desktopd_pc/system/common.min.js','/v_5570_nol_zh_CNs_desktopd_pc/system/components/comp.min.js','/v_5570_nol_zh_CNs_desktopd_pc/system/components/pc.addon.min.js']);define(function(require){
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
var __parent0=require('$model/UI2/custom/crm/process/customManager/mainActivity'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='cENNRbq';
	this._flag_='e724f59cf60403c6347fa249ffe1a10d';
	this.callParent(contextUrl);
 var __BizData__ = require("$UI/system/components/justep/data/bizData");new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_KHXX":{"define":"CU_KHXX","name":"CU_KHXX","relation":"CU_KHXX","type":"String"},"calcCheckBox":{"define":"EXPRESS","name":"calcCheckBox","relation":"EXPRESS","type":"String"},"fBYE":{"define":"CU_KHXX.fBYE","isBiz":true,"label":"备用二","name":"fBYE","relation":"CU_KHXX.fBYE","type":"String"},"fBYS":{"define":"CU_KHXX.fBYS","isBiz":true,"label":"备用三","name":"fBYS","relation":"CU_KHXX.fBYS","type":"String"},"fBYSI":{"define":"CU_KHXX.fBYSI","isBiz":true,"label":"备用四","name":"fBYSI","relation":"CU_KHXX.fBYSI","type":"String"},"fBYY":{"define":"CU_KHXX.fBYY","isBiz":true,"label":"备用一","name":"fBYY","relation":"CU_KHXX.fBYY","type":"String"},"fBYYI":{"define":"CU_KHXX.fBYYI","isBiz":true,"label":"归属人二","name":"fBYYI","relation":"CU_KHXX.fBYYI","type":"String"},"fBZ":{"define":"CU_KHXX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_KHXX.fBZ","type":"Text"},"fBZE":{"define":"CU_KHXX.fBZE","isBiz":true,"label":"标注二","name":"fBZE","relation":"CU_KHXX.fBZE","type":"String"},"fBZY":{"define":"CU_KHXX.fBZY","isBiz":true,"label":"标志一","name":"fBZY","relation":"CU_KHXX.fBZY","type":"String"},"fFLMC":{"define":"CU_QYXX.fFLMC","isBiz":true,"label":"分类名称","name":"fFLMC","relation":"CU_QYXX.fFLMC","type":"String"},"fFLMC1":{"define":"CU_KHFL.fFLMC","isBiz":true,"label":"分类名称","name":"fFLMC1","relation":"CU_KHFL.fFLMC","type":"String"},"fGZR":{"define":"CU_KHXX.fGZR","isBiz":true,"label":"归属人","name":"fGZR","relation":"CU_KHXX.fGZR","type":"String"},"fJSFS":{"define":"CU_KHXX.fJSFS","isBiz":true,"label":"结算方式","name":"fJSFS","relation":"CU_KHXX.fJSFS","type":"String"},"fKHBM":{"define":"CU_KHXX.fKHBM","isBiz":true,"label":"客户编码","name":"fKHBM","relation":"CU_KHXX.fKHBM","type":"String"},"fKHLB":{"define":"CU_KHXX.fKHLB","isBiz":true,"label":"客户类别","name":"fKHLB","relation":"CU_KHXX.fKHLB","type":"String"},"fKHMC":{"define":"CU_KHXX.fKHMC","isBiz":true,"label":"客户名称","name":"fKHMC","relation":"CU_KHXX.fKHMC","type":"String"},"fLXDH":{"define":"CU_KHXX.fLXDH","isBiz":true,"label":"联系电话","name":"fLXDH","relation":"CU_KHXX.fLXDH","type":"String"},"fLXKH":{"define":"CU_KHXX.fLXKH","isBiz":true,"label":"联系客户","name":"fLXKH","relation":"CU_KHXX.fLXKH","type":"String"},"fLXQQ":{"define":"CU_KHXX.fLXQQ","isBiz":true,"label":"联系QQ","name":"fLXQQ","relation":"CU_KHXX.fLXQQ","type":"String"},"fLXR":{"define":"CU_KHXX.fLXR","isBiz":true,"label":"联系人","name":"fLXR","relation":"CU_KHXX.fLXR","type":"String"},"fLXWX":{"define":"CU_KHXX.fLXWX","isBiz":true,"label":"联系微信","name":"fLXWX","relation":"CU_KHXX.fLXWX","type":"String"},"fPARENT":{"define":"CU_KHXX.fPARENT","isBiz":true,"label":"父ID","name":"fPARENT","relation":"CU_KHXX.fPARENT","type":"String"},"fSFFL":{"define":"CU_KHXX.fSFFL","isBiz":true,"label":"是否分类","name":"fSFFL","relation":"CU_KHXX.fSFFL","type":"String"},"fSHDZ":{"define":"CU_KHXX.fSHDZ","isBiz":true,"label":"送货地址","name":"fSHDZ","relation":"CU_KHXX.fSHDZ","type":"Text"},"fSZQY":{"define":"CU_KHXX.fSZQY","isBiz":true,"label":"所属区域","name":"fSZQY","relation":"CU_KHXX.fSZQY","type":"String"},"fWHR":{"define":"CU_KHXX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_KHXX.fWHR","type":"String"},"fWHSJ":{"define":"CU_KHXX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_KHXX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fYDDH":{"define":"CU_KHXX.fYDDH","isBiz":true,"label":"移动电话","name":"fYDDH","relation":"CU_KHXX.fYDDH","type":"String"},"fZDYE":{"define":"CU_KHXX.fZDYE","isBiz":true,"label":"自定义二","name":"fZDYE","relation":"CU_KHXX.fZDYE","type":"Text"},"fZDYL":{"define":"CU_KHXX.fZDYL","isBiz":true,"label":"自定义六","name":"fZDYL","relation":"CU_KHXX.fZDYL","type":"Text"},"fZDYS":{"define":"CU_KHXX.fZDYS","isBiz":true,"label":"自定义三","name":"fZDYS","relation":"CU_KHXX.fZDYS","type":"Text"},"fZDYSI":{"define":"CU_KHXX.fZDYSI","isBiz":true,"label":"自定义四","name":"fZDYSI","relation":"CU_KHXX.fZDYSI","type":"Text"},"fZDYW":{"define":"CU_KHXX.fZDYW","isBiz":true,"label":"自定义五","name":"fZDYW","relation":"CU_KHXX.fZDYW","type":"Text"},"fZDYY":{"define":"CU_KHXX.fZDYY","isBiz":true,"label":"自定义一","name":"fZDYY","relation":"CU_KHXX.fZDYY","type":"Text"},"fZYMC":{"define":"CU_ZYXX.fZYMC","isBiz":true,"label":"职员名称","name":"fZYMC","relation":"CU_ZYXX.fZYMC","type":"String"},"version":{"define":"CU_KHXX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_KHXX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":true,"events":{"onSaveCommit":"saveCommit","onValueChanged":"mainDataValueChanged"},"idColumn":"CU_KHXX","limit":60,"newAction":"createCU_KHXXAction","offset":0,"queryAction":"queryCU_KHXXAction","saveAction":"saveCU_KHXXAction","updateMode":"whereVersion","xid":"mainData"});
 new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_ZYXX":{"define":"CU_ZYXX","name":"CU_ZYXX","relation":"CU_ZYXX","type":"String"},"fBYE":{"define":"CU_ZYXX.fBYE","isBiz":true,"label":"备用二","name":"fBYE","relation":"CU_ZYXX.fBYE","type":"String"},"fBYY":{"define":"CU_ZYXX.fBYY","isBiz":true,"label":"备用一","name":"fBYY","relation":"CU_ZYXX.fBYY","type":"String"},"fBZ":{"define":"CU_ZYXX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_ZYXX.fBZ","type":"String"},"fBZE":{"define":"CU_ZYXX.fBZE","isBiz":true,"label":"标注二","name":"fBZE","relation":"CU_ZYXX.fBZE","type":"String"},"fBZY":{"define":"CU_ZYXX.fBZY","isBiz":true,"label":"标注一","name":"fBZY","relation":"CU_ZYXX.fBZY","type":"String"},"fCSNY":{"define":"CU_ZYXX.fCSNY","isBiz":true,"label":"出生年月","name":"fCSNY","relation":"CU_ZYXX.fCSNY","rules":{"date":true},"type":"Date"},"fGW":{"define":"CU_ZYXX.fGW","isBiz":true,"label":"岗位","name":"fGW","relation":"CU_ZYXX.fGW","type":"String"},"fLXDH":{"define":"CU_ZYXX.fLXDH","isBiz":true,"label":"电话","name":"fLXDH","relation":"CU_ZYXX.fLXDH","type":"String"},"fLXQQ":{"define":"CU_ZYXX.fLXQQ","isBiz":true,"label":"QQ","name":"fLXQQ","relation":"CU_ZYXX.fLXQQ","type":"String"},"fLXWX":{"define":"CU_ZYXX.fLXWX","isBiz":true,"label":"微信","name":"fLXWX","relation":"CU_ZYXX.fLXWX","type":"String"},"fRZSJ":{"define":"CU_ZYXX.fRZSJ","isBiz":true,"label":"入职时间","name":"fRZSJ","relation":"CU_ZYXX.fRZSJ","rules":{"date":true},"type":"Date"},"fSFZHM":{"define":"CU_ZYXX.fSFZHM","isBiz":true,"label":"身份证号","name":"fSFZHM","relation":"CU_ZYXX.fSFZHM","type":"String"},"fSHDZ":{"define":"CU_ZYXX.fSHDZ","isBiz":true,"label":"地址","name":"fSHDZ","relation":"CU_ZYXX.fSHDZ","type":"String"},"fTXSJ":{"define":"CU_ZYXX.fTXSJ","isBiz":true,"label":"提醒时间","name":"fTXSJ","relation":"CU_ZYXX.fTXSJ","rules":{"date":true},"type":"Date"},"fWHR":{"define":"CU_ZYXX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_ZYXX.fWHR","type":"String"},"fWHSJ":{"define":"CU_ZYXX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_ZYXX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXB":{"define":"CU_ZYXX.fXB","isBiz":true,"label":"性别","name":"fXB","relation":"CU_ZYXX.fXB","type":"String"},"fYDDH":{"define":"CU_ZYXX.fYDDH","isBiz":true,"label":"手机","name":"fYDDH","relation":"CU_ZYXX.fYDDH","type":"String"},"fZDYE":{"define":"CU_ZYXX.fZDYE","isBiz":true,"label":"自定义二","name":"fZDYE","relation":"CU_ZYXX.fZDYE","type":"String"},"fZDYL":{"define":"CU_ZYXX.fZDYL","isBiz":true,"label":"自定义六","name":"fZDYL","relation":"CU_ZYXX.fZDYL","type":"String"},"fZDYS":{"define":"CU_ZYXX.fZDYS","isBiz":true,"label":"自定义三","name":"fZDYS","relation":"CU_ZYXX.fZDYS","type":"String"},"fZDYSI":{"define":"CU_ZYXX.fZDYSI","isBiz":true,"label":"自定义四","name":"fZDYSI","relation":"CU_ZYXX.fZDYSI","type":"String"},"fZDYW":{"define":"CU_ZYXX.fZDYW","isBiz":true,"label":"自定义五","name":"fZDYW","relation":"CU_ZYXX.fZDYW","type":"String"},"fZDYY":{"define":"CU_ZYXX.fZDYY","isBiz":true,"label":"自定义一","name":"fZDYY","relation":"CU_ZYXX.fZDYY","type":"String"},"fZYBM":{"define":"CU_ZYXX.fZYBM","isBiz":true,"label":"职员编码","name":"fZYBM","relation":"CU_ZYXX.fZYBM","type":"String"},"fZYMC":{"define":"CU_ZYXX.fZYMC","isBiz":true,"label":"职员名称","name":"fZYMC","relation":"CU_ZYXX.fZYMC","type":"String"},"version":{"define":"CU_ZYXX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_ZYXX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"CU_ZYXX","limit":20,"newAction":"createCU_ZYXXAction","offset":0,"queryAction":"queryCU_ZYXXAction","saveAction":"saveCU_ZYXXAction","updateMode":"whereVersion","xid":"personData"});
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"type":{"define":"type","label":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"type","initData":"[{\"type\":\"是\"},{\"type\":\"否\"}]","limit":20,"xid":"lxData"});
 new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_KHFL":{"define":"CU_KHFL","name":"CU_KHFL","relation":"CU_KHFL","type":"String"},"fBZ":{"define":"CU_KHFL.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_KHFL.fBZ","type":"String"},"fFLMC":{"define":"CU_KHFL.fFLMC","isBiz":true,"label":"分类名称","name":"fFLMC","relation":"CU_KHFL.fFLMC","type":"String"},"fWHR":{"define":"CU_KHFL.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_KHFL.fWHR","type":"String"},"fWHSJ":{"define":"CU_KHFL.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_KHFL.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_KHFL.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_KHFL.fXXBM","type":"String"},"version":{"define":"CU_KHFL.version","isBiz":true,"label":"版本","name":"version","relation":"CU_KHFL.version","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"CU_KHFL","limit":20,"newAction":"createCU_KHFLAction","offset":0,"queryAction":"queryCU_KHFLAction","saveAction":"saveCU_KHFLAction","updateMode":"whereAll","xid":"typeData"});
 new __Data__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"defCols":{"type":{"define":"type","label":"type","name":"type","relation":"type","type":"String"}},"directDelete":false,"events":{},"idColumn":"type","initData":"[{\"type\":\"现结\"},{\"type\":\"账期\"}]","limit":20,"xid":"jsData"});
 new __BizData__(this,{"autoLoad":true,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_QYXX":{"define":"CU_QYXX","name":"CU_QYXX","relation":"CU_QYXX","type":"String"},"fBYE":{"define":"CU_QYXX.fBYE","isBiz":true,"label":"备用二","name":"fBYE","relation":"CU_QYXX.fBYE","type":"String"},"fBYY":{"define":"CU_QYXX.fBYY","isBiz":true,"label":"备用一","name":"fBYY","relation":"CU_QYXX.fBYY","type":"String"},"fBZ":{"define":"CU_QYXX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_QYXX.fBZ","type":"String"},"fBZE":{"define":"CU_QYXX.fBZE","isBiz":true,"label":"标注二","name":"fBZE","relation":"CU_QYXX.fBZE","type":"String"},"fBZY":{"define":"CU_QYXX.fBZY","isBiz":true,"label":"标注一","name":"fBZY","relation":"CU_QYXX.fBZY","type":"String"},"fFLMC":{"define":"CU_QYXX.fFLMC","isBiz":true,"label":"分类名称","name":"fFLMC","relation":"CU_QYXX.fFLMC","type":"String"},"fWHR":{"define":"CU_QYXX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_QYXX.fWHR","type":"String"},"fWHSJ":{"define":"CU_QYXX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_QYXX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXXBM":{"define":"CU_QYXX.fXXBM","isBiz":true,"label":"信息编码","name":"fXXBM","relation":"CU_QYXX.fXXBM","type":"String"},"version":{"define":"CU_QYXX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_QYXX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"idColumn":"CU_QYXX","limit":20,"newAction":"createCU_QYXXAction","offset":0,"queryAction":"queryCU_QYXXAction","saveAction":"saveCU_QYXXAction","updateMode":"whereVersion","xid":"areaData"});
 new __BizData__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"dataModel":"/custom/crm/data","defAggCols":{},"defCols":{"CU_ZYXX":{"define":"CU_ZYXX","name":"CU_ZYXX","relation":"CU_ZYXX","type":"String"},"fBYE":{"define":"CU_ZYXX.fBYE","isBiz":true,"label":"备用二","name":"fBYE","relation":"CU_ZYXX.fBYE","type":"String"},"fBYY":{"define":"CU_ZYXX.fBYY","isBiz":true,"label":"备用一","name":"fBYY","relation":"CU_ZYXX.fBYY","type":"String"},"fBZ":{"define":"CU_ZYXX.fBZ","isBiz":true,"label":"备注","name":"fBZ","relation":"CU_ZYXX.fBZ","type":"String"},"fBZE":{"define":"CU_ZYXX.fBZE","isBiz":true,"label":"标注二","name":"fBZE","relation":"CU_ZYXX.fBZE","type":"String"},"fBZY":{"define":"CU_ZYXX.fBZY","isBiz":true,"label":"标注一","name":"fBZY","relation":"CU_ZYXX.fBZY","type":"String"},"fCSNY":{"define":"CU_ZYXX.fCSNY","isBiz":true,"label":"出生年月","name":"fCSNY","relation":"CU_ZYXX.fCSNY","rules":{"date":true},"type":"Date"},"fGW":{"define":"CU_ZYXX.fGW","isBiz":true,"label":"岗位","name":"fGW","relation":"CU_ZYXX.fGW","type":"String"},"fLXDH":{"define":"CU_ZYXX.fLXDH","isBiz":true,"label":"电话","name":"fLXDH","relation":"CU_ZYXX.fLXDH","type":"String"},"fLXQQ":{"define":"CU_ZYXX.fLXQQ","isBiz":true,"label":"QQ","name":"fLXQQ","relation":"CU_ZYXX.fLXQQ","type":"String"},"fLXWX":{"define":"CU_ZYXX.fLXWX","isBiz":true,"label":"微信","name":"fLXWX","relation":"CU_ZYXX.fLXWX","type":"String"},"fRZSJ":{"define":"CU_ZYXX.fRZSJ","isBiz":true,"label":"入职时间","name":"fRZSJ","relation":"CU_ZYXX.fRZSJ","rules":{"date":true},"type":"Date"},"fSFZHM":{"define":"CU_ZYXX.fSFZHM","isBiz":true,"label":"身份证号","name":"fSFZHM","relation":"CU_ZYXX.fSFZHM","type":"String"},"fSHDZ":{"define":"CU_ZYXX.fSHDZ","isBiz":true,"label":"地址","name":"fSHDZ","relation":"CU_ZYXX.fSHDZ","type":"String"},"fTXSJ":{"define":"CU_ZYXX.fTXSJ","isBiz":true,"label":"提醒时间","name":"fTXSJ","relation":"CU_ZYXX.fTXSJ","rules":{"date":true},"type":"Date"},"fWHR":{"define":"CU_ZYXX.fWHR","isBiz":true,"label":"维护人","name":"fWHR","relation":"CU_ZYXX.fWHR","type":"String"},"fWHSJ":{"define":"CU_ZYXX.fWHSJ","isBiz":true,"label":"维护时间","name":"fWHSJ","relation":"CU_ZYXX.fWHSJ","rules":{"datetime":true},"type":"DateTime"},"fXB":{"define":"CU_ZYXX.fXB","isBiz":true,"label":"性别","name":"fXB","relation":"CU_ZYXX.fXB","type":"String"},"fYDDH":{"define":"CU_ZYXX.fYDDH","isBiz":true,"label":"手机","name":"fYDDH","relation":"CU_ZYXX.fYDDH","type":"String"},"fZDYE":{"define":"CU_ZYXX.fZDYE","isBiz":true,"label":"自定义二","name":"fZDYE","relation":"CU_ZYXX.fZDYE","type":"String"},"fZDYL":{"define":"CU_ZYXX.fZDYL","isBiz":true,"label":"自定义六","name":"fZDYL","relation":"CU_ZYXX.fZDYL","type":"String"},"fZDYS":{"define":"CU_ZYXX.fZDYS","isBiz":true,"label":"自定义三","name":"fZDYS","relation":"CU_ZYXX.fZDYS","type":"String"},"fZDYSI":{"define":"CU_ZYXX.fZDYSI","isBiz":true,"label":"自定义四","name":"fZDYSI","relation":"CU_ZYXX.fZDYSI","type":"String"},"fZDYW":{"define":"CU_ZYXX.fZDYW","isBiz":true,"label":"自定义五","name":"fZDYW","relation":"CU_ZYXX.fZDYW","type":"String"},"fZDYY":{"define":"CU_ZYXX.fZDYY","isBiz":true,"label":"自定义一","name":"fZDYY","relation":"CU_ZYXX.fZDYY","type":"String"},"fZYBM":{"define":"CU_ZYXX.fZYBM","isBiz":true,"label":"职员编码","name":"fZYBM","relation":"CU_ZYXX.fZYBM","type":"String"},"fZYMC":{"define":"CU_ZYXX.fZYMC","isBiz":true,"label":"职员名称","name":"fZYMC","relation":"CU_ZYXX.fZYMC","type":"String"},"version":{"define":"CU_ZYXX.version","isBiz":true,"label":"版本","name":"version","relation":"CU_ZYXX.version","rules":{"integer":true},"type":"Integer"}},"directDelete":false,"events":{},"filters":{"filter0":""},"idColumn":"CU_ZYXX","limit":60,"newAction":"createCU_ZYXXAction","offset":0,"queryAction":"queryCU_ZYXXAction","saveAction":"saveCU_ZYXXAction","updateMode":"whereVersion","xid":"personData"});
}}); 
return __result;});
