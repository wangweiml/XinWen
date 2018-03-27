<!doctype html>
<html>
	<head>
		<%--<meta charset="utf-8" />--%>
        <meta charset="gb2312" />
		<title>fileDialog Examples</title>
		<link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
		<script src="../kindeditor/kindeditor.js"></script>
		<script src="../kindeditor/lang/zh_CN.js"></script>
        <script charset="utf-8" src="../kindeditor/plugins/code/prettify.js"></script>
		<script>
			KindEditor.ready(function(K) {
			    var editor = K.editor({
			        cssPath: '../kindeditor/plugins/code/prettify.css',
			        uploadJson: '../kindeditor/asp.net/upload_json.ashx',
			        fileManagerJson: '../kindeditor/asp.net/file_manager_json.ashx',
					allowFileManager : true
				});
				K('#insertfile').click(function() {
					editor.loadPlugin('insertfile', function() {
						editor.plugin.fileDialog({
							fileUrl : K('#url').val(),
							clickFn : function(url, title) {
								K('#url').val(url);
								editor.hideDialog();
							}
						});
					});
				});
			});
		</script>
	</head>
	<body>
		<input type="text" id="url" value="" /> <input type="button" id="insertfile" value="select file" />
	</body>
</html>
