<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="toolbar">
    <div style="padding: 5px; background-color: #fff;">
        <label>消费内容：</label>
        <input class="easyui-textbox" type="text" id="content">
        <label>商品类型：</label>
        <select id="status" class="easyui-combobox">
            <option value="0">全部</option>
            <option value="1">充值</option>
            <option value="2">消费</option>
        </select>
        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
        <%--<a onclick="searchForm()" class="easyui-linkbutton">搜索</a>--%>
    </div>
    <div>
        <button onclick="add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
        <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
        <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
    </div>
</div>



<table id="dg1"></table>

<script>

    //模糊查询
    function searchForm(){
        $('#dg1').datagrid('load',{
            title:$('#content').val(),
            status:$('#status').combobox('getValue')
        });
    }


    function add() {
        novel.addTabs('新增账单', 'order-add');
    }

    function edit() {
        console.log('edit');
    }

    function remove() {
        var selections = $('#dg1').datagrid('getSelections');
        console.log(selections);
        if (selections.length == 0) {
            //客户没有选择记录
            $.messager.alert('提示', '请至少选中一条记录！');
            return;
        }
        //至少选中了一条记录
        //确认框，第一个参数为标题，第二个参数确认框的提示内容，第三参数是一个确认函数
        //function(r) 如果用户点击的是"确定"，那么r=true
        $.messager.confirm('确认', '您确认想要删除记录吗？', function (r) {
            if (r) {
                //为了存放id的集合
                var ids = [];
                //遍历选中的记录，将记录的id存放到js数组中
                for (var i = 0; i < selections.length; i++) {
                    ids.push(selections[i].id);
                }
                //把ids异步提交到后台
                $.post(
                    //url:请求后台的哪个地址来进行处理，相当于url,String类型
                    'orders/delete',
                    //data:从前台提交哪些数据给后台处理，相当于data，Object类型
                    {'ids[]': ids},
                    //callback:后台处理成功的回调函数，相当于success，function类型
                    function (data) {
                        $('#dg1').datagrid('reload');
                    },
                    //dataType:返回的数据类型，如：json，String类型
                    'json'
                );

            }
        });
    }

    $('#dg1').datagrid({

        url:'orders/list',//显示所有账单
        toolbar: '#toolbar',
        striped: true,//斑马线效果
        pagination: true,//显示分页工具栏
        fit: true,//使得数据表格自适应填充父容器
        rownumbers: true,//显示行号
        multiSort:true,
        pageSize: 20,
        pageList: [20, 50, 100],
        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'id', title: '账单编号', width: 100},
            {field: 'status', title: '状态', width: 100, formatter: function (value, row, index) {
                switch (value) {
                    case 1 :
                        return "充值";
                        break;
                    case 2:
                        return "消费";
                        break;
                    case 3:
                        return "删除";
                        break;
                    default:
                        return "未知";
                        break;
                }

            }
            },
            {field: 'price', title: '金额', width: 100},
            {field: 'content', title: '消费内容', width: 100},
            {field: 'author', title: '账单所属', width: 100},
            {field: 'created', title: '创建时间', formatter: function (value) {
                return moment(value).format('YYYY年MM月DD日 hh:mm:ss');
            }}
        ]]
    });
</script>




