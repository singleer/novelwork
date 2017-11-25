<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<div id="toolbar">
    <div style="padding: 5px; background-color: #fff;">
        <label>小说名称：</label>
        <input class="easyui-textbox" type="text" id="novelName" style="width: 100px;">
        <label>作者名称：</label>
        <input class="easyui-textbox" type="text" id="authorName" style="width: 100px;">
        <label>小说状态：</label>
        <select id="status" class="easyui-combobox" style="width: 60px;" >
            <option value="0">全部</option>
            <option value="1">连载</option>
            <option value="2">完结</option>
        </select>
        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
    </div>
    <div>
        <button onclick="add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
        <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
        <%--<button onclick="up()" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true"></button>
        <button onclick="down()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">下架</button>--%>
        <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
    </div>
</div>

<table id="dg"></table>

<script>

    //小说模糊查询
    function searchForm() {
        $('#dg').datagrid('load',{
            novelName:$('#novelName').val(),
            authorName:$('#authorName').val(),
            status:$('#status').combobox('getValue')//注意
    });
    }

    //新增小说
    function add() {
        novel.closeTabs("查询小说");
        novel.addTabs('新增小说','book-add');
    }


    //删除小说
    function remove() {
        var selections = $('#dg').datagrid('getSelections');
        if(selections.length==0){
            $.messager.alert('提示','请选择至少一条记录!','warning');
            return;
        }

        //确认框，第一个参数为标题，第二个参数确认框的提示内容，第三参数是一个确认函数
        //function(r) 如果用户点击的是"确定"，那么r=true
        var num = selections.length;
        $.messager.confirm('确认','您确定要删除这'+num+'条记录吗',function (r) {
            if(r){
                //存放id的集合
                var ids = [];
                //遍历选中的记录,将记录的id存放到js数组中
                for(var i=0;i<selections.length;i++){
                    ids.push(selections[i].id);
                }

                $.post(
                    'books/remove',
                    {'ids[]':ids},
                    function (data) {
                        $('#dg').datagrid('reload');//页面自动刷新,且停在当前页
                    },
                    'json'

                );

            }
        });


    }

    function edit() {
        var selections = $('#dg').datagrid('getSelections');
        if(selections.length>1){
            $.messager.alert('警告','只能选择一条记录进行编辑!','warning');
        }else{
            novel.closeTabs("查询小说");
            var bid = selections[0].id;
            novel.addTabs("修改小说","book-edit?bid="+bid+"");
        }

    }

    $('#dg').datagrid({

        //多列联合查询
        multiSort:true,
        //将工具栏添加到数据库表格中
        toolbar: '#toolbar',
        url:'books',//显示所有书籍
        striped: true,//斑马线效果
        pagination: true,//显示分页工具栏
        fit: true,//使得数据表格自适应填充父容器
        rownumbers: true,//显示行号
        pageSize: 20,
        pageList: [20, 50, 100],
        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'id', title: '小说编号', width: 120},
            {field: 'title', title: '小说名', width: 100},
            {field: 'author', title: '作者', width: 100},
            {field: 'catName', title: '类别', width: 100},
            {field: 'status', title: '状态', width: 100, formatter: function (value) {
                switch (value){
                    case 1:
                        return "连载中";
                        break;
                    case 2:
                        return "已完结";
                        break;
                    case 3:
                        return "删除";
                        break;
                    default:
                        return "不明";
                        break;
                }
            }},
            {field: 'clickView', title: '点击量', width: 100, formatter: function (value) {
                if(value==null){
                    return "0";
                }
                return value+"万";
            }},
            {field: 'ticketsView', title: '推荐票', width: 100,formatter: function (value) {
                if(value==null){
                    return "0";
                }
                return value+"万";
            }},
            {field: 'countView', title: '字数', width: 100,formatter: function (value) {
                if(value==null){
                    return "0";
                }
                return value+"万";
            }},
            {field: 'scoreView', title: '评分', width: 50},
            {field: 'created', title: '创建时间', formatter: function (value) {
                return moment(value).format('YYYY年MM月DD日 hh:mm:ss');

            }},
            {field: 'updated', title: '更新时间', formatter: function (value) {
                return moment(value).format('YYYY年MM月DD日 hh:mm:ss');

            }}
        ]]
    });
</script>




