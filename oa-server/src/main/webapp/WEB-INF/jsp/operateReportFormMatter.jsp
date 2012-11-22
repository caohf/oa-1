<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="pageTitle" value="${not empty selectedReportFormType ? '编辑': '添加'}报审事项"/>
<%@ include file="blue/pageHead.jsp" %>

<!-- Start content  -->
    <div class="content">
        <ul class="breadcrumb">
            <li><a href="${contextPath}">主页</a> <span class="divider">/</span></li>
            <li><a href="${contextPath}/reportFormMatter">报审事项管理</a><span class="divider">/</span></li>
            <li class="active">${pageTitle}</li>
        </ul>
		
        <div class="container-fluid">
            <div class="row-fluid">
            	<div class="btn-toolbar">
				    <button class="btn btn-primary" id="saveButton"><i class="icon-save"></i>保存</button>
				  <div class="btn-group">
				  </div>
				</div>
				<div class="well">	
					<form action="${contextPath}/reportFormMatter/${not empty selectedReportFormMatter ? 'edit' : 'add'}" method="post">
						<input type="hidden" name="id" value="${selectedReportFormMatter.id}"></input>
						<table>
							<tr><td>名称： <input type="text" name="name" maxlength="20" value="${selectedReportFormMatter.name}"/></td></tr>
						</table>
					</form>
                <%@ include file="blue/containerFoot.jsp" %>
            	</div>
        	</div>
		<!-- End container -->
    	</div>
	</div>
<!-- End content -->
<%@ include file="blue/pageTail.jsp" %>
<script type="text/javascript">
    $(document).ready(function(){
    	$("#saveButton").click(function() {
    		$("form").submit();
    	});
    	$("form").submit(function() {
            var errors = [];
            if ($.trim($("input[name='name']").val()).length == 0) {
                errors.push("请填写名称");
            }

            if (errors.length > 0) {
                alert(errors.join(", "));
                return false;
            }
        });
    });
</script>
