<?xml version="1.0" encoding="UTF-8"?>
<model xmlns="http://www.justep.com/model">
<concept name="CU_JLDW" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">计量单位</label>
<has-relation relation="fXXBM" data-type="String" required="true" unique="true" default-value-expr="nextSeqString('U','000')"></has-relation>
<has-relation relation="fDWMC" data-type="String"></has-relation>
<has-relation relation="fBZ" data-type="String"></has-relation>

<has-relation relation="fWHSJ" data-type="DateTime" default-value-expr="currentDateTime()"></has-relation>
<has-relation relation="fWHR" data-type="String" default-value-expr="currentPersonName()"></has-relation>
</concept>
<relation name="fXXBM" data-type="String"><label language="zh_CN">信息编码</label>
</relation>
<relation name="fDWMC" data-type="String"><label language="zh_CN">单位名称</label>
</relation>
<relation name="fBZ" data-type="String"><label language="zh_CN">备注</label>
</relation>

<relation name="fWHSJ" data-type="String"><label language="zh_CN">维护时间</label>
</relation>
<relation name="fWHR" data-type="String" default-value-expr="currentPersonName()"><label language="zh_CN">维护人</label>
</relation>
<concept name="CU_CPXX" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">产品信息</label>

<has-relation relation="fGZKH" data-type="String"></has-relation><has-relation relation="fBYYI"><label language="zh_CN">客户ID</label>
</has-relation><has-relation relation="fCPBM" data-type="String" required="true" unique="true" default-value-expr="nextSeqString(concat('P', dateFormat(currentDate(), 'yyMMdd')), '000')"></has-relation><has-relation relation="fCPMC" data-type="String" required="false"></has-relation><has-relation relation="fGGXH" data-type="String"></has-relation><has-relation relation="fYSLX"></has-relation><has-relation relation="fCZ"></has-relation><has-relation relation="fDX"></has-relation><has-relation relation="fCPYQ" data-type="Text"></has-relation><has-relation relation="fJLDW" data-type="String" default-value-expr="'个'"></has-relation><has-relation relation="fJG" data-type="Decimal"></has-relation><has-relation relation="fBZ" data-type="Text"><label language="zh_CN">备注</label>
</has-relation><has-relation relation="fWHSJ" data-type="DateTime" default-value-expr="currentDateTime()"></has-relation><has-relation relation="fWHR" default-value-expr="currentPersonName()"></has-relation><has-relation relation="fPARENT" data-type="String"></has-relation><has-relation relation="fSFFL" data-type="String"></has-relation><has-relation relation="fBZY" data-type="String"><label language="zh_CN">标注一</label>
</has-relation><has-relation relation="fBZE" data-type="String"><label language="zh_CN">标注二</label>
</has-relation>

<has-relation relation="fBYY" data-type="String"></has-relation><has-relation relation="fBYE" data-type="String"></has-relation>


















<has-relation relation="fBYS"></has-relation>
<has-relation relation="fBYSI"></has-relation>
</concept>
<relation name="fCPMC" data-type="String"><label language="zh_CN">产品名称</label>
</relation>
<relation name="fGGXH" data-type="String"><label language="zh_CN">规格型号</label>
</relation>
<relation name="fJG" data-type="Decimal"><label language="zh_CN">价格</label>
</relation>
<relation name="fCPBM" data-type="String"><label language="zh_CN">产品编码</label>
</relation>
<relation name="fSFFL" data-type="String"><label language="zh_CN">是否分类</label>
</relation>
<relation name="fPARENT" data-type="String"><label language="zh_CN">父ID</label>
</relation>
<concept name="CU_KHXX" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">客户信息</label>
<has-relation relation="fKHBM" data-type="String" required="true" unique="true" default-value-expr="nextSeqString(concat('C', dateFormat(currentDate(), 'yyMMdd')), '000')"></has-relation><has-relation relation="fKHMC" data-type="String"></has-relation><has-relation relation="fKHLB" data-type="String"></has-relation><has-relation relation="fLXR" data-type="String"></has-relation><has-relation relation="fLXDH" data-type="String"></has-relation><has-relation relation="fYDDH" data-type="String"></has-relation><has-relation relation="fLXQQ" data-type="String"></has-relation><has-relation relation="fLXWX" data-type="String"></has-relation><has-relation relation="fSHDZ" data-type="Text"></has-relation><has-relation relation="fJSFS" data-type="String" default-value-expr="'现结'"></has-relation><has-relation relation="fBZ" data-type="Text"></has-relation><has-relation relation="fGZR" data-type="String"></has-relation><has-relation relation="fBYYI"><label language="zh_CN">归属人二</label>
</has-relation><has-relation relation="fSZQY" data-type="String"></has-relation><has-relation relation="fLXKH" data-type="String" default-value-expr="'否'"></has-relation><has-relation relation="fZDYY" data-type="Text"></has-relation><has-relation relation="fZDYE" data-type="Text"></has-relation><has-relation relation="fZDYS" data-type="Text"></has-relation><has-relation relation="fZDYSI" data-type="Text"></has-relation><has-relation relation="fZDYW" data-type="Text"></has-relation><has-relation relation="fZDYL" data-type="Text"></has-relation><has-relation relation="fWHSJ" data-type="DateTime" default-value-expr="currentDateTime()"></has-relation><has-relation relation="fWHR"></has-relation><has-relation relation="fPARENT"></has-relation><has-relation relation="fSFFL"></has-relation><has-relation relation="fBZY"><label language="zh_CN">标志一</label>
</has-relation><has-relation relation="fBZE"></has-relation><has-relation relation="fBYY"></has-relation><has-relation relation="fBYE"></has-relation>






























