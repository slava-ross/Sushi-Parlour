<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="utf-8">
		<title><?php print $vars['title']; ?></title>
		<link rel="stylesheet" href="css/style_adm.css">
		<?php
			if( isset( $vars['styles'] ) ) {
				print( '<link rel="stylesheet" href="'.$vars['styles'].'">' );
			}
		?>
		<script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
		<?php
			if( isset( $vars['jquery'] ) ) {
				print( '<script type="text/javascript" src="js/'.$vars['jquery'].'"></script>' );
			}
			if( isset( $vars['script'] ) ) {
				print( '<script type="text/javascript" src="js/'.$vars['script'].'"></script>' );
			}
		?>
	</head>
	<body>
		<header>
			<ul class="main_menu">
				<li><a href="index.php?page=home">Web Store</a></li>
				<li><a href="index.php?page=item&id=1">Товар</a></li>
				<li><a href="index.php?page=cart">Корзина</a></li>
				<?php if( $vars['auth'] ): ?> <li><a href="index.php?page=admin&event=main">Админ</a></li> <?php endif; ?>
				<?php if( $vars['auth'] ): ?> <li><a href="index.php?page=admin&event=add_item">Добавить товар</a></li> <?php endif; ?>
				<?php if( $vars['auth'] ): ?> <li><a href="index.php?page=admin&event=list_items">Список товаров</a></li> <?php endif; ?>
				<?php if( $vars['auth'] ): ?> <li><a href="index.php?page=admin&event=orders_list">Список заказов</a></li> <?php endif; ?>
				<?php if( !$vars['auth'] ): ?> <li><a href="index.php?page=admin&event=reg">Регистрация</a></li> <?php endif; ?>
				<?php if( !$vars['auth'] ): ?> <li><a href="index.php?page=admin&event=auth">Вход</a></li> <?php endif; ?>
				<?php if( $vars['auth'] ): ?> <li><a href="index.php?page=admin&event=exit">Выход</a></li> <?php endif; ?>
			</ul>
		</header>
