define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Message = require("$UI/system/components/justep/common/common");

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

	Model.prototype.treeDataValueChanged = function(event) {
		var curName = this.getContext().getCurrentPersonName();
		var now = new Date();
		this.comp('treeData').setValue("fWHR", curName);
		this.comp('treeData').setValue("fWHSJ", now);
	};

	Model.prototype.modelLoad = function(event) {
		var treeData = this.comp('treeData');
		var me = this;
		$(me.getElementByXid("seekInput")).bind(
				'keydown',
				function(evt) {
					if (evt.keyCode == 13) {
						var find = me.comp("seekInput").val();
						treeData.setFilter("findFilter", "CU_KHXX.fKHMC like'%" + find + "%' or CU_KHXX.fKHBM like'%" + find + "%' or CU_KHXX.fLXR like'%" + find + "%' or CU_KHXX.fYDDH like'%" + find
								+ "%' or CU_KHXX.fSFFL=''");
						treeData.refreshData();
					}
				});
		// this.getElementByXid("fName").value
		//this.readonlytrue();
	};

	Model.prototype.checkbox1Change = function(event) {
		//var result = this.comp('checkbox1').val();
		//if (result == '是')
			//this.readonlyfalse();
		//else
			//this.readonlytrue();
	};

	Model.prototype.readonlyfalse = function(event) {
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
	};

	Model.prototype.readonlytrue = function(event) {
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