<has-relation relation="fBYS"></has-relation>
<has-relation relation="fBYSI"></has-relation>
</concept>
<relation name="fKHLB" data-type="String"><label language="zh_CN">客户类别</label>
</relation>
<relation name="fGZR" data-type="String"><label language="zh_CN">归属人</label>
</relation>

<relation name="fLXR" data-type="String"><label language="zh_CN">联系人</label>
</relation>
<relation name="fLXDH" data-type="String"><label language="zh_CN">联系电话</label>
</relation>
<relation name="fYDDH" data-type="String"><label language="zh_CN">移动电话</label>
</relation>
<relation name="fLXQQ" data-type="String"><label language="zh_CN">联系QQ</label>
</relation>
<relation name="fLXWX" data-type="String"><label language="zh_CN">联系微信</label>
</relation>
<relation name="fKHBM" data-type="String"><label language="zh_CN">客户编码</label>
</relation>
<relation name="fKHMC" data-type="String"><label language="zh_CN">客户名称</label>
</relation>
<concept name="CU_KHFL" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">客户分类</label>
<has-relation relation="fXXBM" required="true" unique="true" default-value-expr="nextSeqString('T','000')"></has-relation>
<has-relation relation="fFLMC" data-type="String"></has-relation><has-relation relation="fBZ"></has-relation>

<has-relation relation="fWHSJ" data-type="DateTime" default-value-expr="currentDateTime()"></has-relation>
<has-relation relation="fWHR"></has-relation>

</concept>
<relation name="fFLMC" data-type="String"><label language="zh_CN">分类名称</label>
</relation>
<relation name="fBZY" data-type="String"><label language="zh_CN">标注一</label>
</relation>
<relation name="fBZE" data-type="String"><label language="zh_CN">标注二</label>
</relation>
<relation name="fBYY" data-type="String"><label language="zh_CN">备用一</label>
</relation>
<relation name="fBYE" data-type="String"><label language="zh_CN">备用二</label>
</relation>
<relation name="fZDYY" data-type="String"><label language="zh_CN">自定义一</label>
</relation>
<relation name="fZDYE" data-type="String"><label language="zh_CN">自定义二</label>
</relation>
<relation name="fZDYS" data-type="String"><label language="zh_CN">自定义三</label>
</relation>
<relation name="fZDYSI" data-type="String"><label language="zh_CN">自定义四</label>
</relation>
<relation name="fZDYW" data-type="String"><label language="zh_CN">自定义五</label>
</relation>
<relation name="fZDYL" data-type="String"><label language="zh_CN">自定义六</label>
</relation>
<relation name="fLXKH" data-type="String"><label language="zh_CN">联系客户</label>
</relation>
<relation name="fSHDZ" data-type="String"><label language="zh_CN">送货地址</label>
</relation>
<concept name="CU_YWLX" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">业务类型</label>
<has-relation relation="fXXBM" required="true" unique="true" default-value-expr="nextSeqString('B','000')"></has-relation>
<has-relation relation="fYWMC" data-type="String"></has-relation><has-relation relation="fLB" data-type="String"></has-relation><has-relation relation="fBZ"></has-relation>
<has-relation relation="fWHSJ" data-type="DateTime" default-value-expr="currentDateTime()"></has-relation>
<has-relation relation="fWHR"></has-relation>


