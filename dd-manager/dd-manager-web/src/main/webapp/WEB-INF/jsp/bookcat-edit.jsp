<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="修改分类" data-options="fit:true">

    <form class="form" id="itemParamAddForm" name="itemParamAddForm" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">类别名称：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="name1" name="name1" value="${bname}"
                           data-options="required:true">
                    <input class="easyui-textbox" type="hidden" id="name2"value="${bname}">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <button class="easyui-linkbutton" onclick="submitForm()" type="button" data-options="iconCls:'icon-ok'">保存</button>
                    <button class="easyui-linkbutton" onclick="clearForm()" type="button" data-options="iconCls:'icon-undo'">重置</button>
                </td>
            </tr>
        </table>
    </form>
</div>
<script>
    //保存
    function submitForm(){

        var ids=[];
        var val=$('#name1').val();
        var val1=$('#name2').val();
        ids.push(val);
        ids.push(val1);
        var url = 'bookcateditname/';
        $.post(url, {'ids[]': ids},function(data){
            if(data>0){
                $.messager.alert('消息','修改成功', 'info');
                novel.closeTabs('编辑分类');
                novel.addTabs('查询分类', 'bookcat-list');
            }
        });
    }
</script>
