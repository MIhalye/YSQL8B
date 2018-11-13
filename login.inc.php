<form action="login.php" method="post">
	<label class="reg_label">Userid</label><span class="pflichtmarker"> * </span>
	<input name="userid" maxlength="20"	
	<?php
	if (isset($_POST['Userid']))
		echo "value='" . $_POST['Userid'] . "'";
	?>/>
	<span class="fehlermeldung"></span>
	<br />
	
	<label class="reg_label">Passwort</label><span class="pflichtmarker"> * </span>
	<input name="pw"  type="password"  maxlength="50"
	<?php
	if (isset($_POST['Passwort']))
		echo "value='" . $_POST['Passwort'] . "'";
	?>/>
	<span class="fehlermeldung"></span>
	<br />
	<input type="submit" />
</form>