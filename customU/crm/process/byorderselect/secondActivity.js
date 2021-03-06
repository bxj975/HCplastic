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

	Model.prototype.newBtnClick = function(event) {
		var dialog = this.comp('windowDialog1');
		var url = require.toUrl("$UI/custom/crm/process/custom/mainActivity.w");
		dialog.open({
			src : url,
			params : {
				a1 : this.params.a1,
				a2 : '0'
			}
		});
	};

	Model.prototype.dataTablesRowDblClick = function(event) {
		// var result = this.getSelected();
		this.comp('windowReceiver').windowEnsure(this.getSelected());
	};

	Model.prototype.modelLoad = function(event) {
		
	};

	Model.prototype.refreshBtnClick = function(event) {
		var dialogData = this.comp("dialogData");
		dialogData.refreshData();
	};

	return Model;
});