</concept>
<relation name="fYWMC" data-type="String"><label language="zh_CN">业务名称</label>
</relation>
<concept name="CU_DDZB" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation><has-relation relation="fHTBH" data-type="String"></has-relation><has-relation relation="fDJBH" default-value-expr="nextSeqString(concat('D', dateFormat(currentDate(), 'yyMMdd')), '000')"><label language="zh_CN">订单编号</label>
</has-relation>
<label language="zh_CN">订单主表</label>
<has-relation relation="fDJRQ" data-type="Date" default-value-expr="currentDate()"></has-relation><has-relation relation="fTXSJ" data-type="Date"><label language="zh_CN">交货时间</label>
</has-relation><has-relation relation="fBYY"><label language="zh_CN">客户ID</label>
</has-relation><has-relation relation="fKHBM"><label language="zh_CN">客户编码</label>
</has-relation><has-relation relation="fKHMC"></has-relation><has-relation relation="fFHFS" data-type="String"></has-relation><has-relation relation="fKHYQ" data-type="Text"></has-relation><has-relation relation="fBZ" data-type="Text"></has-relation><has-relation relation="fGZR" default-value-expr="currentPersonName()"><label language="zh_CN">经办人</label>
</has-relation><has-relation relation="fSFZX" data-type="String"></has-relation>
<has-relation relation="fBYSI" default-value-expr="'否'"><label language="zh_CN">审核</label>
</has-relation><has-relation relation="fBZY"><label language="zh_CN">标志一</label>
</has-relation><has-relation relation="fBZE"><label language="zh_CN">标志二</label>
</has-relation><has-relation relation="fBYYI"></has-relation><has-relation relation="fBYE" data-type="Decimal"></has-relation><has-relation relation="fBYS"></has-relation><has-relation relation="fWHSJ" data-type="DateTime" default-value-expr="currentDateTime()"><label language="zh_CN">维护时间</label>
</has-relation><has-relation relation="fWHR"><label language="zh_CN">维护人</label>
</has-relation>




























</concept>
<concept name="CU_DDCB" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation><has-relation relation="fBYSI" data-type="String"><label language="zh_CN">审核</label>
</has-relation><has-relation relation="fDJBH"></has-relation><has-relation relation="fDJRQ" data-type="Date"></has-relation><has-relation relation="fZBID" data-type="String"></has-relation>
<label language="zh_CN">订单从表</label>
<has-relation relation="fBYY"><label language="zh_CN">产品ID</label>
</has-relation><has-relation relation="fCPBM"></has-relation><has-relation relation="fCPMC"></has-relation><has-relation relation="fGGXH"></has-relation><has-relation relation="fYSLX"><label language="zh_CN">印刷</label>
</has-relation><has-relation relation="fCZ" data-type="String"></has-relation><has-relation relation="fDX" data-type="String"></has-relation><has-relation relation="fZBLX" data-type="String"></has-relation><has-relation relation="fBS" data-type="Integer"></has-relation><has-relation relation="fBDJ" data-type="Decimal"></has-relation><has-relation relation="fBFHJ" data-type="Decimal"></has-relation><has-relation relation="fJLDW"><label language="zh_CN">单位</label>
</has-relation><has-relation relation="fJG" data-type="Decimal"><label language="zh_CN">单价</label>
</has-relation><has-relation relation="fSL" data-type="Decimal"></has-relation><has-relation relation="fBYE" data-type="Decimal"><label language="zh_CN">产品合计</label>
</has-relation><has-relation relation="fHJ" data-type="Decimal"></has-relation><has-relation relation="fCPYQ" data-type="Text"></has-relation><has-relation relation="fCPBZ" data-type="Text"></has-relation><has-relation relation="fBZE"><label language="zh_CN">确认</label>
</has-relation><has-relation relation="fBZY"></has-relation><has-relation relation="fBYYI" data-type="String"><label language="zh_CN">备用一</label>
</has-relation><has-relation relation="fBYS" data-type="String"></has-relation><has-relation relation="fTXSJ" data-type="Date"></has-relation>





































