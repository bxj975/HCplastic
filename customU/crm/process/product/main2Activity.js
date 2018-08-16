define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
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
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		var treeData = this.comp('treeData');
		var me = this;
		$(me.getElementByXid("seekInput")).bind('keydown', function(evt) {
			if (evt.keyCode == 13) {
				var find = me.comp("seekInput").val();
				treeData.setFilter("findFilter", "CU_CPXX.fCPMC like'%" + find + "%' or CU_CPXX.fCPBM like'%" + find + "%' or CU_CPXX.fGGXH like'%" + find + "%' or CU_CPXX.fSFFL=''");
				treeData.refreshData();
			}
		});
		//this.readonlytrue();
	};

	Model.prototype.treeDataValueChanged = function(event) {
		var curName = this.getContext().getCurrentPersonName();
		var now = new Date();
		this.comp('treeData').setValue("fWHR", curName);
		this.comp('treeData').setValue("fWHSJ", now);
	};

	Model.prototype.checkbox1Change = function(event) {
		//var result = this.comp('checkbox1').val();
		//if (result == '是')
			//this.readonlyfalse();
		//else
			//this.readonlytrue();
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
		this.comp("gridSelect1").set({
			"disabled" : false
		});
		this.comp("gridSelect2").set({
			"disabled" : false
		});
		this.comp("gridSelect3").set({
			"disabled" : false
		});
		this.comp("gridSelect4").set({
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
		this.comp("gridSelect1").set({
			"disabled" : true
		});
		this.comp("gridSelect2").set({
			"disabled" : true
		});
		this.comp("gridSelect3").set({
			"disabled" : true
		});
		this.comp("gridSelect4").set({
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
	};

	Model.prototype.moveBtnClick = function(event) {
		this.comp('windowDialog1').open();
	};

	Model.prototype.firstBtnClick = function(event) {
		this.comp('treeData').setValue('fPARENT', null);
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
		if (event.data) {
			if (event.data.selected) {
				this.comp('grid2').setSelection(event.data.selected);
			}
		}
		this.initOK.set(true);
	};

	Model.prototype.grid2RowSelect = function(event) {
		this.setSelected(event.row);
	};

	return Model;
});