define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
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
		this.readonlytrue();
	};
	Model.prototype.checkbox1Change = function(event) {
		var result = this.comp('checkbox1').val();
		if (result == '是')
			this.readonlyfalse();
		else
			this.readonlytrue();
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
		this.comp("typeGridSelect").set({
			"disabled" : false
		});
		this.comp("gridSelect2").set({
			"disabled" : false
		});
		this.comp("gridSelect1").set({
			"disabled" : false
		});
		this.comp("lxGridSelect").set({
			"disabled" : false
		});
		this.comp("fZDYY").set({
			"disabled" : false
		});
		this.comp("fZDYE").set({
			"disabled" : false
		});
		this.comp("fZDYS").set({
			"disabled" : false
		});
		this.comp("fZDYSI").set({
			"disabled" : false
		});
		this.comp("fZDYW").set({
			"disabled" : false
		});
		this.comp("fZDYL").set({
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
		this.comp("typeGridSelect").set({
			"disabled" : true
		});
		this.comp("gridSelect2").set({
			"disabled" : true
		});
		this.comp("gridSelect1").set({
			"disabled" : true
		});
		this.comp("lxGridSelect").set({
			"disabled" : true
		});
		this.comp("fZDYY").set({
			"disabled" : true
		});
		this.comp("fZDYE").set({
			"disabled" : true
		});
		this.comp("fZDYS").set({
			"disabled" : true
		});
		this.comp("fZDYSI").set({
			"disabled" : true
		});
		this.comp("fZDYW").set({
			"disabled" : true
		});
		this.comp("fZDYL").set({
			"disabled" : true
		});
	};

	Model.prototype.moveBtnClick = function(event) {
		this.comp('windowDialog1').open();
	};

	Model.prototype.firstBtnClick = function(event) {
		this.comp('treeData').setValue('fPARENT', null);
	};

	return Model;
});