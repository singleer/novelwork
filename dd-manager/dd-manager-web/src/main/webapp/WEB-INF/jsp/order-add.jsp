<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div class="easyui-panel" title="账单详情" data-options="fit:true">
    <form class="orderAddForm" id="orderAddForm" name="orderAddForm" method="post">
        <table style="width:100%;">
            <tr>
                <td class="label">帐单类型：</td>
                <td>
                    <select id="status" name="status" class="easyui-combobox" data-options="required:true,min:0,precision:0" style="width: 200px">
                        <option value=0>请选择类型</option>
                        <option value=1>充值</option>
                        <option value=2>消费</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="label">帐单金额：</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="price" name="price"
                           data-options="required:true,min:0,precision:0">
                    <%--<input type="hidden" id="price1" name="price1">--%>
                </td>
            </tr>
            <tr>
                <td class="label">账单所属人编号：</td>
                <td>
                    <input class="easyui-numberbox" type="text" id="rid" name="rid"
                           data-options="required:true,min:0,precision:0">
                </td>
            </tr>

            <tr>
                <td class="label">账单内容：</td>
                <td>
                    <input class="easyui-textbox" name="content" id="content"
                      data-options="multiline:true" style="height:100px;width:200px">
                    </input>
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
        <%--<input name="paramData" id="paramData" style="display:none;">--%>
    </form>
</div>

<script>
    function submitForm() {
      /* var a= $('#status').val();
       alert(a);*/
        /*var b= $('#price').val();
        var c= $('#rid').val();
        var d= $('#content').val();*/
        $('#orderAddForm').form('submit',{
            //提交表单到order进行处理
            url:'addas',
          /*  onSubmit:function(){
                $('#price1').val($('#price').val()*100);
               return $(this).form('validate');
            },*/
            success:function(data){
                if(data>0) {
                    if(confirm('确认添加账单？'))location.href="${pageContext.request.contextPath}/index"
                }
            }
        });
    }
    //实例化富文本编辑器
   /* var ue=UE.getEditor('container', {
        initialFrameWidth: '100%',
            initialFrameHeight: '300',
            serverUrl:'file/upload'
    });*/
    //加载商品类目的下拉
</script>