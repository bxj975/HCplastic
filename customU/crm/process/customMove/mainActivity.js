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
		this.readOnlyfalse();
		this.write();
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
	Model.prototype.personBtnClick = function(event) {
		var mainData = this.comp("mainData");
		var type = mainData.getValue("fLB");
		var send = mainData.getValue("fLXR");
		var up = mainData.getValue("fGZR");
		if (type == null || send == null || up == null)
			justep.Util.hint("请先填写'事由'、'发送人'、’接收人‘！");
		else {
			this.readOnlytrue();
			var dialog = this.comp('windowDialog1');
			var url = require.toUrl("./secondActivity.w");
			dialog.open({
				src : url,
				params : {
					a1 : send,
				}
			});
		}
	};

	Model.prototype.mainAction = function() {// 主表数据保存前
		var mainData = this.comp("mainData");
		var detailData = this.comp("detailData");
		var moveType = mainData.getValue('fBYY');
		// var sendClerkID = mainData.getValue('fGZR');
		var recaiveClerkID = mainData.getValue('fGZR');
		var me = this;
		detailData.each(function(param) {
			var params = new biz.Request.ActionParam();
			if (moveType == '完全交接') {
				params.setString("customID", param.row.val("fKHID"));
				params.setString("clerkID", recaiveClerkID);
				biz.Request.sendBizRequest({
					"context" : me.getContext(),
					"action" : "moveAction",
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
			} else if (moveType == '首次交接') {
				params.setString("customID", param.row.val("fKHID"));
				params.setString("clerkID", recaiveClerkID);
				biz.Request.sendBizRequest({
					"context" : me.getContext(),
					"action" : "oneMoveAction",
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
			} else {
				params.setString("customID", param.row.val("fKHID"));
				biz.Request.sendBizRequest({
					"context" : me.getContext(),
					"action" : "twoMoveAction",
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
	};

	Model.prototype.readOnlyfalse = function() {
		this.comp("typeGridSelect").set({
			"disabled" : false
		});
		this.comp("outGridSelect").set({
			"disabled" : false
		});
		this.comp("inGridSelect").set({
			"disabled" : false
		});
		this.comp("causeGridSelect").set({
			"disabled" : false
		});
		this.comp("fDJBH").set({
			"disabled" : false
		});
	};

	Model.prototype.readOnlytrue = function() {
		this.comp("typeGridSelect").set({
			"disabled" : true
		});
		this.comp("outGridSelect").set({
			"disabled" : true
		});
		this.comp("inGridSelect").set({
			"disabled" : true
		});
		this.comp("causeGridSelect").set({
			"disabled" : true
		});
		this.comp("fDJBH").set({
			"disabled" : true
		});
	};

	Model.prototype.write = function() {
		this.comp("personBtn").set({
			"disabled" : false
		});
		this.comp("delBtn2").set({
			"disabled" : false
		});
		this.comp("saveBtn2").set({
			"disabled" : false
		});
	};

	Model.prototype.read = function() {
		this.comp("personBtn").set({
			"disabled" : true
		});
		this.comp("delBtn2").set({
			"disabled" : true
		});
		this.comp("saveBtn2").set({
			"disabled" : true
		});
	};

	Model.prototype.detailDataAfterNew = function(event) {
		var mainData = this.comp("mainData");
		var detailData = this.comp("detailData");
		var up = mainData.getValue("fBZY");
		detailData.each(function(param) {
			detailData.setValue("fGZR", up, param.row);
		});
	};

	Model.prototype.mainDataValueChanged = function(event) {
		var curName = this.getContext().getCurrentPersonName();
		var now = new Date();
		this.comp('mainData').setValue("fWHR", curName);
		this.comp('mainData').setValue("fWHSJ", now);
	};

	Model.prototype.auditCheckboxChange = function(event) {
		var me = this;
		var mainData = this.comp("mainData");
		var detailData = this.comp("detailData");
		var audit = mainData.getValue('fSH');
		if (audit != '是') {
			var yes = me.comp('auditCheckbox').val();
			if (yes == '是') {
				me.mainAction();
				mainData.setValue("fSH", '是');
				detailData.each(function(param) {
					detailData.setValue("fSH", '1', param.row);
				});
				mainData.saveData();
				me.read();
			}
		}
	};

	Model.prototype.saveBtn2Click = function(event) {
		var detailData = this.comp("detailData");
		var result = detailData.getValue('fKHMC');
		var me = this;
		if (result == null)
			justep.Util.hint("请选择人员！");
		else {
			var mainData = me.comp('mainData');
			mainData.saveData();
			me.comp("auditCheckbox").set({
				"disabled" : false
			});
		}
	};

	Model.prototype.qdBtnClick = function(event) {
		var dep = this.comp('depData');
		var days = dep.getValue("days");
		if (days == null)
			justep.Util.hint("请选择时间！");
		else {
			var mainData = this.comp("mainData");
			var date = new Date();
			var newDate = justep.Date.decrease(date, days, 'd');
			var endDate = justep.Date.toString(newDate, date.STANDART_FORMAT_SHOT);
			mainData.setFilter("typeFilter", "CU_JJZB.fDJRQ>'" + endDate + "'");
			mainData.refreshData();
		}
	};

	Model.prototype.modelLoad = function(event) {
		var mainData = this.comp("mainData");
		var date = new Date();
		var endDate = justep.Date.toString(date, date.STANDART_FORMAT_SHOT);
		mainData.setFilter("typeFilter", "CU_JJZB.fDJRQ='" + endDate + "'");
		mainData.refreshData();
	};

	return Model;
});