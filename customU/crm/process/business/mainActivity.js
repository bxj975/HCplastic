define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.saveCommit = function(event) {
		justep.Util.hint("保存成功！", {
			type : 'success',
			parent : this.getRootNode()
		});
	};

	Model.prototype.grid3RowClick = function(event) {
		var data = this.comp("mainData");
		var id = event.row.getID();
		data.to(id);
		var tabs = this.comp('tabs');
		tabs.setActiveTab('nav-detail');
	};

	Model.prototype.delBtn1Click = function(event) {
		var data = this.comp("mainData");
		var pName = data.getValue('fKHBM');
		if (pName == null)
			data.deleteData();
		else
			alert("只能删除空记录!");
	};

	Model.prototype.delBtn2Click = function(event) {
		var data = this.comp("mainData");
		data.deleteData();
		var tabs = this.comp('tabs');
		tabs.setActiveTab('nav-list');
	};

	Model.prototype.addBtnClick = function() {
		var data = this.comp("mainData");
		data.newData();
		var tabs = this.comp('tabs');
		tabs.setActiveTab('nav-detail');
		this.readonlyfalse();
	};

	Model.prototype.mainDataValueChanged = function(event) {
		var curName = this.getContext().getCurrentPersonName();
		var now = new Date();
		this.comp('mainData').setValue("fWHR", curName);
		this.comp('mainData').setValue("fWHSJ", now);
	};

	Model.prototype.fKHBMDblclick = function(event) {
		this.comp("windowDialog1").open();
	};

	Model.prototype.fYWJSDblclick = function(event) {
		this.comp("windowDialog2").open();
	};

	Model.prototype.fBZDblclick = function(event) {
		this.comp("windowDialog3").open();
	};

	Model.prototype.readonlyfalse = function(event) {
		this.comp("fDJBH").set({
			"disabled" : false
		});
		this.comp("fKHBM").set({
			"disabled" : false
		});
		this.comp("gridSelect1").set({
			"disabled" : false
		});
		this.comp("fYWJS").set({
			"disabled" : false
		});
		this.comp("fBZ").set({
			"disabled" : false
		});
		this.comp("fTXSJ").set({
			"disabled" : false
		});
	};

	Model.prototype.readonlytrue = function(event) {
		this.comp("fDJBH").set({
			"disabled" : true
		});
		this.comp("fKHBM").set({
			"disabled" : true
		});
		this.comp("gridSelect1").set({
			"disabled" : true
		});
		this.comp("fYWJS").set({
			"disabled" : true
		});
		this.comp("fBZ").set({
			"disabled" : true
		});
		this.comp("fTXSJ").set({
			"disabled" : true
		});
	};

	Model.prototype.checkbox1Change = function(event) {
		var result = this.comp('checkbox1').val();
		if (result == '是')
			this.readonlyfalse();
		else
			this.readonlytrue();
	};

	Model.prototype.modelLoad = function(event) {
		this.readonlytrue();
		var curName = this.getContext().getCurrentPersonName();
		var mainData = this.comp("mainData");
		var date = new Date();
		//var endDate = justep.Date.toString(date, date.STANDART_FORMAT_SHOT);
		var endDate = justep.Date.toString(date, "yyyy-MM-dd");
		var departName = this.getContext().getCurrentDeptName();
		if (departName == '经理部') {
			mainData.setFilter("typeFilter", "CU_KHWH.fTXSJ='" + endDate + "'");
			mainData.refreshData();
		} else {
			mainData.setFilter("typeFilter", "fWHR='" + curName + "' AND CU_KHWH.fTXSJ='" + endDate + "'");
			mainData.refreshData();
		}
	};

	Model.prototype.saveBtnClick = function(event) {
		this.comp('mainData').saveData();
		this.readonlytrue();
	};
	
	Model.prototype.gridSelect2ShowOption = function(event) {// 员工下拉事件
		var personData = this.comp("personData");
		var curName = this.getContext().getCurrentPersonName();
		var departName = this.getContext().getCurrentDeptName();
		if (departName == '经理部') {
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
		var departName = this.getContext().getCurrentDeptName();
		if (departName == '经理部') {
			var data = this.comp("personData");
			data.newData({
				"index" : 0,
				"defaultValues" : [ {
					fZYMC : "全部",
					fID : "全部"
				} ]
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
			var departName = this.getContext().getCurrentDeptName();
			if (departName == '经理部') {
				if (personName == "全部") {
					mainData.setFilter("typeFilter", "CU_KHWH.fDJRQ>'" + endDate + "'");
				} else {
					mainData.setFilter("typeFilter", "fWHR='" + personName + "' AND CU_KHWH.fDJRQ>'" + endDate + "'");
				}
			} else {
				mainData.setFilter("typeFilter", "fWHR='" + personName + "' AND CU_KHWH.fDJRQ>'" + endDate + "'");
			}
			mainData.refreshData();
		}
	};

	return Model;
});