<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <style type="text/css">
        body{
            width: 99%;
            margin:5px;
        }
        .panel{
            margin: 0px;
        }
        #notice0{
        	min-height:420px;
        }
        
        .course_content{
        	border:1px solid #0ff;
        	margin-top:10px;
        	padding:20px;
        	min-height:220px;
        	font-size:14px;
        	letter-spacing:1px;
        }
        .left{
        	/* border:1px solid blue; */
        	width:450px;
        	padding:20px;
        	float:left;
        	background:#eee;
        	margin:10px 0 0 2px;
        	min-height:220px;
        }
        .left_title span i{
        	color:#009;
        	font-size:18px;
        	margin-right:6px;
        }
        
        
        .right{
        	/* border:1px solid blue; */
        	width:400px;
        	padding:20px;
        	float:left;
        	background:#abcdef;
        	margin:10px 0 0 60px;
        	min-height:120px;
        }
        
        .right_title span i{
        	color:red;
        	font-size:22px;
        	margin-right:6px;
        }
        .text0{
        	margin-left:30px;
        	margin-top:10px;
        }
        .text1{
		text-indent:30px;
		margin-top:10px;
	}
	.text1_ul{
		margin-left:40px;
		margin-top:10px;
	}
	.text2{
        	margin-left:30px;
        	margin-top:25px;
        }
	.left_content li{
		margin-top:5px;
	}
	.tab-content{
		margin-top:10px;
	}
    </style>
</head>
<body>
    <div class="panel panel-info">
        <div class="panel-heading">市场规模</div>
        <div class="panel-body">
        	<ul class="nav nav-tabs">
                <li><a href="#notice0" id="course_title" data-toggle="tab">课程介绍</a></li>
                <li class="active"><a id="stscgm" href="#notice1" data-toggle="tab"> 实体市场规模</a></li>
                <li><a href="#notice2" id="wlscgm" data-toggle="tab"> 网络市场规模</a></li>
            </ul>
            <div class="tab-content">
            	<div  class="tab-pane fade in " id="notice0">
                	<div class="course_content">
						<div class="text1">
							您的市场调研公司试着对各个细分市场及区域市场的市场潜力进行了估计。
						</div>
						<div class="text1">
							调查员询问了消费者以下问题：
						</div>
						<ul class="text1_ul">
							<li>他们在未来的 12 个月内购买手机的可能性有多大。</li>
							<li>如果决定购买，他们的购买量将有多大.</li>
						</ul>
						
						<div class="text1">
							最后，调查员们按细分市场将消费者人数汇总。
						</div>
						<div class="text1">
							在估计市场潜力的时候，调查员将应用以下公式：
						</div>
						
						<div class="text2"><label>市场潜力 = 购买可能性 X 购买量 X 消费者人数</label></div>
						
                   	</div>
                   	<div class="left">
                   		<div class="left_title">
                   			<span><i class="fa fa-tasks"></i></span><label>你的任务</label>
                   		</div>
                   		<div class="left_content">
                			请查看各个细分市场及区域市场的潜在市场规模。 这些数据代表了未来 12 个月内的潜在销量。 调研公司同时也会分别估计每个细分市场中各个城市的市场潜力
                   		</div>
                   	</div>
                   	<div class="right">
                   		<div class="right_title">
                   			<span><i class="fa fa-lightbulb-o"></i></span><label>决策小提示</label>
                   		</div>
                   		<div class="right_content">
                   			在通常情况下，您可以假设季度销量大概为 12 个月市场潜力的 25%（一年有四个季度）。 然而， 在市场的初期阶段，营销活动的质和量可能不及意料中的好。 并且，对于消费者来说，他们需要一定的时间来了解手机。所以实际需求量在初期可能会远远小于潜在需求量。
                   		</div>
                   	</div>
                </div>
            	<div class="tab-pane fade in active" id=notice1>
		            <table class="table table-bordered">
		                <thead>
		                    <tr class="success">
		                        <th></th>
		                        <th>实用型</th>
		                        <th>极致型</th>
		                        <th>商务型</th>
		                        
		                    </tr>
		                </thead>
		               <tbody id="data_body">
		                  <c:forEach items="${MarketInfoList }" var="item">
			                	<tr>	
			                		<td>${item.city}</td>
			                		<td>${item.practical }</td>
			                		<td>${item.perfect }</td>
			                		<td>${item.business }</td>
			                	</tr>
			                </c:forEach>   
		               </tbody>
		            </table>
            	</div>
            
            	<div class="tab-pane fade" id=notice2>
		            <table class="table table-bordered">
		                <thead>
		                    <tr>
		                        <th></th>
		                        <th>实用型</th>
		                        <th>极致型</th>
		                        <th>商务型</th>
		                        
		                    </tr>
		                </thead>
		            	<tbody id="data_body1">
		                   <c:forEach items="${MarketInfoList }" var="item">
			                	<tr>	
			                		<td>${item.city}</td>
			                		<td>${item.webPractical }</td>
			                		<td>${item.webPerfect }</td>
			                		<td>${item.webBusiness }</td>
			                	</tr>
			                </c:forEach> 
		            	</tbody>
		            </table>
            	</div>
            </div>
            <div id="main" style="width: 600px;height:400px;"></div>
        </div>
        <div class="panel-footer"></div>
    </div>
