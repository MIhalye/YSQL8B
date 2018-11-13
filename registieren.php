<?php
/**
 * Start der Session
 */
session_start();
/**
 * Festlegung der Untergrenze für die PHP-Version
 * @version: 1.0
 */
if (0 > version_compare(PHP_VERSION, '5')) {
	die('<h1>Für diese Anwendung ' . 'ist mindestens PHP 5 notwendig</h1>');
}
?>
<!DOCTYPE html>
<html lang="de">
	<head>
		<meta charset="utf-8">
		<title>Image2Food –
			Sag mir, was ich daraus kochen kann – Login </title>
		<meta name="viewport" content=
		"width=device-width; initial-scale=1.0">
	</head>
	<body>
		<div id="nav">
			<?php
			require ("nav.php");
			?>
		</div>
		<div id="content">

			<h1>Registrierung</h1>
            
            <?php
				require ("registieren.inc.php");
			?>
            <?php
            class Registieren
            {
                
            }
            ?>
			</div>

		</div>
	</body>
</html>






