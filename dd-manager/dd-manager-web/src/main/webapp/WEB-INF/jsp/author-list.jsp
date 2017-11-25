<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="toolbar">
    <div style="padding: 5px; background-color: #fff;">
        <label>作者笔名：</label>
        <input class="easyui-textbox" type="text" id="title">
        <label>作者状态：</label>
        <select id="state" class="easyui-combobox" >
            <option value="0">全部</option>
            <option value="1">休眠</option>
            <option value="2">活跃</option>
        </select>
        <!--http://www.cnblogs.com/wisdomoon/p/3330856.html-->
        <!--注意：要加上type="button",默认行为是submit-->
        <button onclick="searchForm()" type="button" class="easyui-linkbutton">搜索</button>
    </div>
    <div>
        <button onclick="add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</button>
        <button onclick="edit()" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</button>
        <button onclick="remove()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</button>
        <button onclick="down()" class="easyui-linkbutton" data-options="iconCls:'icon-down',plain:true">休眠</button>
        <button onclick="up()" class="easyui-linkbutton" data-options="iconCls:'icon-up',plain:true">活跃</button>
    </div>
</div>
<table id="author" ></table>
<script>
    //模糊查询
    function searchForm(){

        $('#author').datagrid('load',{
            title: $('#title').val(),
            state: $('#state').combobox('getValue')
        });

    }
    //新增
    function add() {
        novel.closeTabs('查询作者');
        novel.addTabs('新增作者','author-add');
    }
    //编辑作者
    function edit() {
        var selections = $('#author').datagrid('getSelections');
        console.log(selections);
        if (selections.length == 0) {
            //客户没有选择记录
            $.messager.alert('提示', '请至少选中一条记录！');
            return;
        }
        else if (selections.length > 1) {
            //客户没有选择记录
            $.messager.alert('提示', '只能选中一条记录！');
            return;
        }
        else if(selections.length == 1){
            novel.closeTabs('查询作者');
            novel.addTabs('编辑作者','author-edit');
        }

    }
    //批量删除
    function remove() {
        var selections = $('#author').datagrid('getSelections');
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
                    'authors/batch',
                    //data:从前台提交哪些数据给后台处理，相当于data，Object类型
                    {'ids[]':ids},
                    //callback:后台处理成功的回调函数，相当于success，function类型
                    function(data){
                        //alert(data);
                        $('#author').datagrid('reload');
                    },
                    //dataType:返回的数据类型，如：json，String类型
                    'json'
                );

            }
        });
    }
    function up() {
        var selections = $('#author').datagrid('getSelections');
        //console.log(selections);
        if (selections.length == 0) {
            //客户没有选择记录
            $.messager.alert('提示', '请至少选中一条记录！');
            return;
        }
        //至少选中了一条记录
        //确认框，第一个参数为标题，第二个参数确认框的提示内容，第三参数是一个确认函数
        //function(r) 如果用户点击的是"确定"，那么r=true
        $.messager.confirm('确认', '您确认想要更改活跃作者吗？', function (r) {
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
                    'authors/batchup',
                    //data:从前台提交哪些数据给后台处理，相当于data，Object类型
                    {'ids[]':ids},
                    //callback:后台处理成功的回调函数，相当于success，function类型
                    function(data){
                        //alert(data);
                        $('#author').datagrid('reload');
                    },
                    //dataType:返回的数据类型，如：json，String类型
                    'json'
                );

            }
        });
    }
    function down() {
        var selections = $('#author').datagrid('getSelections');
        //console.log(selections);
        if (selections.length == 0) {
            //客户没有选择记录
            $.messager.alert('提示', '请至少选中一条记录！');
            return;
        }
        //至少选中了一条记录
        //确认框，第一个参数为标题，第二个参数确认框的提示内容，第三参数是一个确认函数
        //function(r) 如果用户点击的是"确定"，那么r=true
        $.messager.confirm('确认', '您确认想要更改休眠作者吗？', function (r) {
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
                    'authors/batchdown',
                    //data:从前台提交哪些数据给后台处理，相当于data，Object类型
                    {'ids[]':ids},
                    //callback:后台处理成功的回调函数，相当于success，function类型
                    function(data){
                        //alert(data);
                        $('#author').datagrid('reload');
                    },
                    //dataType:返回的数据类型，如：json，String类型
                    'json'
                );

            }
        });
    }
    $("#author").datagrid({
        url:"authors",
        multiSort:true,
        toolbar: '#toolbar',
        striped:true,
        pagination:true,
        rownumbers:true,
        fit:true,
        pageSize:20,
        pageList:[20,50,100],
        columns:[[
            {field:'ck',checkbox:true},
            {field: 'id', title: '作家编号', width: 100},
            {field: 'authorname', title: '作家笔名', width: 100,sortable:true},
            {field: 'bookname', title: '作品', width: 100},
            {field: 'sex', title: '性别', width: 100},
            {field: 'email', title: '邮箱', width: 100},
            {field: 'phone', title: '电话', width: 100},
            {field: 'address', title: '地址', width: 100},
            {field: 'state', title: '状态', width: 100,formatter:function(value,row,index){
                console.group();
                console.log(value);
                console.log(row);
                console.log(index);
                console.groupEnd();
                switch (value){
                    case 1:
                        return '休眠';
                        break;
                    case 2:
                        return '活跃';
                        break;
                    case 3:
                        return '删除';
                        break;
                    default:
                        return '未知';
                        break;
                }
            }},
            {field: 'created', title: '注册时间', width: 100,formatter:function(value,row,index){
                return moment(value).format('YYYY年MM月DD日,hh:mm:ss');
            }},
            {field: 'updated', title: '最新操作时间', width: 100,formatter:function(value,row,index){
                return moment(value).format('YYYY年MM月DD日,hh:mm:ss');
            }}
        ]]
    });
</script>
