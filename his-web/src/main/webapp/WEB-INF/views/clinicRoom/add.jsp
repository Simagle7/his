<%--
  Created by IntelliJ IDEA.
  User: simagle
  Date: 2016/10/20
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<style>
    label{
        margin: 0;
    }
</style>
<div class="modal-dialog">
    <div class="modal-content animated bounceInRight"
         style="width: 670px;">
        <div class="modal-header" style="padding: 10px 15px">
            <button type="button" class="close" data-dismiss="modal">
                <span aria-hidden="false">×</span><span class="sr-only">关闭</span>
            </button>
            <span class="pull-left" style="font-size: 14px"> <b>添加科室 </b>(注：带 * 号为必填项)</span>
        </div>
        <small class="font-bold">
            <div class="modal-body" style="padding: 0">
                <form class="detail" id="addItem">
                    <table class="table table-bordered"
                           style="margin-bottom: 0;">
                        <tr>
                            <th width="15%"><span class="pull-right"><b>*&nbsp;</b>科室名称：</span></th>
                            <td width="35%"><input type="text" name="name"></td>
                            <th width="15%"><span class="pull-right"><b>*&nbsp;</b>创建时间：</span></th>
                            <td width="35%">
                                <%
                                    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                                %>
                                <%=df.format(new Date())%>

                            </td>
                        </tr>
                        <tr>
                            <th width="15%"><span class="pull-right"><b>*&nbsp;</b>科室号：</span></th>
                            <td width="35%">
                                <input type="text" name="clinicNum">
                            </td>
                            <th width="15%"><span class="pull-right"><b>*</b>&nbsp;科室类型：</span></th>
                            <td width="35%">
                                    <select name="categoryId" style="height: 28px;">
                                        <option value="-1">请选择</option>
                                        <c:forEach items="${categories}" var="el">
                                            <option value="<c:out value='${el.id}'/>"><c:out value="${el.name}"/></option>
                                        </c:forEach>
                                    </select>
                            </td>
                        </tr>
                        <tr>
                            <th><span class="pull-right">&nbsp;科室位置：</span>
                            </th>
                            <td colspan="3"><textarea name="address" style="width: 484px; height: 80px;"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <th><span class="pull-right">&nbsp;科室用途：</span>
                            </th>
                            <td colspan="3"><textarea name="description" style="width: 484px; height: 80px;"></textarea>
                            </td>
                        </tr>

                    </table>
                    <div style="margin: 5px; text-align: center">
                        <button class="btn btn-primary" type="button" onclick="addItem()">保存
                        </button>
                        <button type="button" class="btn btn-white"
                                data-dismiss="modal">关闭
                        </button>
                    </div>
                </form>
            </div>

        </small>
    </div>
    <small class="font-bold">
    </small>
</div>
<small class="font-bold">
</small>
<script type="text/javascript" src="/js/module/clinicRoom/add.js"></script>