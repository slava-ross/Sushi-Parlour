		<main>
			<section class="section-left">
				<div class="big-image-wrapper">
					<?php isset( $vars['filesArr'][0] ) ? print( '<img src="uploads/'.$vars['filesArr'][0]['name'].'" alt="Big Image">') : print( '<img src="img/657x683.png" alt="Big Image">' ) ?>
				</div>
				<div class="thumbnails-wrapper">
          <?php isset( $vars['filesArr'][1] ) ? print( '<img src="uploads/'.$vars['filesArr'][1]['name'].'" alt="Thumbnail 1">') : print( '<img src="img/146x170.png" alt="Thumbnail 1">' ) ?>
          <?php isset( $vars['filesArr'][2] ) ? print( '<img src="uploads/'.$vars['filesArr'][2]['name'].'" alt="Thumbnail 2">') : print( '<img src="img/146x170.png" alt="Thumbnail 2">' ) ?>
          <?php isset( $vars['filesArr'][3] ) ? print( '<img src="uploads/'.$vars['filesArr'][3]['name'].'" alt="Thumbnail 3">') : print( '<img src="img/146x170.png" alt="Thumbnail 3">' ) ?>
          <?php isset( $vars['filesArr'][4] ) ? print( '<img src="uploads/'.$vars['filesArr'][4]['name'].'" alt="Thumbnail 4">') : print( '<img src="img/146x170.png" alt="Thumbnail 4">' ) ?>
				</div>
			</section>


			<section class="section-right">
				<div class="item-info">
					<p class="link-back">‹ <a href="#" class="link-out">Back to <span>Woman</span></a></p>
					<p class="item-title"><?php print ($vars['itemArr']['title']); ?></p>
					<p class="reviews">
						<span>&#x2605; &#x2605; &#x2605; &#x2606; &#x2606;</span>
						3 Review(s)&nbsp&nbsp|
						<a href="#" class="add-review">ADD A REVIEW</a>
					</p>
					<p class="price">$<?php print number_format( floatval( $vars['itemArr']['cost'] ), 2, '.', ' ' ) ?></p>
				</div>
				<div class="product-info">
          <p class="prod-avail">
            <b>Availability:</b>
            <span>In stock</span>
          </p>
          <p class="prod-code">
            <b>Product Code:</b>
            <span>#<?php print ($vars['itemId']); ?></span>
          </p>
          <p class="prod-tags">
            <b>Tags:</b>
            <span>Fashion, Hood, Classic</span>
          </p>
        </div>
        <div class="product-description">
          <p><?php print ($vars['itemArr']['description']); ?></p>
          <ul class="product-features">
            <li>Dark blue suit for a tone-on-tone look</li>
            <li>Regular fit</li>
            <li>100% Cotton</li>
            <li>Free shipping with 4 days delivery</li>
          </ul>
        </div>
        <form method="post">
          <div class="parameters">
            <label>Color<br>
              <select name="color">
                <option disabled">Select Color</option>
              </select>
            </label>
            <label>Size<br>
              <select name="size">
                <option disabled">Select Size</option>
              </select>
            </label>
            <label>QTY<br>
              <input type="number" size="2" name="qty" min="1" max="99" value="1">
            </label>
            <p>
              <a href"#">Clear selection</a>
            </p>
            <button class="cart-button" id="cart-btn" attr-id="<?php print ($vars['itemId']); ?>">ADD TO CART</button>
            <button class="wish-button" id="wish-btn" attr-id="<?php print ($vars['itemId']); ?>"><span class="fas fa-heart"></span>ADD TO WISHLIST</button>
          </div>
        </form>
			</section>
		</main>