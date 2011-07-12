<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Scroll Pager Plugin. 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="StylesContent" runat="server">
    	<style type="text/css">
		
		.ThumbnailItem
		{
			float:left;
			padding:5px;
		}

		.ThumbnailItem>div
		{
			border-radius: 4px;
			padding:3px;
			width:89px;
		}

		.ThumbnailItem>div:hover
		{
			background-color:#dddddd;
		}

		.ThumbnailItem>div>img
		{
			border:1px solid #999999;
			border-radius: 3px;
			padding:1px;
			background-color:White;
			width:85px;
		}

		.ThumbnailItem>label
		{
			float:left;
			clear:both;
			font-size:11px;
			font-family:Arial;
			text-align:center;
			width:87px;
			overflow:hidden;
			margin:0px 0px 0px 4px;
		}

		.Selected>div
		{
			background-image: -webkit-gradient(
				linear,
				left bottom,
				left top,
				color-stop(0, rgb(244,149,55)),
				color-stop(1, rgb(249,206,55))
			);
			background-image: -moz-linear-gradient(
				center bottom,
				rgb(177,87,241) 36%,
				rgb(213,114,255) 68%,
				rgb(36,74,171) 84%
			);
		}

		#ThumbnailListContainer
		{
			position:absolute;
			left:0px;
			right:0px;
			bottom:0px;
			top:40px;
		}


		#CommandBar>div
		{
			float:left;
			text-decoration:underline;
			color:Blue;
			margin-right:5px;
			cursor:pointer;
		}

		#CommandBar>div[disabled]
		{
			color:Gray;
			cursor:default;
		}

		.scrollbar
		{
			width:30px;
			float:right;
			border-left-width:1px;
			border-left-style: solid;
			border-left-color: black;
			background-color:Ivory;
			height:100%;
			position:relative;
			overflow:hidden;
		}

		ul.scrollbar
		{
			padding: 0px;
			margin:  0px;
		}

		.pageMe
		{
			float: left; 
			/*margin-right: 30px; same as the pageNav width*/
		}

		.currentPage
		{

			clear:both; 
			left:0px;
			border-bottom-width:1px;
			border-bottom-style: solid;
			border-bottom-color: #999999;
			background-color:blue;
			z-index:0;

		}

		li.pageItem 
		{
			margin-left: 0px
		}

		.pageItem
		{
			width:100%;
			clear:both; 
			left:0px;
			border-bottom-width:1px;
			border-bottom-style: solid;
			border-bottom-color: #999999;
			z-index:0;
			display: block;
		}

		.thumb
		{
			position:absolute;
			top:0px;
			left:0px;
			width:100%;
			border:1px solid #999999;
			border-radius: 3px;
			background-color:Grey;
			z-index:10;
			display:inherit;

		}

		.sliderPage
		{
			width:100%;
			height:100%;
		}

		.sliderThumb
		{
			width:100%;
			height:100%;
			text-align:center;
			vertical-align:middle;
			text-decoration:none;
		}

	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h3>Scroll Pager Plugin</h3>
    <p>
        View this in compatibility mode for best results. 
		This is an example of a jQuery plugin written in Script# and instantiated via hand coded javascript in the page. 
		I could have used a Document.OnReady in the static constructor of a Script# class to effectively load the plugin automatically, but that would mean hardcoding IDs.
		<BR />I am going to modify this project to include instatiation via a Script# 'Scriptlet', which will mean that I can use C# serverside in the controller to load the plugin, which will mean that I don't write any javascript by hand and I can dynamically set my target element ids.</p>
		<p><b>Getting started:</b>Figure out how to turn off the 'Alert' when you change pages.</p>
		<p>If you make any improvements, please resubmit them to the Git Repo.</p>
	 <div id="listcontainerdiv" class="listcontainer" style="width:100%; height:200px; border:1px solid black;">   
		<ul class="pageMe">
			<li>item1</li>
			<li>item2</li>
			<li>item3</li>
			<li>item4</li>
			<li>item5</li>
			<li>item6</li>
			<li>item7</li>
			<li>item8</li>
			<li>item9</li>
			<li>item10</li>
			<li>item11</li>
			<li>item12</li>
			<li>item13</li>
			<li>item14</li>
			<li>item15</li>
			<li>item16</li>
			<li>item17</li>
			<li>item18</li>
			<li>item19</li>
			<li>item20</li>
			<li>item21</li>
			<li>item22</li>
			<li>item23</li>
		</ul>
		<div class="scrollContainer"></div>
    </div>
		<script type="text/javascript">
			$(document).ready(function ()
			{
				$("ul.pageMe").scrollPagerPlugin({
					pageSize: 10,
					currentPage: 1,
					holder: ".listcontainer",
					container: "#listcontainerdiv",
					totalRecords: 23,
					viewport: "",
					pageHeight: 200,
					onPageChanged: function (o, e)
					{ //window.alert("Selected Page: " + e.selectedPage); 
					},
					scroll: null
				});
			});
	</script>
</asp:Content>
