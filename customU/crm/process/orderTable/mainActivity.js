define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.button4Click = function(event) {
		var date = this.comp('selectData').getValue('date');
		var curName = this.getContext().getCurrentPersonName();
		this.comp('p1').setStringVar("date", date);
		this.comp('p1').setStringVar("person", curName);
		// alert(date);
		this.comp('report1').refresh();
	};

	Model.prototype.modelLoad = function(event) {
		var nowdate = new Date();
		var curName = this.getContext().getCurrentPersonName();
		var date=justep.Date.toString(nowdate, "YYYY-MM-DD");
		this.comp('p1').setStringVar("date", date);
		this.comp('p1').setStringVar("person", curName);
		 //alert(date);
		this.comp('report1').refresh();
	};

	return Model;
});