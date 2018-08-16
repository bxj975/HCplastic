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
		this.comp("personGridSelect").set({
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
		this.comp("delBtn2").set({
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
		this.comp("areaGridSelect").set({
			"disabled" : true
		});
		this.comp("jsGridSelect").set({
			"disabled" : true
		});
		this.comp("personGridSelect").set({
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

	return Model;
});