<main>
	<?php if ( $vars['show_content'] ): ?>
		<div class="cart">
			<h2>Корзина</h2>
			<table class="cart_list">
				<thead>
					<th>ID</th>
					<th>Наименование</th>
					<th>Стоимость</th>
				</thead>
				<tbody>
				<?php
					foreach ( $vars['itemsArray'] as $item ) {
						print ("<tr>\n");
						print ('<td>'.$item['id'].'</td>');
						print ('<td>'.$item['title'].'</td>');
						print ('<td>'.number_format( floatval( $item['cost'] ), 2, ',', ' ' ).' руб.</td>');
						print ("</tr>\n");
					}
				?>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><b>Итого:</b></td>
						<?php
							print ('<td>'.number_format( floatval( $vars['sumCost'] ), 2, ',', ' ' ).' рублей.</td>');
						?>
					</tr>
				</tfoot>
			</table>
		</div>
		<div class="forms cart_form">
			<h2>Оформление заказа</h2>
			<form method="post">
				<p><label><b>Ваше имя:</b><br>
					<input type="text" name="first_name" placeholder="Имя" value="<?php if( isset( $_POST['first_name'] )) print $_POST['first_name'] ?>">
				</label></p>
				<p><label><b>Ваша фамилия:</b><br>
					<input type="text" name="surname" placeholder="Фамилия" value="<?php if( isset( $_POST['surname'] )) print $_POST['surname'] ?>">
				</label></p>
				<p><label><b>Город:</b><br>
					<input type="text" name="city" placeholder="Город" value="<?php if( isset( $_POST['city'] )) print $_POST['city'] ?>">
				</label></p>
				<p><label><b>Адрес:</b><br>
					<input type="text" name="address" placeholder="Адрес" value="<?php if( isset( $_POST['address'] )) print $_POST['address'] ?>">
				</label></p>
				<p><label><b>Телефон:</b><br>
					<input type="text" name="phone" placeholder="Телефон" value="<?php if( isset( $_POST['phone'] )) print $_POST['phone'] ?>">
				</label></p>
				<p><input type="submit" name="submit" value="Оформить"></p>
				<?php
					/*if ( array_key_exists( 'errorMessages', $vars )) {*/
					if ( count( $vars['errorMessages'] ) != 0 ) {
						foreach( $vars['errorMessages'] as $errorMsg ) {
							print('<p class="message error">'.$errorMsg.'</p>');
						}
					}
				?>
			</form>
		</div>
	<?php else:
		foreach ( $vars['messages'] as $msg ) {
			print('<p class="message">'.$msg.'</p>');
		}
	endif; ?>
</main>
