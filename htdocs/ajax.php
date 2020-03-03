<?php
	header('Content-Type: text/html; charset=utf-8');
	session_start();
	$actResult = array();

	$action = $_GET['action'];

	if ( isset( $_GET['item_id'] )) {
		$itemId = $_GET['item_id'];
	} else {
		$itemId = NULL;
	}
	if ( isset( $_GET['order_id'] )) {
		$orderId = $_GET['order_id'];
	} else {
		$orderId = NULL;
	}
	if ( isset( $_GET['new_status'] )) {
		$newStatus = $_GET['new_status'];
	} else {
		$newStatus = NULL;
	}

	switch( $action ) {
		case 'add_to_cart':
			if ( !isset( $_SESSION['cart'] )) {
				$_SESSION['cart'] = array();
			}
			$_SESSION['cart'][] = $itemId;
			$actResult['result'] = 'OK';
			$actResult['cart_count'] = count( $_SESSION['cart'] );
		break;
		case 'change_status':
			/**
			 * -D- Подключение к базе данных
			 */
			include ('frameworks/db.php');
			$db = new db;
			$dbResult = $db->connect(
				'localhost',
				'root',
				'',
				'webstore'
			);
			if ( !$dbResult['success'] ) {
				foreach ( $dbResult['errors'] as $errMessage ) {
					$actResult['result'][] = $errMessage;
				}
				break;
			}
			/**
			 *	-V- {orders} @order: экземпляр объекта заказов;
			 *	-V- {array} @result: массив с результатами работы методов объекта, содержащий как рабочую информацию, так и сообщения об ошибках;
	 		*/
	 		include ('frameworks/orders.php');
			$order = new orders;
			$order->setDB( $db );
			$order_result = $order->setOrderStatus( $orderId, $newStatus );
			if ( $order_result['success'] ) {
				$actResult['result'] = 'OK';
			} else {
				foreach ( $order_result['errors'] as $errMessage ) {
					$actResult['result'][] = $errMessage;
				}
				break;
			}
		break;
		default:
			$actResult['result'] = 'Nonexistent action!';
	}
	print ( json_encode( $actResult ));
?>