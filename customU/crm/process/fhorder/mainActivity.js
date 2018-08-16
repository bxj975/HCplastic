define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var biz = require("$UI/system/lib/biz");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.button4Click = function(event) {
		var checkbox = this.comp('printCheckbox').value;
		var print = '否';
		if (checkbox == 1)
			print = '已打印';
		var date = this.comp('selectData').getValue('date');
		this.comp('p1').setStringVar("date", date);
		this.comp('p1').setStringVar("print", print);
		// alert(date);
		this.comp('report1').refresh();
	};

	Model.prototype.modelLoad = function(event) {
		var nowdate = new Date();
		var date = justep.Date.toString(nowdate, "YYYY-MM-DD");
		this.comp('p1').setStringVar("date", date);
		this.comp('p1').setStringVar("print", '否');
		// alert(date);
		this.comp('report1').refresh();
		var departName = this.getContext().getCurrentDeptName();
		if (departName == '生产部') {
			this.comp("yesBtn").set({
				"disabled" : false
			});
		}
	};

	Model.prototype.yesBtnClick = function(event) {
		var nowdate = new Date();
		var dateNow = justep.Date.toString(nowdate, "YYYY-MM-DD");
		var dateSelect = this.comp('selectData').getValue('date');
		var dateEnd;
		if (dateSelect == null || dateSelect == '')
			dateEnd = dateNow;
		else
			dateEnd = dateSelect;
		var params = new biz.Request.ActionParam();
		params.setDate("date", dateEnd);
		params.setString("type", '复合');
		biz.Request.sendBizRequest({
			"context" : this.getContext(),
			"action" : "printAction",
			"parameters" : params,
			"callback" : function(data) {
				data.ignoreError = false;
				if (data.state) {
					justep.Util.hint("确认成功！");
					// var result = data.response;
				} else {
					throw new Error("调用失败！|" + data.response.message);
				}
			}
		});
	};

	return Model;
});