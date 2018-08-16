define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Data = require("$UI/system/components/justep/data/data");

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

	Model.prototype.getSelected = function() {
		return this.result.get();
	};

	Model.prototype.OKBtnClick = function(event) {
		var result = this.getSelected();
		this.comp('windowReceiver').windowEnsure(this.getSelected());
	};

	Model.prototype.setSelected = function(selected) {
		return this.result.set(selected);
	};

	Model.prototype.windowReceiverReceive = function(event) {
		if (event.data) {
			if (event.data.selected) {
				this.comp('dataTables').setSelection(event.data.selected);
			}
		}
		this.initOK.set(true);
	};

	Model.prototype.dataTablesRowSelect = function(event) {
		this.setSelected(event.row);
	};

	Model.prototype.modelLoad = function(event) {
		var curName = this.getContext().getCurrentPersonName();
		var mainData = this.comp("dialogData");
		mainData.setFilter("typeFilter", "CU_YWMB.fMBZX='公用模板' OR CU_YWMB.fMBZX='个人模板' AND CU_YWMB.fWHR='" + curName + "'");
		mainData.refreshData();
	};

	return Model;
});