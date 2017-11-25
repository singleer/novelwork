<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>




<table id="reply"></table>
<input type="hidden" value="${pid}" id="pid">

<script>


    $('#reply').datagrid({

        url:'listRreply?pid='+$('#pid').val()+'',//显示所有书籍
        striped: true,//斑马线效果
        pagination: true,//显示分页工具栏
        fit: true,//使得数据表格自适应填充父容器
        rownumbers: true,//显示行号
        pageSize: 20,
        pageList: [20, 50, 100],
        columns: [[
            {field: 'ck', checkbox: true},
            {field: 'id', title: '回复编号', width: 120},
            {field: 'title', title: '评论标题', width: 100},
            {field: 'poster', title: '评论者', width: 100},
            {field: 'reviewer', title: '回复者', width: 100},
            {field: 'conntent', title: '回复内容', width: 100},
            {field: 'created', title: '创建时间', formatter: function (value) {
                return moment(value).format('YYYY年MM月DD日 hh:mm:ss');

            }}

        ]]
    });


    //作者下拉框
    $('#author').combobox({
        url:'authorList',
        valueField:'id',//相当于option的value值
        textField:'authorname',//相当于<option></option>之间的显示值 value:1000    //默认显示值
    });

    function listReply() {
        var selections = $('#comment').datagrid('getSelections');
        if(selections.length>1){
            $.messager.alert('警告','只能选择一条评论查看回复!','warning');
        }else{
            var pid = selections[0].id;
            novel.addTabs("查看回复","replyPage?pid="+pid+"");
        }

    }
</script>




