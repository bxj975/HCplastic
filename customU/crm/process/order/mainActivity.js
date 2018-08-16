define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var biz = require("$UI/system/lib/biz");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.newBtnClick = function(event) {
		var mainData = this.comp("mainData");
		mainData.newData();
		this.goTotab();
		// this.readonlyfalse();
	};

	Model.prototype.goTotab = function() {
		var tabs = this.comp("tabs");
		tabs.setActiveTab("nav-detail");
	};

	Model.prototype.orderTablesRowDblClick = function(event) {
		var mainData = this.comp("mainData");
		mainData.to(event.bindingContext.$object);
		this.goTotab();
	};

	Model.prototype.DataSaveCommit = function(event) {
		justep.Util.hint("保存成功！", {
			type : 'success',
			parent : this.getRootNode()
		});
	};
	Model.prototype.modelLoad = function(event) { // 页面加载事件
		var curName = this.getContext().getCurrentPersonName();
		var mainData = this.comp("mainData");
		var date = new Date();
		// var endDate = justep.Date.toString(date, date.STANDART_FORMAT_SHOT);
		var endDate = justep.Date.toString(date, "yyyy-MM-dd");
		var departName = this.getContext().getCurrentDeptName();
		if (departName == '经理部' || departName == '管理部') {
			mainData.setFilter("typeFilter", "CU_DDZB.fTXSJ='" + endDate + "'");
			mainData.refreshData();
			// this.comp("fDJRQ").set({
			// "disabled" : false
			// });
			this.comp("noBtn").set({
				"disabled" : false
			});
			this.comp("gzrGridSelect").set({
				"disabled" : false
			});
		} else {
			mainData.setFilter("typeFilter", "fGZR='" + curName + "' AND CU_DDZB.fTXSJ='" + endDate + "'");
			mainData.refreshData();
		}
		// this.readonlytrue();
		/***********************************************************************
		 * var post = this.getContext().getCurrentPosCode(); var curName =
		 * this.getContext().getCurrentDeptName(); var mainData =
		 * this.comp('mainData'); var date = new Date(); var endDate =
		 * justep.Date.toString(date, date.STANDART_FORMAT_SHOT); if (post ==
		 * "班组管理员") { mainData.setFilter("typeFilter", "HR_DZZB.fSZBZ='" +
		 * curName + "' AND HR_DZZB.fWHSJ='" + endDate + "'"); } else {
		 * mainData.setFilter("typeFilter", "fSZBM='" + curName + "' AND
		 * HR_DZZB.fWHSJ='" + endDate + "'"); } mainData.refreshData(); if (post ==
		 * "段管理员") { this.comp("depBtn").set({ "disabled" : false }); } };
		 **********************************************************************/
		/***********************************************************************
		 * var mainData = this.comp("mainData"); var me = this;
		 * $(me.getElementByXid("fKHBM")).bind('keydown', function(evt) { if
		 * (evt.keyCode == 13) { // var val = me.comp("fKHBM").val(); // var
		 * val2 = mainData.getValue("fKHBM"); // alert(val + val2); } }); //
		 * this.getElementByXid("fName").value
		 **********************************************************************/
	};

	/***************************************************************************
	 * Model.prototype.detailGridReload = function(event) { var detailData =
	 * this.comp("detailData"); var me = this;
	 * me.comp("detailGrid").setFooterData({ fCPBM : '合计：', fSL :
	 * me.detailData.sum("fSL"), fHJ : me.detailData.sum("fHJ") }); };
	 * Model.prototype.detailGridInit = function(event) {
	 * this.detailGridReload(); };
	 * 
	 * Model.prototype.detailGridIndexChanged = function(event) {
	 * this.detailGridReload(); };
	 **************************************************************************/

	/***************************************************************************
	 * var isReadonly = true; Model.prototype.isReadonly = function() { var
	 * curName = this.getContext().getCurrentPersonName(); var now = new Date();
	 * var nowdate=justep.Date.toString(now, 'yyyy-MM-dd') var mainData =
	 * this.comp("mainData"); mainData.setr var user =
	 * mainData.getValue('fGZR'); var date = mainData.getValue('fDJRQ');
	 * 
	 * //alert(user == curName); if (user == curName && date == nowdate)
	 * isReadonly = false; else if (user == "admin") isReadonly = false; return
	 * isReadonly; $model.isReadonly() };
	 **************************************************************************/

	Model.prototype.mainDataValueChanged = function(event) { // 修改维护事件
		var curName = this.getContext().getCurrentPersonName();
		var now = new Date();
		this.comp('mainData').setValue("fWHR", curName);
		this.comp('mainData').setValue("fWHSJ", now);
	};

	Model.prototype.readonlyfalse = function() { // 页面撤销只读事件
		this.comp("fDJBH").set({
			"disabled" : false
		});
		this.comp("fKHBM").set({
			"disabled" : false
		});
		this.comp("fTXSJ").set({
			"disabled" : false
		});
		this.comp("gridSelect4").set({
			"disabled" : false
		});
		this.comp("detailGrid").set({
			"directEdit" : true
		});
		this.comp("saveBtn2").set({
			"disabled" : false
		});
		this.comp("button2").set({
			"disabled" : false
		});
		this.comp("productBtn").set({
			"disabled" : false
		});
		this.comp("deleteBtn").set({
			"disabled" : false
		});
		this.comp("fKHYQ").set({
			"disabled" : false
		});
		this.comp("fCPBZ").set({
			"disabled" : false
		});
		this.comp("customBtn").set({
			"disabled" : false
		});
	};

	Model.prototype.readonlytrue = function() { // 页面只读事件
		this.comp("fDJBH").set({
			"disabled" : true
		});
		this.comp("fKHBM").set({
			"disabled" : true
		});
		this.comp("fTXSJ").set({
			"disabled" : true
		});
		this.comp("gridSelect4").set({
			"disabled" : true
		});
		this.comp("detailGrid").set({
			"directEdit" : false
		});
		this.comp("saveBtn2").set({
			"disabled" : true
		});
		this.comp("button2").set({
			"disabled" : true
		});
		this.comp("productBtn").set({
			"disabled" : true
		});
		this.comp("deleteBtn").set({
			"disabled" : true
		});
		this.comp("fKHYQ").set({
			"disabled" : true
		});
		this.comp("fCPBZ").set({
			"disabled" : true
		});
		this.comp("customBtn").set({
			"disabled" : true
		});
	};

	Model.prototype.saveBtn2Click = function(event) { // 保存按钮事件
		var me = this;
		var detailData = this.comp('detailData');
		var params = new biz.Request.ActionParam();
		detailData.each(function(param) {
			var productID = detailData.getValue('fBYY', param.row);
			var price = detailData.getValue('fJG', param.row);
			// if (isNaN(price))
			// alert(price);
			// if (price != null || price != '') {
			if (price > 0) {
				params.setString("productID", productID);
				params.setDecimal("price", price);
				biz.Request.sendBizRequest({
					"context" : me.getContext(),
					"action" : "priceAction",
					"parameters" : params,
					"callback" : function(data) {
						data.ignoreError = false;
						if (data.state) {
							// var result = data.response;
						} else {
							throw new Error("调用失败！|" + data.response.message);
						}
					}
				});
			}
		});
		this.comp('mainData').saveData();
		// this.readonlytrue();
	};

	// $(me.getElementByXid("TfRQF")).focus();

	Model.prototype.fKHYQDblclick = function(event) { // 客戶要求打开模板
		this.comp("windowDialog3").open();
	};

	Model.prototype.fBZ1Dblclick = function(event) {
		this.comp("windowDialog6").open(); // 产品备注打开模板
	};

	Model.prototype.input1Change = function(event) {
		/***********************************************************************
		 * var detailData = this.comp("detailData"); // var id =
		 * this.comp('detailData').val('id'); // var row =
		 * this.comp('detailData').getRowByID(id); // var
		 * banshu=detailData.getValue('fBS',row); var number =
		 * detailData.getValue('fSL'); var price = detailData.getValue('fJG');
		 * var banNumber = detailData.getValue('fBS'); var banPrice =
		 * detailData.getValue('fBDJ'); if (number != null && price != null &&
		 * banNumber != null && banPrice != null) { detailData.setValue('fHJ',
		 * number * price + banNumber * banPrice); } if (number != null && price !=
		 * null) { detailData.setValue('fBYE', number * price); } if (banNumber !=
		 * null && banPrice != null) { detailData.setValue('fBFHJ', banNumber *
		 * banPrice); }
		 **********************************************************************/
	};

	Model.prototype.delBtn1Click = function(event) {// 列表删除事件
		var data = this.comp("mainData");
		var pName = data.getValue('fKHMC');
		if (pName == null)
			data.deleteData();
		else
			alert("只能删除空记录!");
	};

	Model.prototype.delBtn2Click = function(event) {// 详细删除事件
		var mainData = this.comp('mainData');
		var danJu = mainData.getValue('fDJBH');
		var me = this;
		var params = new biz.Request.ActionParam();
		params.setString("danjuID", danJu);
		biz.Request.sendBizRequest({
			"context" : me.getContext(),
			"action" : "deleteAction",
			"parameters" : params,
			"callback" : function(data) {
				data.ignoreError = false;
				if (data.state) {
					// var result = data.response;
				} else {
					throw new Error("调用失败！|" + data.response.message);
				}
			}
		});
		mainData.deleteData();
	};

	Model.prototype.detailDataAfterNew = function(event) {// 从表数据新增后
		var mainData = this.comp('mainData');
		var danJu = mainData.getValue('fDJBH');
		var date = mainData.getValue('fDJRQ');
		var detailData = this.comp('detailData');
		detailData.each(function(param) {
			detailData.setValue('fDJBH', danJu, param.row);
			detailData.setValue('fDJRQ', date, param.row);
		});
	};

	Model.prototype.mainDataBeforeSave = function(event) {// 主表数据保存前
		var detailData = this.comp('detailData');
		detailData.each(function(param) {
			var fBS = detailData.getValue('fBS', param.row);
			var fBDJ = detailData.getValue('fBDJ', param.row);
			var bhj = 0;
			if (fBS !== null || fBS !== '' || fBDJ !== null || fBDJ !== '')
				bhj = fBS * fBDJ;
			var fSL = detailData.getValue('fSL', param.row);
			var fJG = detailData.getValue('fJG', param.row);
			var hhj = 0;
			if (fSL !== null || fSL !== '' || fJG !== null || fJG !== '')
				hhj = fSL * fJG;
			detailData.setValue('fBFHJ', bhj, param.row);
			detailData.setValue('fHJ', hhj, param.row);
			detailData.setValue('fBYE', bhj + hhj, param.row);
		});
	};

	Model.prototype.copyBtnClick = function(event) {// 复制按钮事件
		var mainData = this.comp('mainData');
		var detailData = this.comp('detailData');
		var main2Data = this.comp('main2Data');
		var detail2Data = this.comp('detail2Data');
		var row = mainData.getCurrentRow();
		var row2 = main2Data.getCurrentRow();
		row2.assign(row);
		detailData.each(function(param) {
			detail2Data.next();
			detail2Data.newData();
			var drow = detailData.getCurrentRow();
			var drow2 = detail2Data.getCurrentRow();
			drow2.assign(drow);
			detail2Data.saveData();
		});
		// detail2Data.saveData();
		this.comp("pasteBtn").set({
			"disabled" : false
		});
	};

	Model.prototype.pasteBtnClick = function(event) {// 粘贴按钮事件
		var mainData = this.comp('mainData');
		var detailData = this.comp('detailData');
		var main2Data = this.comp('main2Data');
		var detail2Data = this.comp('detail2Data');
		// var kehu = mainData.getValue('fKHMC');
		// if (kehu === '' || kehu === null) {
		var row = main2Data.getCurrentRow();
		var row2 = mainData.getCurrentRow();
		row2.assign(row);
		detail2Data.each(function(param) {
			detailData.newData();
			// detailData.next();
			var row = detail2Data.getCurrentRow();
			var row2 = detailData.getCurrentRow();
			row2.assign(row);
		});
		// }
	};

	Model.prototype.fKHMCDblclick = function(event) {// 双击客户名称框事件
		this.customBtnClick();
	};

	Model.prototype.customBtnClick = function(event) {// 客户按钮事件
		var curName = this.getContext().getCurrentPersonName();
		var me = this;
		var result = '';
		var params = new biz.Request.ActionParam();
		params.setString("personName", curName);
		biz.Request.sendBizRequest({
			"context" : me.getContext(),
			"action" : "personIDAction",
			"parameters" : params,
			"callback" : function(data) {
				data.ignoreError = false;
				if (data.state) {
					result = data.response;
				} else {
					throw new Error("调用失败！|" + data.response.message);
				}
			}
		});
		var dialog = this.comp('windowDialog1');
		var url = require.toUrl("./secondActivity.w");
		dialog.open({
			src : url,
			params : {
				a1 : result,
			}
		});
	};

	Model.prototype.gridSelect2ShowOption = function(event) {// 员工下拉事件
		var personData = this.comp("personData");
		var curName = this.getContext().getCurrentPersonName();
		var departName = this.getContext().getCurrentDeptName();
		if (departName == '经理部' || departName == '管理部') {
			personData.setFilter("typeFilter", "");
			personData.refreshData();
		} else {
			personData.setFilter("typeFilter", "CU_ZYXX.fZYMC='" + curName + "'");
			personData.refreshData();
		}
		// personData.refreshData();
		// this.personDataAfterRefresh();
	};

	Model.prototype.personDataAfterRefresh = function() {// 员工刷新事件
		//var departName = this.getContext().getCurrentDeptName();
		//if (departName == '经理部' || departName == '管理部') {
			var data = this.comp("personData");
			data.newData({
				"index" : 0,
				"defaultValues" : [ {
					fZYMC : "全部",
					fID : "全部"
				} ]
			});
		//}
	};

	Model.prototype.productBtnClick = function(event) {// 产品按钮事件
		// $UI/custom/crm/process/product/mainActivity.w
		var mainData = this.comp('mainData');
		var customID = mainData.getValue('fBYY');
		var customName = mainData.getValue('fKHMC');
		var dialog = this.comp('windowDialog2');
		var url = require.toUrl("./thirdActivity.w");
		if (customID == null || customName == null)
			justep.Util.hint("客户名称不能为空！");
		else {
			dialog.open({
				src : url,
				params : {
					a1 : customID,
					a2 : customName
				}
			});
		}
	};

	Model.prototype.qdBtnClick = function(event) {// 确定按钮事件
		var dep = this.comp('depData');
		var personName = dep.getValue("name");
		var days = dep.getValue("days");
		if (personName == null || days == null)
			justep.Util.hint("请选择职员和时间！");
		else {
			var mainData = this.comp("mainData");
			var date = new Date();
			var newDate = justep.Date.decrease(date, days, 'd');
			var endDate = justep.Date.toString(newDate, date.STANDART_FORMAT_SHOT);
			//var departName = this.getContext().getCurrentDeptName();
			//if (departName == '经理部' || departName == '管理部') {
				if (personName == "全部") {
					mainData.setFilter("typeFilter", "CU_DDZB.fDJRQ>'" + endDate + "'");
				} else {
					mainData.setFilter("typeFilter", "fGZR='" + personName + "' AND CU_DDZB.fDJRQ>'" + endDate + "'");
				}
			//} else {
			//	mainData.setFilter("typeFilter", "fGZR='" + personName + "' AND CU_DDZB.fDJRQ>'" + endDate + "'");
			//}
			mainData.refreshData();
		}
	};

	Model.prototype.yesCheckboxChange = function(event) {
		var me = this;
		var mainData = this.comp("mainData");
		var detailData = this.comp("detailData");
		var audit = mainData.getValue('fBYSI');
		if (audit != '是') {
			var yes = me.comp('yesCheckbox').val();
			if (yes == '是') {
				mainData.setValue("fBYSI", '是');
				detailData.each(function(param) {
					detailData.setValue("fBYSI", '1', param.row);
				});
				mainData.saveData();
				// me.read();
			}
		}
	};

	Model.prototype.noBtnClick = function(event) {
		var mainData = this.comp("mainData");
		var detailData = this.comp("detailData");
		var audit = mainData.getValue('fBYSI');
		if (audit == '是') {
			mainData.setValue("fBYSI", '否');
			detailData.each(function(param) {
				detailData.setValue("fBYSI", '0', param.row);
			});
			mainData.saveData();
			// me.read();
		}
	};

	Model.prototype.fDJRQChange = function(event) {
		var date = this.comp('fDJRQ').val();
		var detailData = this.comp('detailData');
		var length = detailData.getCount();
		if (length > 0 && date != null && date != '') {
			detailData.each(function(param) {
				detailData.setValue('fDJRQ', date, param.row);
			});
		}
	};

	return Model;
});
