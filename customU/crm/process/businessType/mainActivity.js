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

	Model.prototype.button2Click = function(event) {
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

	Model.prototype.modelLoad = function(event) {
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
		this.comp("fXXBM").set({
			"disabled" : false
		});
		this.comp("fYWMC").set({
			"disabled" : false
		});
		this.comp("gridSelect1").set({
			"disabled" : false
		});
		this.comp("fBZ").set({
			"disabled" : false
		});
	};

	Model.prototype.readonlytrue = function(event) {
		this.comp("fXXBM").set({
			"disabled" : true
		});
		this.comp("fYWMC").set({
			"disabled" : true
		});
		this.comp("gridSelect1").set({
			"disabled" : true
		});
		this.comp("fBZ").set({
			"disabled" : true
		});
	};

	return Model;
});