<has-relation relation="fHJJE" data-type="Decimal"></has-relation>
</concept>

<concept name="CU_KHWH" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">客户维护</label>
<has-relation relation="fDJBH" data-type="String" default-value-expr="nextSeqString(concat('W', dateFormat(currentDate(), 'yyMMdd')), '000')"></has-relation>
<has-relation relation="fDJRQ" data-type="Date" default-value-expr="currentDate()"></has-relation><has-relation relation="fTXSJ" data-type="Date"></has-relation><has-relation relation="fKHBM"></has-relation><has-relation relation="fKHMC"></has-relation><has-relation relation="fYWLX" data-type="String"></has-relation><has-relation relation="fYWJS" data-type="Text"></has-relation><has-relation relation="fBZ" data-type="Text"></has-relation>
<has-relation relation="fBZY"></has-relation><has-relation relation="fBZE"></has-relation><has-relation relation="fBYY"></has-relation><has-relation relation="fBYE"></has-relation><has-relation relation="fWHSJ" data-type="DateTime" default-value-expr="currentDateTime()"></has-relation><has-relation relation="fWHR"></has-relation>












</concept>
<relation name="fDJBH" data-type="String"><label language="zh_CN">单据编号</label>
</relation>
<relation name="fYWLX" data-type="String"><label language="zh_CN">业务类型</label>
</relation>
<relation name="fTXSJ" data-type="String"><label language="zh_CN">提醒时间</label>
</relation>
<relation name="fSFZX" data-type="String"><label language="zh_CN">是否执行</label>
</relation>
<relation name="fDJRQ" data-type="String"><label language="zh_CN">单据日期</label>
</relation>
<relation name="fKHYQ" data-type="String"><label language="zh_CN">客户要求</label>
</relation>

<relation name="fHTTK" data-type="String"><label language="zh_CN">合同条款</label>
</relation>
<relation name="fSL" data-type="String"><label language="zh_CN">数量</label>
</relation>
<relation name="fHJ" data-type="String"><label language="zh_CN">合计</label>
</relation>
<relation name="fHJJE" data-type="String"><label language="zh_CN">合计金额</label>
</relation>


<relation name="fYWJS" data-type="Text"><label language="zh_CN">业务记事</label>
</relation>
<concept name="CU_HTMB" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">合同模板</label>
<has-relation relation="fXXBM" required="true" unique="true" default-value-expr="nextSeqString('M','000')"></has-relation>
<has-relation relation="fMBMC" data-type="String"></has-relation><has-relation relation="fMBNR" data-type="Text"></has-relation><has-relation relation="fMBZX" default-value-expr="'个人模板'"></has-relation><has-relation relation="fWHSJ" default-value-expr="currentDateTime()" data-type="DateTime"></has-relation>
<has-relation relation="fWHR"></has-relation>



</concept>
<relation name="fMBMC" data-type="String"><label language="zh_CN">模板名称</label>
</relation>
<relation name="fMBNR" data-type="String"><label language="zh_CN">模板内容</label>
</relation>
<concept name="CU_YWMB" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">业务模板</label>
<has-relation relation="fXXBM" required="true" unique="true" default-value-expr="nextSeqString('M','000')"></has-relation>
<has-relation relation="fMBMC"></has-relation><has-relation relation="fMBNR" data-type="Text"></has-relation><has-relation relation="fMBZX" data-type="String" default-value-expr="'个人模板'"></has-relation><has-relation relation="fWHSJ" default-value-expr="currentDateTime()" data-type="DateTime"></has-relation>
<has-relation relation="fWHR"></has-relation>



</concept>
<relation name="fMBZX" data-type="String"><label language="zh_CN">模板属性</label>
</relation>
<relation name="fLB" data-type="String"><label language="zh_CN">类别</label>
</relation>

