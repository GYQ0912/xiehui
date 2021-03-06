<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2015/9/28
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="ming800" uri="http://java.ming800.com/taglib" %>
<head>
    <title>中国非物质文化遗产保护协会-下属机构</title>
</head>
<body>
<div class="main-right">
    <div class="title">${tabTitle}</div>
    <div class="list-table">
        <table>
            <tr>
                <td class="txt-left">协会名称</td>
                <td>区域</td>
                <td>成立时间</td>
            </tr>
            <c:forEach items="${documentList}" var="association" varStatus="status">
            <tr>
                <td class="txt-left">${association.name}</td>
                <td>${association.addressDistrict.addressCity.name}</td>
                <td><fmt:formatDate
                        value="${association.theDatetime}" pattern="yyyy.MM"/></td>
            </tr>
            <!-- //End--slide-right-->
    </div>
</div>

</c:forEach>
</table>
</div>
</div>
<!-- //End--slide-right-->
</div>
</div>

</body>