<script type="text/javascript" src="js/jquery-2.2.4.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/echarts.min.js"></script>



     <script type="text/javascript">
     
     
     $(function(){
         
    	// test 的点击事件
    	  $("#course_title").click(function(){
    		  document.getElementById("main").style.display="none";
    		  
    	  });
    	$("#stscgm").click(function(){
    		document.getElementById("main").style.display="block";               
    	kz("00");
    	});
    	                
    	$("#wlscgm").click(function(){
    		document.getElementById("main").style.display="block";   
    	kz("01");
    	});
    	});
     $(document).ready(function(){
    	 kz("00");
    	 }); 
     function kz(a){
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
           title: {
        text: '按用途划分的细分市场',
        subtext: '数据来自网络'
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'shadow'
        }
    },
    legend: {
        data: ['实用型','极致型','商务型']
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis: {
        type: 'value',
        boundaryGap: [0, 0.01]
    },
    yAxis: {
        type: 'category',
        data: []
    },
    series: [
        {
            name: '实用型',
            type: 'bar',
            data: []
        },
        {
            name: '极致型',
            type: 'bar',
            data: []
        },
        {
            name: '商务型',
            type: 'bar',
            data: []
        }
    ]
        };
        myChart.showLoading(); 
        var xa=[];
        var sz1=[];
        var sz2=[];
        var sz3=[];
        
        $.ajax({
			type:'post',
			url:"showMarketInfojson.do",
			success: function(data){
				$.each(data , function(index,obj){
					xa.push(obj.city);
					if(a=="00"){
						//alert("000");
					sz1.push(obj.practical);
					sz2.push(obj.perfect);
					sz3.push(obj.business);}
					else{
						sz1.push(obj.webPractical);
						sz2.push(obj.webPerfect);
						sz3.push(obj.webBusiness);
					}
		  		});
			
				 myChart.hideLoading();    //隐藏加载动画
                 myChart.setOption({        //加载数据图表
                	 yAxis: {
                	        type: 'category',
                	        data: xa
                	    },
                	    series: [
                	        {
                	            name: '实用型',
                	            type: 'bar',
                	            data: sz1
                	        },
                	        {
                	            name: '极致型',
                	            type: 'bar',
                	            data: sz2
                	        },
                	        {
                	            name: '商务型',
                	            type: 'bar',
                	            data: sz3
                	        }
                	    ]
                 });
			}
		});

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);}
    </script>
<script type="text/javascript" src="js/classIntroduction.js"></script>
</body>
</html>