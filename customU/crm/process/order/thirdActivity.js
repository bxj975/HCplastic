define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Data = require("$UI/system/components/justep/data/data");

	var Model = function() {
		this.showFilterGird = justep.Bind.observable(false);

		this.callParent();
	};

	Model.prototype.add = function(row) {
		if (row instanceof Data.Row) {
			var data = this.comp('selectData');
			if (data.isExist(row.getID()))
				return;
			var defaultValue = {};
			$.each(data.defCols, function(col, v) {
				defaultValue[col] = row.val(col);
			});
			data.newData({
				defaultValues : [ defaultValue ]
			});
		}
	};

	Model.prototype.remove = function(row) {
		var data = this.comp('selectData');
		data.deleteData(row);
	};

	Model.prototype.clear = function() {
		var data = this.comp('selectData');
		data.clear();
	};

	Model.prototype.addAll = function(selectData) {
		selectData.each(function(p) {
			this.add(p.row);
		}, this);
	};

	Model.prototype.selectGridRowDblClick = function(event) {
		this.remove(event.row);
	};

	Model.prototype.searchGridRowDblClick = function(event) {
		this.add(event.row);
	};

	Model.prototype.addAllBtnClick = function(event) {
		this.addAll(this.comp('dialogData'));
	};

	Model.prototype.removeAllBtnClick = function(event) {
		this.clear();
	};

	Model.prototype.addBtnClick = function(event) {
		var searchGrid = this.comp('searchGrid');
		var row = searchGrid.getSelection();
		this.add(row);
		if (row instanceof Data.Row) {
			row.data.next();
		}
	};

	Model.prototype.removeBtnClick = function(event) {
		var grid = this.comp('selectGrid');
		var rowid = grid.getSelection();
		var data = this.comp('selectData');
		data.deleteData(data.getRowByID(rowid));
	};

	Model.prototype.getSelected = function() {
		var ret = [];
		var data = this.comp('selectData');
		data.each(function(p) {
			ret.push(p.row);
		});
		return ret;
	};

	Model.prototype.OKBtnClick = function(event) {
		this.comp('windowReceiver').windowEnsure(this.getSelected());
		this.clear();
	};

	Model.prototype.setSelected = function(selected) {
		this.clear();
		if ($.isArray(selected) && selected.length > 0) {
			for (var i = 0; i < selected.length; i++) {
				this.add(selected[i]);
			}
		}
	};

	Model.prototype.windowReceiverReceive = function(event) {
		if (event.data) {
			if (event.data.selected) {
				this.setSelected(event.data.selected);
			}
		}
	};

	Model.prototype.newBtnClick = function(event) {
		var dialog = this.comp('windowDialog1');
		var url = require.toUrl("$UI/custom/crm/process/product/mainActivity.w");
		dialog.open({
			src : url,
			params : {
				a1 : this.params.a1,
				a2 : this.params.a2
			}
		});
	};

	Model.prototype.refreshBtnClick = function(event) {
		var dialogData = this.comp("dialogData");
		dialogData.refreshData();

	};

	Model.prototype.modelLoad = function(event) {
		var dialogData = this.comp("dialogData");
		dialogData.setFilter("typeFilter", "CU_CPXX.fBYYI='" + this.params.a1 + "'");
		dialogData.refreshData();
	};

	return Model;
});