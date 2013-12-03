<!DOCTYPE html>
<html lang="et" class="front-page">
	<!-- <html lang="{{ page.language_code }}"> -->
<head>
	<?php require("components/html-head.php") ?>
		<!-- {% include "html-head" %} -->
</head>

<body>
	<section class="site-content cfx">
		<?php require("components/front-page-header.php") ?>
			<!-- {% include "front-page-header" %} -->

		<main class="page-content cfx" role="main">
			<section class="main-element container cfx">
				<div class="main-element-left half-container">
					<img src="http://placeimg.com/448/448/any" alt="Image 1" title="Image 1">
					<img src="http://placeimg.com/448/448/any" alt="Image 2" title="Image 2">
				</div>
				<div class="main-element-right half-container">
					<h2>Fresh pumpkin Gnocchi with oil and sage</h2>
					<p>A great dish for the end of the summer, using fresh grown pumpkins and garlic and served with the best crusty bread you can get you hands on.</p>
					<a href="#nothing">See our other items</a>
				</div>
			</section>

			<section class="summary cfx">
				<div class="container">
					<section class="latest-news half-container">
						<h3>Latest news from our blog</h3>
						<div class="front-page-news">
							<h2>New pasta dish «Cheese Carbonara»</h2>
							<time datetime="2013-11-25" class="post-date">October 31, 2013</time>
						</div>
						<div class="front-page-news">
							<h2>Expanded «Summer» selection</h2>
							<time datetime="2013-11-25" class="post-date">October 31, 2013</time>
						</div>
						<div class="front-page-news">
							<h2>New cafe open at 32th street</h2>
							<time datetime="2013-11-25" class="post-date">October 31, 2013</time>
						</div>
					</section>
					<section class="testimonial half-container">
						<p>«One of the best cappuccinos in town - each one made with love and a nice design that shows that care. Very friendly place and a nice local vibe has turned me into a regular customer.»</p>
						<p>- Andrew Ludwig</p>
					</section>
				</div>
			</section>

			<section class="contacts container">
				<span>1521 Pearl ST, Boulder, CO    |    hello@bouldercafe.com    |    (303) 449-5173</span>
				<br>
				<span>We are open Monday to Friday from 9am to 10pm</span>
			</section>

			<section class="map cfx">
				<iframe src="http://maps.google.com/maps?f=q&amp;hl=en&amp;q=boulder@40.0149856,-105.27054559999999&amp;ie=UTF8&amp;ll=40.0149856,-105.27054559999999&amp;z=12&amp;iwloc=A&amp;output=embed" width="650" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" style="line-height: 1.4em; display: inline; width: 100%; height: 227px;"></iframe>
			</section>
		</main>

		<?php require("components/site-footer.php") ?>
			<!-- {% include "site-footer" %} -->

	</section>
	<script>project.initCommonPage();</script>
</body>
</html>