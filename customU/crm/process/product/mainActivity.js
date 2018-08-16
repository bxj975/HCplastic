define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var biz = require("$UI/system/lib/biz");

	var Model = function() {
		this.callParent();
		this.initOK = justep.Bind.observable(false);
		this.result = justep.Bind.observable();

		this.canOK = justep.Bind.computed(function() {
			if (!this.initOK.get())
				return false;
			if (this.getSelected())
				return true;
			else
				return false;
		}, this);
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
		this.readonlytrue();
	};

	Model.prototype.delBtn1Click = function(event) {
		var data = this.comp("mainData");
		var pName = data.getValue('fYSLX');
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
		this.readonlyfalse();
		var data = this.comp("mainData");
		data.newData();
		var tabs = this.comp('tabs');
		tabs.setActiveTab('nav-detail');

	};

	Model.prototype.modelLoad = function(event) {
		var me = this;
		var mainData = me.comp("mainData");
		var state = this.params.a2;
		if (state == null) {
			me.readonlytrue();
			/*******************************************************************
			 * this.comp("checkbox1").set({ "disabled" : true });
			 * this.comp("nextBtn").set({ "disabled" : true });
			 * this.comp("preBtn").set({ "disabled" : true });
			 * this.comp("delBtn2").set({ "disabled" : true });
			 ******************************************************************/
		} else {
			this.addBtnClick();
			mainData.setValue('fBYYI', me.params.a1);
			mainData.setValue('fGZKH', me.params.a2);
			// this.comp("OKBtn").set({
			// "disabled" : false
			// });
			this.comp("cancelBtn").set({
				"disabled" : false
			});
			this.comp("cancelBtn1").set({
				"disabled" : false
			});
		}
	};

	Model.prototype.readonlyfalse = function(event) {
		this.comp("fCPBM").set({
			"disabled" : false
		});
		this.comp("fCPMC").set({
			"disabled" : false
		});
		this.comp("fGGXH").set({
			"disabled" : false
		});
		this.comp("printGridSelect").set({
			"disabled" : false
		});
		this.comp("czGridSelect").set({
			"disabled" : false
		});
		this.comp("dxGridSelect").set({
			"disabled" : false
		});
		this.comp("unitGridSelect").set({
			"disabled" : false
		});
		this.comp("fJG").set({
			"disabled" : false
		});
		this.comp("fCPYQ").set({
			"disabled" : false
		});
		this.comp("fBZ").set({
			"disabled" : false
		});
		this.comp("fGZKH").set({
			"disabled" : false
		});
		this.comp("delBtn2").set({
			"disabled" : false
		});
	};

	Model.prototype.readonlytrue = function(event) {
		this.comp("fCPBM").set({
			"disabled" : true
		});
		this.comp("fCPMC").set({
			"disabled" : true
		});
		this.comp("fGGXH").set({
			"disabled" : true
		});
		this.comp("printGridSelect").set({
			"disabled" : true
		});
		this.comp("czGridSelect").set({
			"disabled" : true
		});
		this.comp("dxGridSelect").set({
			"disabled" : true
		});
		this.comp("unitGridSelect").set({
			"disabled" : true
		});
		this.comp("fJG").set({
			"disabled" : true
		});
		this.comp("fCPYQ").set({
			"disabled" : true
		});
		this.comp("fBZ").set({
			"disabled" : true
		});
		this.comp("fGZKH").set({
			"disabled" : true
		});
		this.comp("delBtn2").set({
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

	Model.prototype.mainDataValueChanged = function(event) {
		var curName = this.getContext().getCurrentPersonName();
		var now = new Date();
		this.comp('mainData').setValue("fWHR", curName);
		this.comp('mainData').setValue("fWHSJ", now);
	};
	Model.prototype.copyBtnClick = function(event) {
		var mainData = this.comp('mainData');
		var main2Data = this.comp('main2Data');
		var row = mainData.getCurrentRow();
		var row2 = main2Data.getCurrentRow();
		row2.assign(row);
		this.comp("pasteBtn").set({
			"disabled" : false
		});
	};

	Model.prototype.pasteBtnClick = function(event) {
		var mainData = this.comp('mainData');
		var main2Data = this.comp('main2Data');
		// var kehu = mainData.getValue('fKHMC');
		// if (kehu === '' || kehu === null) {
		var row = main2Data.getCurrentRow();
		var row2 = mainData.getCurrentRow();
		row2.assign(row);
	};

	Model.prototype.fGZKHDblclick = function(event) {
		this.customBtnClick();
	};

	Model.prototype.customBtnClick = function(event) {
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
		var url = require.toUrl("$UI/custom/crm/process/order/secondActivity.w");
		dialog.open({
			src : url,
			params : {
				a1 : result,
			}
		});

	};

	Model.prototype.getSelected = function() {
		return this.result.get();
	};

	Model.prototype.setSelected = function(selected) {
		return this.result.set(selected);
	};

	Model.prototype.OKBtnClick = function(event) {
		var result = this.getSelected();
		this.comp('windowReceiver').windowEnsure(this.getSelected());
	};

	Model.prototype.windowReceiverReceive = function(event) {
		var me = this;
		if (event.data) {
			if (event.data.selected) {
				me.comp('listData').setSelection(event.data.selected);
			}
		}
		this.initOK.set(true);
	};

	Model.prototype.listDataRowSelect = function(event) {
		this.setSelected(event.row);
	};

	return Model;
});

define(function(require){
	var $ = require("jquery");
	var Model = function(){
		this.callParent();
	};
	Model.prototype.customBtnClick = function(event){

	};

	return Model;
});
