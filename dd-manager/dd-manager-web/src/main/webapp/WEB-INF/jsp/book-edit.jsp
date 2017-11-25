<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="小说详情" data-options="fit:true">
    <form class="itemForm" id="itemAddForm" name="itemAddForm" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">小说类别：</td>
                <td>
                    <input id="cid" name="cid" value="${bookCat.name}" style="width:200px;">
                </td>
            </tr>
            <tr>
                <td class="label">小说名：</td>
                <td>
                    <input class="easyui-textbox" type="text" id="title" name="title" value="${novel.title}"
                           data-options="required:true" style="width:200px">
                </td>
            </tr>
            <tr>
                <td class="label">作者：</td>
                <td>
                    <%--<input class="easyui-textbox" type="text" id="aid" name="aid"
                           data-options="required:true" style="width:200px">--%>
                        <input id="authorname" name="authorname" value="${novel.aid}" class="easyui-combobox" data-options="required:true" width="50px">
                        <%--把作者id带过去--%>
                        <input type="hidden" id="aid" name="aid">
                        <input type="hidden" value="${novel.id}" id="id" name="id">
                </td>
            </tr>
            <tr>
                <td class="label">小说看点：</td>
                <td>
                    <input class="easyui-textbox" type="text" value="${novel.readpoint}" id="readpoint" name="readpoint"
                           data-options="validType:'length[0,150]',multiline:true" style="width:100%;height:60px;">
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <!-- 加载编辑器的容器 -->
                    <script id="container1" name="content" type="text/plain">${bookDesc.bookDesc}</script>
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

    $('#cid').combotree({
        url: 'bookCats?parentId=0',
        required: true,
        onBeforeExpand: function(node){
            //获取当前被点击的tree
            var $currentTree = $('#cid').combotree('tree');
            //调用easyui tree组件的options方法
            var option = $currentTree.tree('options');
            //修改option的url属性
            option.url = 'bookCats?parentId=' + node.id;
        },
        onBeforeSelect: function(node){

            var isLeaf = $('#cid').tree('isLeaf', node.target);

            if(!isLeaf){
                $.messager.alert('警告','请选择最终类目', 'warning');
                return false;
            }

        }
    });

    //作者下拉框
    $('#authorname').combobox({
        url:'authorList',
        valueField:'id',//相当于option的value值
        textField:'authorname',//相当于<option></option>之间的显示值 value:1000    //默认显示值
    });

    //重置按钮
    function clearForm() {
        $('#itemAddForm').form('reset');
        ue.setContent('小说描述');
    }

    //初始化之前删除原有的容器
    UE.delEditor('container1');

    //实例化富文本编辑器
    var ue = UE.getEditor('container1',{
        initialFrameWidth: '100%',//初始化编辑器宽度
        initialFrameHeight: '300',
        serverUrl:'file/upload'

    });



    //小说保存功能
    function submitForm() {
        $('#itemAddForm').form('submit',{
            //提交表单到item进行处理
            url: 'bookEdit',
            //在表单提交之前触发
            onSubmit:function () {
                //把作者id带过去
                var userid = $('#authorname').combobox('getValue');
                $('#aid').val(userid);
                //做表单校验，表单上所有字段全部校验通过才能返回true，才会提交表单，
                //如果有任意一个字段没有校验通过，返回false，不会提交表单
                return $(this).form('validate');
            },
            //后台处理成功之后的回调函数
            success:function(data){
                if(data > 0) {
                    $.messager.alert('温馨提示','恭喜！修改小说成功！');
                    novel.closeTabs("修改小说")
                    novel.addTabs('查询小说', 'book-list');
                }
            }
        });
        
    }
</script>
