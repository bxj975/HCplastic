define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.button4Click = function(event) {
		var beginDate = this.comp('selectData').getValue('beginDate');
		var endDate = this.comp('selectData').getValue('endDate');
		var custom = this.comp('selectData').getValue('custom');
		if (beginDate == null || endDate == null || custom == null)
			alert("请填入客户名称、开始日期、结束日期！");
		else {
			this.comp('p1').setStringVar("beginDate", beginDate);
			this.comp('p1').setStringVar("endDate", endDate);
			this.comp('p1').setStringVar("customName", custom);
			// alert(date);
			this.comp('report1').refresh();
		}
	};

	Model.prototype.modelLoad = function(event) {
		/***********************************************************************
		 * var nowdate = new Date(); var date = justep.Date.toString(nowdate,
		 * "YYYY-MM-DD"); this.comp('p1').setStringVar("date", date); //
		 * alert(date); this.comp('report1').refresh();
		 **********************************************************************/
	};

	Model.prototype.inputCDblclick = function(event) {
		this.comp('windowDialog1').open();
	};

	return Model;
});