<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="easyui-panel" title="商品详情" data-options="fit:true">
    <form class="itemForm" id="itemAddForm" name="itemAddForm" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">作者昵称：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="r_name" name="authorname"
                           data-options="required:true">
                </td>
            </tr>
            <tr>
                <td colspan="2" style="margin-left: 50px">
                    <!-- 加载编辑器的容器 -->
                    <script id="container" name="desc" type="text/plain">商品描述</script>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <button onclick="submitForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-ok'">保存
                    </button>
                    <button onclick="clearForm()" class="easyui-linkbutton" type="button"
                            data-options="iconCls:'icon-undo'">重置
                    </button>
                </td>
            </tr>
        </table>
        <input name="paramData" id="paramData" style="display:none;">
    </form>
</div>
<script>
    function submitForm(){
        $('#itemAddForm').form('submit', {
            //提交表单动作的URL地址
            url: 'author',
            //在提交之前触发，返回false可以终止提交
            onSubmit: function(){
                return $(this).form('validate');
            },
            //在表单提交成功以后触发
            success:function(data){
                console.log('success');
                if(data > 0){
                    $.messager.alert('消息','保存成功', 'info');
                    ddshop.closeTabs('新增作者');
                    ddshop.addTabs('查询作者', 'author-list');
                }
            }
        });
    }
    $.extend($.fn.validatebox.defaults.rules, {
        equals: {
            validator: function(value,param){
                return value == $(param[0]).val();
            },
            message: '密码不一致'
        },
        mobile: {//value值为文本框中的值
            validator: function (value) {
                var reg = /^1[3|4|5|7|8|9]\d{9}$/;
                return reg.test(value);
            },
            message: '号码格式不正确'
        }
    });
</script>