<relation name="fFHFS" data-type="String"><label language="zh_CN">发货方式</label>
</relation>
<relation name="fJGLX" data-type="String"><label language="zh_CN">加工类型</label>
</relation>
<relation name="fYSLX" data-type="String"><label language="zh_CN">印刷类型</label>
</relation>
<relation name="fCZ" data-type="String"><label language="zh_CN">材质</label>
</relation>
<relation name="fDX" data-type="String"><label language="zh_CN">袋型</label>
</relation>
<relation name="fJLDW" data-type="String"><label language="zh_CN">计量单位</label>
</relation>
<relation name="fJSFS" data-type="String"><label language="zh_CN">结算方式</label>
</relation>
<relation name="fSFMB" data-type="String"><label language="zh_CN">是否买版</label>
</relation>
<relation name="fZBID" data-type="String"><label language="zh_CN">主表ID</label>
</relation>
<concept name="CU_CZXX" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">材质信息</label>
<has-relation relation="fXXBM" default-value-expr="nextSeqString('M','000')"></has-relation>
<has-relation relation="fCZMC" data-type="String"></has-relation><has-relation relation="fBZ"></has-relation>
<has-relation relation="fWHSJ" default-value-expr="currentDateTime()" data-type="DateTime"></has-relation>
<has-relation relation="fWHR"></has-relation>

</concept>
<relation name="fCZMC" data-type="String"><label language="zh_CN">材质名称</label>
</relation>
<concept name="CU_DXXX" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">袋型信息</label>
<has-relation relation="fXXBM" default-value-expr="nextSeqString('F','000')"></has-relation>
<has-relation relation="fDXMC" data-type="String"></has-relation><has-relation relation="fBZ"></has-relation>
<has-relation relation="fWHSJ" default-value-expr="currentDateTime()" data-type="DateTime"></has-relation>
<has-relation relation="fWHR"></has-relation>

</concept>
<relation name="fDXMC" data-type="String"><label language="zh_CN">袋型名称</label>
</relation>
<relation name="fHTBH" data-type="String"><label language="zh_CN">合同编号</label>
</relation>
<relation name="fZBLX" data-type="String"><label language="zh_CN">制版类型</label>
</relation>
<relation name="fCPYQ" data-type="String"><label language="zh_CN">产品要求</label>
</relation>
<relation name="fCPBZ" data-type="String"><label language="zh_CN">产品备注</label>
</relation>
<relation name="fBYYI" data-type="String"><label language="zh_CN">备用一</label>
</relation>
<relation name="fBYS" data-type="String"><label language="zh_CN">备用三</label>
</relation>
<relation name="fBS" data-type="Integer"><label language="zh_CN">版数</label>
</relation>
<relation name="fBDJ" data-type="Decimal"><label language="zh_CN">版单价</label>
</relation>
<relation name="fBYSI" data-type="String"><label language="zh_CN">备用四</label>
</relation>
<relation name="fBFHJ" data-type="Decimal"><label language="zh_CN">版费合计</label>
</relation>
<concept name="CU_ZYXX" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">职员信息</label>
<has-relation relation="fZYBM" data-type="String" default-value-expr="nextSeqString('Z','000')"></has-relation><has-relation relation="fZYMC" data-type="String"></has-relation><has-relation relation="fXB" data-type="String"></has-relation><has-relation relation="fGW" data-type="String"></has-relation><has-relation relation="fCSNY" data-type="Date"></has-relation><has-relation relation="fRZSJ" data-type="Date"><label language="zh_CN">入职时间</label>
</has-relation><has-relation relation="fYDDH"><label language="zh_CN">手机</label>
</has-relation><has-relation relation="fLXDH"><label language="zh_CN">电话</label>
</has-relation><has-relation relation="fLXWX"><label language="zh_CN">微信</label>
</has-relation><has-relation relation="fLXQQ"><label language="zh_CN">QQ</label>
</has-relation><has-relation relation="fSFZHM" data-type="String"><label language="zh_CN">身份证号</label>
</has-relation><has-relation relation="fSHDZ"><label language="zh_CN">地址</label>
</has-relation><has-relation relation="fBZ"></has-relation><has-relation relation="fZDYY"></has-relation><has-relation relation="fZDYE"></has-relation><has-relation relation="fZDYS"></has-relation><has-relation relation="fZDYSI"></has-relation><has-relation relation="fZDYW"></has-relation><has-relation relation="fZDYL"><label language="zh_CN">自定义六</label>
</has-relation><has-relation relation="fWHSJ" data-type="DateTime" default-value-expr="currentDateTime()"></has-relation><has-relation relation="fWHR"></has-relation>






