define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var biz = require("$UI/system/lib/biz");
	// var Message = require("$UI/system/components/justep/common/common");

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
		var pName = data.getValue('fKHMC');
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

	Model.prototype.personID = function() {
		var me = this;
		var result = '';
		var curName = me.getContext().getCurrentPersonName();
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
		return result;
	};

	Model.prototype.modelLoad = function(event) {
		var me = this;
		var departName = this.getContext().getCurrentDeptName();
		var result = this.personID();
		var mainData = me.comp("mainData");
		var state = this.params.a2;
		if (state == null) {
			if (departName == '经理部' || departName == '管理部') {
				mainData.setFilter("typeFilter", "");
				mainData.refreshData();
			} else {
				mainData.setFilter("typeFilter", "CU_KHXX.fGZR='" + result + "' OR CU_KHXX.fBYYI='" + result + "'");
				mainData.refreshData();
			}
			me.readonlytrue();
			/*******************************************************************
			 * this.comp("checkbox1").set({ "disabled" : true });
			 * this.comp("nextBtn").set({ "disabled" : true });
			 * this.comp("preBtn").set({ "disabled" : true });
			 * this.comp("delBtn2").set({ "disabled" : true });
			 ******************************************************************/
		} else {
			mainData.setFilter("typeFilter", "CU_KHXX.fGZR='" + result + "' OR CU_KHXX.fBYYI='" + result + "'");
			mainData.refreshData();
			this.addBtnClick();
			// mainData.setValue('fGZR', me.params.a1);
			// this.comp("OKBtn").set({
			// "disabled" : false
			// });
			this.comp("cancelBtn").set({
				"disabled" : false
			});
			if (departName == '经理部' || departName == '管理部') {
				this.comp("personGridSelect").set({
					"disabled" : false
				});
			}
		}
	};

	Model.prototype.checkbox1Change = function(event) {
		var result = this.comp('checkbox1').val();
		if (result == '是')
			this.readonlyfalse();
		else
			this.readonlytrue();
	};

	Model.prototype.readonlyfalse = function(event) {
		var departName = this.getContext().getCurrentDeptName();
		if (departName == '经理部' || departName == '管理部') {
			this.comp("personGridSelect").set({
				"disabled" : false
			});
		}
		this.comp("fKHBM").set({
			"disabled" : false
		});
		this.comp("fKHMC").set({
			"disabled" : false
		});
		this.comp("fLXR").set({
			"disabled" : false
		});
		this.comp("fLXDH").set({
			"disabled" : false
		});
		this.comp("fYDDH").set({
			"disabled" : false
		});
		this.comp("fLXQQ").set({
			"disabled" : false
		});
		this.comp("fLXWX").set({
			"disabled" : false
		});
		this.comp("fSHDZ").set({
			"disabled" : false
		});
		this.comp("fBZ").set({
			"disabled" : false
		});
		this.comp("typeGridSelect").set({
			"disabled" : false
		});
		this.comp("areaGridSelect").set({
			"disabled" : false
		});
		this.comp("jsGridSelect").set({
			"disabled" : false
		});
		this.comp("delBtn2").set({
			"disabled" : false
		});
	};

	Model.prototype.readonlytrue = function(event) {
		var departName = this.getContext().getCurrentDeptName();
		if (departName == '经理部' || departName == '管理部') {
			this.comp("personGridSelect").set({
				"disabled" : true
			});
		}
		this.comp("fKHBM").set({
			"disabled" : true
		});
		this.comp("fKHMC").set({
			"disabled" : true
		});
		this.comp("fLXR").set({
			"disabled" : true
		});
		this.comp("fLXDH").set({
			"disabled" : true
		});
		this.comp("fYDDH").set({
			"disabled" : true
		});
		this.comp("fLXQQ").set({
			"disabled" : true
		});
		this.comp("fLXWX").set({
			"disabled" : true
		});
		this.comp("fSHDZ").set({
			"disabled" : true
		});
		this.comp("fBZ").set({
			"disabled" : true
		});
		this.comp("typeGridSelect").set({
			"disabled" : true
		});
		this.comp("areaGridSelect").set({
			"disabled" : true
		});
		this.comp("jsGridSelect").set({
			"disabled" : true
		});
		this.comp("delBtn2").set({
			"disabled" : true
		});
	};

	Model.prototype.mainDataValueChanged = function(event) {
		var curName = this.getContext().getCurrentPersonName();
		var now = new Date();
		this.comp('mainData').setValue("fWHR", curName);
		this.comp('mainData').setValue("fWHSJ", now);
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

	Model.prototype.mainDataAfterNew = function(event) {
		var result = this.personID();
		var mainData = this.comp("mainData");
		mainData.setValue('fGZR', result);
	};

	return Model;
});