<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="cm" uri="/WEB-INF/tld/cm.tld" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<cm:securityTag privilegeString="EMPLOYEE_LIST">
    <li>
        <a href="#" class="dropdown-toggle">
            <i class="icon-group"></i>
            <span class="menu-text">员工管理</span>
            <b class="arrow icon-angle-down"></b>
        </a>
        <ul class="submenu">
            <li><a href="employee/list"><i
                    class="icon-double-angle-right"></i>员工列表</a></li>
            <li><a href="employee/roles"><i
                    class="icon-double-angle-right"></i>角色权限</a></li>
            <li><a
                    href="employee/branches"><i class="icon-double-angle-right"></i>组织机构</a></li>
        </ul>
    </li>
</cm:securityTag>

<cm:securityTag privilegeString="USER_LIST">
    <li>
        <a href="#" class="dropdown-toggle">
            <i class="icon-user"></i>
            <span class="menu-text">用户管理</span>
            <b class="arrow icon-angle-down"></b>
        </a>
        <ul class="submenu">
            <li><a href="user/list"><i
                    class="icon-double-angle-right"></i>个人用户</a></li>
            <li><a
                    href="corporation/list"><i class="icon-double-angle-right"></i>企业用户</a></li>
        </ul>
    </li>
</cm:securityTag>