<has-relation relation="fTXSJ" data-type="Date"></has-relation><has-relation relation="fBZY"></has-relation>
<has-relation relation="fBZE"></has-relation>
<has-relation relation="fBYY"></has-relation>
<has-relation relation="fBYE"></has-relation>















</concept>
<relation name="fZYBM" data-type="String"><label language="zh_CN">职员编码</label>
</relation>
<relation name="fZYMC" data-type="String"><label language="zh_CN">职员名称</label>
</relation>
<relation name="fRZSJ" data-type="Date"><label language="zh_CN">入职事件</label>
</relation>
<relation name="fXB" data-type="String"><label language="zh_CN">性别</label>
</relation>
<relation name="fCSNY" data-type="String"><label language="zh_CN">出生年月</label>
</relation>
<relation name="fSFZHM" data-type="String"><label language="zh_CN">身份证号码</label>
</relation>
<relation name="fGW" data-type="String"><label language="zh_CN">岗位</label>
</relation>


<concept name="CU_QYXX" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">区域信息</label>
<has-relation relation="fXXBM" default-value-expr="nextSeqString('A','000')"></has-relation>
<has-relation relation="fFLMC"></has-relation><has-relation relation="fBZ"></has-relation>
<has-relation relation="fWHSJ" default-value-expr="currentDateTime()" data-type="DateTime"></has-relation>
<has-relation relation="fWHR"></has-relation>

<has-relation relation="fBZY"></has-relation>
<has-relation relation="fBZE"></has-relation>
<has-relation relation="fBYY"></has-relation>
<has-relation relation="fBYE"></has-relation>
</concept>
<relation name="fGZKH" data-type="String"><label language="zh_CN">归属客户</label>
</relation>
<relation name="fSZQY" data-type="String"><label language="zh_CN">所属区域</label>
</relation>
<relation name="fEJMC" data-type="String"><label language="zh_CN">二级名称</label>
</relation>
<concept name="CU_JJZB" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">交接主表</label>
<has-relation relation="fDJBH" default-value-expr="nextSeqString(concat('M', dateFormat(currentDate(), 'yyMMdd')), '00')"></has-relation><has-relation relation="fDJRQ" data-type="Date" default-value-expr="currentDate()"></has-relation><has-relation relation="fLB"><label language="zh_CN">事由</label>
</has-relation><has-relation relation="fBYY"><label language="zh_CN">交接类型</label>
</has-relation><has-relation relation="fLXR"><label language="zh_CN">交接人</label>
</has-relation><has-relation relation="fGZR"><label language="zh_CN">接收人</label>
</has-relation><has-relation relation="fBZ" data-type="Text"></has-relation>
<has-relation relation="fSH"></has-relation><has-relation relation="fBZY"><label language="zh_CN">接收人名</label>
</has-relation><has-relation relation="fWHSJ" default-value-expr="currentDateTime()" data-type="DateTime"></has-relation><has-relation relation="fWHR"></has-relation><has-relation relation="fBZE"></has-relation><has-relation relation="fBYE"></has-relation><has-relation relation="fBYS"></has-relation><has-relation relation="fBYSI"></has-relation>













</concept>
<concept name="CU_JJCB" default-value-expr="guid()"><has-relation relation="version" default-value-expr="0"><label language="zh_CN">版本</label>
</has-relation>
<label language="zh_CN">交接从表</label>
<has-relation relation="fZBID"></has-relation><has-relation relation="fKHID" data-type="String"></has-relation><has-relation relation="fKHBM"></has-relation>
<has-relation relation="fKHMC"></has-relation>
<has-relation relation="fSZQY"></has-relation><has-relation relation="fGZR"><label language="zh_CN">接收人</label>
</has-relation><has-relation relation="fLXR"><label language="zh_CN">交接人</label>
</has-relation><has-relation relation="fSH" data-type="String"></has-relation><has-relation relation="fBZY"><label language="zh_CN">类别</label>
</has-relation>
<has-relation relation="fBZE"></has-relation>
<has-relation relation="fBYY"></has-relation>
<has-relation relation="fBYE"></has-relation>

<has-relation relation="fBYS"></has-relation>
<has-relation relation="fBYSI"></has-relation>





</concept>
<relation name="fKHID" data-type="String"><label language="zh_CN">客户ID</label>
</relation>
<relation name="fSH" data-type="String"><label language="zh_CN">审核</label>
</relation>
</model>