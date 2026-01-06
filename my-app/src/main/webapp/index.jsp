<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LakeFlip Mart - Premium Tech & Lakehouse Living</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Montserrat:wght@800;900&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #f5f7fa;
            color: #333;
            overflow-x: hidden;
        }

        /* Lakehouse Background */
        .lakehouse-bg {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100vh;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.3)), 
                        url('https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            z-index: -2;
            opacity: 0.15;
        }

        /* Water Effect Overlay */
        .water-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(transparent 70%, rgba(64, 164, 223, 0.1) 100%);
            z-index: -1;
            pointer-events: none;
        }

        /* Header - Flipkart Inspired */
        header {
            background: linear-gradient(135deg, #2874f0 0%, #1a5dc1 100%);
            color: white;
            padding: 0.8rem 0;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .container {
            width: 90%;
            max-width: 1300px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Montserrat', sans-serif;
            font-size: 1.8rem;
            font-weight: 900;
            color: white;
            text-decoration: none;
        }

        .logo span {
            color: #ffe11b;
        }

        .logo i {
            color: #ffe11b;
            font-size: 2rem;
        }

        .search-bar {
            flex: 1;
            max-width: 500px;
            margin: 0 2rem;
            position: relative;
        }

        .search-bar input {
            width: 100%;
            padding: 0.8rem 1.5rem;
            border-radius: 4px;
            border: none;
            font-size: 1rem;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .search-bar button {
            position: absolute;
            right: 0;
            top: 0;
            height: 100%;
            background: #ffe11b;
            color: #2874f0;
            border: none;
            padding: 0 1.5rem;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
            font-weight: 600;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 1.5rem;
        }

        .header-action {
            display: flex;
            flex-direction: column;
            align-items: center;
            color: white;
            text-decoration: none;
            font-size: 0.9rem;
        }

        .header-action i {
            font-size: 1.5rem;
            margin-bottom: 0.2rem;
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -5px;
            background: #ff6161;
            color: white;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            font-size: 0.8rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Navigation */
        .nav-container {
            background: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            margin-bottom: 2rem;
        }

        .nav-menu {
            display: flex;
            list-style: none;
            padding: 1rem 0;
        }

        .nav-item {
            margin-right: 2rem;
            position: relative;
        }

        .nav-link {
            color: #555;
            text-decoration: none;
            font-weight: 500;
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            transition: all 0.3s;
        }

        .nav-link:hover {
            background: #f0f8ff;
            color: #2874f0;
        }

        .nav-link.active {
            background: #2874f0;
            color: white;
        }

        /* Hero Section with Lake Theme */
        .hero {
            background: linear-gradient(rgba(255, 255, 255, 0.9), rgba(255, 255, 255, 0.7)), 
                        url('https://images.unsplash.com/photo-1499793983690-e29da59ef1c2?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            border-radius: 15px;
            padding: 4rem 3rem;
            margin: 2rem 0;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            position: relative;
            overflow: hidden;
        }

        .hero:before {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 30%;
            background: linear-gradient(transparent, rgba(64, 164, 223, 0.2));
            z-index: 0;
        }

        .hero-content {
            position: relative;
            z-index: 1;
        }

        .hero h1 {
            font-family: 'Montserrat', sans-serif;
            font-size: 3.2rem;
            margin-bottom: 1rem;
            color: #1a5dc1;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        .hero h1 span {
            color: #ffe11b;
            background: linear-gradient(45deg, #2874f0, #1a5dc1);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero p {
            font-size: 1.2rem;
            max-width: 800px;
            margin: 0 auto 2rem;
            color: #444;
            line-height: 1.6;
        }

        .hero-buttons {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .btn {
            padding: 1rem 2.5rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            font-size: 1.1rem;
            transition: all 0.3s;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .btn-primary {
            background: #2874f0;
            color: white;
        }

        .btn-primary:hover {
            background: #1a5dc1;
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(40, 116, 240, 0.3);
        }

        .btn-secondary {
            background: white;
            color: #2874f0;
            border: 2px solid #2874f0;
        }

        .btn-secondary:hover {
            background: #f0f8ff;
            transform: translateY(-3px);
        }

        /* Categories Section */
        .section-title {
            font-family: 'Montserrat', sans-serif;
            font-size: 2.2rem;
            margin: 3rem 0 2rem;
            color: #1a5dc1;
            position: relative;
            padding-bottom: 0.8rem;
        }

        .section-title:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100px;
            height: 5px;
            background: linear-gradient(to right, #2874f0, #ffe11b);
            border-radius: 3px;
        }

        .categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-bottom: 4rem;
        }

        .category-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.08);
            transition: all 0.4s;
            position: relative;
            border: 1px solid rgba(64, 164, 223, 0.1);
        }

        .category-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
        }

        .category-header {
            padding: 2rem;
            text-align: center;
            background: linear-gradient(135deg, #2874f0, #40a4df);
            color: white;
        }

        .category-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
            color: #ffe11b;
        }

        .category-header h3 {
            font-size: 1.8rem;
            font-weight: 600;
        }

        .category-content {
            padding: 2rem;
        }

        .category-content p {
            color: #666;
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }

        .category-features {
            list-style: none;
            margin-bottom: 2rem;
        }

        .category-features li {
            padding: 0.5rem 0;
            color: #555;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .category-features li i {
            color: #2874f0;
        }

        .category-button {
            display: block;
            text-align: center;
            background: #ffe11b;
            color: #1a5dc1;
            padding: 0.8rem 1.5rem;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
        }

        .category-button:hover {
            background: #ffd700;
            transform: scale(1.05);
        }

        /* Lakehouse Info Section */
        .lakehouse-info {
            background: linear-gradient(rgba(255, 255, 255, 0.9), rgba(255, 255, 255, 0.9)), 
                        url('https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
            background-position: center;
            border-radius: 15px;
            padding: 3rem;
            margin: 3rem 0;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .lakehouse-info h2 {
            font-family: 'Montserrat', sans-serif;
            font-size: 2.5rem;
            color: #1a5dc1;
            margin-bottom: 1.5rem;
        }

        .lakehouse-info p {
            font-size: 1.1rem;
            line-height: 1.7;
            color: #444;
            margin-bottom: 1.5rem;
        }

        .info-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .info-item {
            background: white;
            padding: 1.5rem;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            border-left: 5px solid #40a4df;
        }

        .info-item h3 {
            color: #2874f0;
            margin-bottom: 0.8rem;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        /* Products Section */
        .products {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 2rem;
            margin-bottom: 4rem;
        }

        .product-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
            transition: all 0.3s;
            border: 1px solid rgba(64, 164, 223, 0.1);
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.12);
        }

        .product-img {
            height: 200px;
            background-size: cover;
            background-position: center;
            background-color: #f5f7fa;
        }

        .product-content {
            padding: 1.5rem;
        }

        .product-category {
            display: inline-block;
            background: #e8f4ff;
            color: #2874f0;
            padding: 0.3rem 0.8rem;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .product-title {
            font-size: 1.2rem;
            margin-bottom: 0.5rem;
            color: #1a5dc1;
        }

        .product-price {
            font-size: 1.5rem;
            font-weight: 700;
            color: #2874f0;
            margin-bottom: 1rem;
        }

        .product-price .old-price {
            font-size: 1rem;
            color: #999;
            text-decoration: line-through;
            margin-left: 0.5rem;
        }

        .product-actions {
            display: flex;
            gap: 1rem;
        }

        .product-button {
            flex: 1;
            text-align: center;
            padding: 0.7rem;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
        }

        .product-button.buy {
            background: #ffe11b;
            color: #1a5dc1;
        }

        .product-button.cart {
            background: #2874f0;
            color: white;
        }

        .product-button:hover {
            opacity: 0.9;
            transform: scale(1.05);
        }

        /* Footer */
        footer {
            background: linear-gradient(135deg, #1a237e 0%, #2874f0 100%);
            color: white;
            padding: 4rem 0 2rem;
            margin-top: 4rem;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-bottom: 3rem;
        }

        .footer-column h3 {
            font-size: 1.3rem;
            margin-bottom: 1.5rem;
            position: relative;
            padding-bottom: 0.7rem;
            color: #ffe11b;
        }

        .footer-column h3:after {
            content: '';
            position: absolute;
            width: 50px;
            height: 3px;
            background: #40a4df;
            bottom: 0;
            left: 0;
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 0.8rem;
        }

        .footer-links a {
            color: #c5cae9;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-links a:hover {
            color: white;
        }

        .copyright {
            text-align: center;
            padding-top: 2rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #c5cae9;
            font-size: 0.9rem;
        }

        /* Water Animation */
        @keyframes waterRipple {
            0% { transform: translateX(-100%) translateY(0); }
            100% { transform: translateX(100%) translateY(-10px); }
        }

        .water-animation {
            position: fixed;
            bottom: 0;
            left: 0;
            width: 200%;
            height: 100px;
            background: linear-gradient(transparent, rgba(64, 164, 223, 0.1));
            animation: waterRipple 20s infinite linear;
            z-index: -1;
            pointer-events: none;
        }

        /* Responsive Design */
        @media (max-width: 992px) {
            .header-content {
                flex-wrap: wrap;
            }
            
            .search-bar {
                order: 3;
                margin: 1rem 0 0;
                max-width: 100%;
            }
            
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .nav-menu {
                flex-wrap: wrap;
                justify-content: center;
            }
        }

        @media (max-width: 768px) {
            .hero {
                padding: 2rem 1rem;
            }
            
            .hero h1 {
                font-size: 2rem;
            }
            
            .hero-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .section-title {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>
    <!-- Lakehouse Background -->
    <div class="lakehouse-bg"></div>
    <div class="water-overlay"></div>
    <div class="water-animation"></div>

    <!-- Header - Flipkart Inspired -->
    <header>
        <div class="container header-content">
            <a href="#" class="logo">
                <i class="fas fa-water"></i>
                Lake<span>Flip</span> Mart
            </a>
            
            <div class="search-bar">
                <input type="text" placeholder="Search for laptops, phones, watches, and more...">
                <button><i class="fas fa-search"></i> Search</button>
            </div>
            
            <div class="header-actions">
                <a href="#" class="header-action">
                    <i class="fas fa-user"></i>
                    <span>Login</span>
                </a>
                <a href="#" class="header-action">
                    <i class="fas fa-store"></i>
                    <span>Sell</span>
                </a>
                <a href="#" class="header-action cart">
                    <i class="fas fa-shopping-cart"></i>
                    <span>Cart</span>
                    <span class="cart-count">5</span>
                </a>
                <a href="#" class="header-action">
                    <i class="fas fa-gift"></i>
                    <span>Deals</span>
                </a>
            </div>
        </div>
    </header>

    <!-- Navigation -->
    <div class="nav-container">
        <div class="container">
            <ul class="nav-menu">
                <li class="nav-item"><a href="#" class="nav-link active"><i class="fas fa-home"></i> Home</a></li>
                <li class="nav-item"><a href="#categories" class="nav-link"><i class="fas fa-laptop"></i> Laptops</a></li>
                <li class="nav-item"><a href="#categories" class="nav-link"><i class="fas fa-mobile-alt"></i> Phones</a></li>
                <li class="nav-item"><a href="#categories" class="nav-link"><i class="fas fa-clock"></i> Watches</a></li>
                <li class="nav-item"><a href="#lakehouse" class="nav-link"><i class="fas fa-water"></i> Lakehouse</a></li>
                <li class="nav-item"><a href="#" class="nav-link"><i class="fas fa-bolt"></i> Today's Deals</a></li>
                <li class="nav-item"><a href="#" class="nav-link"><i class="fas fa-shipping-fast"></i> Delivery</a></li>
                <li class="nav-item"><a href="#" class="nav-link"><i class="fas fa-question-circle"></i> Help</a></li>
            </ul>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <!-- Hero Section -->
        <section class="hero">
            <div class="hero-content">
                <h1>Welcome to <span>LakeFlip Mart</span></h1>
                <p>Your one-stop destination for premium tech products and lakehouse living essentials. Combining the convenience of Flipkart with the tranquility of lakeside retreats.</p>
                <div class="hero-buttons">
                    <a href="#categories" class="btn btn-primary">
                        <i class="fas fa-shopping-bag"></i> Shop Now
                    </a>
                    <a href="#lakehouse" class="btn btn-secondary">
                        <i class="fas fa-water"></i> Explore Lakehouse
                    </a>
                </div>
            </div>
        </section>

        <!-- Categories Section -->
        <h2 class="section-title" id="categories">Shop by Category</h2>
        <div class="categories">
            <!-- Laptops -->
            <div class="category-card">
                <div class="category-header">
                    <div class="category-icon">
                        <i class="fas fa-laptop"></i>
                    </div>
                    <h3>Laptops</h3>
                </div>
                <div class="category-content">
                    <p>Powerful laptops for work, gaming, and creativity. From ultrabooks to gaming rigs, find the perfect device for your needs.</p>
                    <ul class="category-features">
                        <li><i class="fas fa-check-circle"></i> Gaming Laptops with RTX Graphics</li>
                        <li><i class="fas fa-check-circle"></i> Ultrabooks for Professionals</li>
                        <li><i class="fas fa-check-circle"></i> 2-in-1 Convertibles</li>
                        <li><i class="fas fa-check-circle"></i> Budget-friendly Options</li>
                    </ul>
                    <a href="#" class="category-button">Browse Laptops</a>
                </div>
            </div>

            <!-- Phones -->
            <div class="category-card">
                <div class="category-header">
                    <div class="category-icon">
                        <i class="fas fa-mobile-alt"></i>
                    </div>
                    <h3>Smartphones</h3>
                </div>
                <div class="category-content">
                    <p>Latest smartphones with cutting-edge cameras, performance, and battery life. From flagship to budget devices.</p>
                    <ul class="category-features">
                        <li><i class="fas fa-check-circle"></i> 5G Connectivity</li>
                        <li><i class="fas fa-check-circle"></i> High-Resolution Cameras</li>
                        <li><i class="fas fa-check-circle"></i> Long Battery Life</li>
                        <li><i class="fas fa-check-circle"></i> Water & Dust Resistance</li>
                    </ul>
                    <a href="#" class="category-button">Browse Phones</a>
                </div>
            </div>

            <!-- Watches -->
            <div class="category-card">
                <div class="category-header">
                    <div class="category-icon">
                        <i class="fas fa-clock"></i>
                    </div>
                    <h3>Smartwatches</h3>
                </div>
                <div class="category-content">
                    <p>Stay connected with smartwatches for fitness tracking, notifications, and style. Perfect for active lifestyles.</p>
                    <ul class="category-features">
                        <li><i class="fas fa-check-circle"></i> Health & Fitness Tracking</li>
                        <li><i class="fas fa-check-circle"></i> Water Resistant Designs</li>
                        <li><i class="fas fa-check-circle"></i> Long Battery Life</li>
                        <li><i class="fas fa-check-circle"></i> Premium Materials</li>
                    </ul>
                    <a href="#" class="category-button">Browse Watches</a>
                </div>
            </div>
        </div>

        <!-- Lakehouse Information -->
        <section class="lakehouse-info" id="lakehouse">
            <h2>The LakeFlip Experience</h2>
            <p>At LakeFlip Mart, we combine the convenience of online shopping with the serenity of lakehouse living. Our unique concept brings you the best of both worlds:</p>
            <p>Imagine shopping for your favorite tech gadgets while enjoying the peaceful ambiance of a lakeside retreat. That's what we offer - a seamless blend of modern technology and natural tranquility.</p>
            
            <div class="info-grid">
                <div class="info-item">
                    <h3><i class="fas fa-shipping-fast"></i> Lake Delivery</h3>
                    <p>Unique boat delivery service to lakeside locations. Experience the most scenic delivery you'll ever get!</p>
                </div>
                <div class="info-item">
                    <h3><i class="fas fa-umbrella-beach"></i> Tech by the Lake</h3>
                    <p>Special packages that include tech products + lakeside getaway deals. Perfect for digital nomads.</p>
                </div>
                <div class="info-item">
                    <h3><i class="fas fa-leaf"></i> Eco-Friendly</h3>
                    <p>We're committed to sustainability. Our packaging is eco-friendly and we support lake conservation projects.</p>
                </div>
                <div class="info-item">
                    <h3><i class="fas fa-wifi"></i> Lakeside Connectivity</h3>
                    <p>Special deals on portable hotspots and outdoor tech perfect for lakeside work or entertainment.</p>
                </div>
            </div>
        </section>

        <!-- Featured Products -->
        <h2 class="section-title">Today's Best Deals</h2>
        <div class="products">
            <!-- Product 1 -->
            <div class="product-card">
                <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1496181133206-80ce9b88a853?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');"></div>
                <div class="product-content">
                    <span class="product-category">Laptop</span>
                    <h3 class="product-title">Gaming Beast RTX 4070</h3>
                    <div class="product-price">$1,599.99 <span class="old-price">$1,899.99</span></div>
                    <div class="product-actions">
                        <a href="#" class="product-button buy">Buy Now</a>
                        <a href="#" class="product-button cart">Add to Cart</a>
                    </div>
                </div>
            </div>

            <!-- Product 2 -->
            <div class="product-card">
                <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');"></div>
                <div class="product-content">
                    <span class="product-category">Smartphone</span>
                    <h3 class="product-title">PhonePlus 14 Pro Max</h3>
                    <div class="product-price">$1,099.99 <span class="old-price">$1,299.99</span></div>
                    <div class="product-actions">
                        <a href="#" class="product-button buy">Buy Now</a>
                        <a href="#" class="product-button cart">Add to Cart</a>
                    </div>
                </div>
            </div>

            <!-- Product 3 -->
            <div class="product-card">
                <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');"></div>
                <div class="product-content">
                    <span class="product-category">Smartwatch</span>
                    <h3 class="product-title">WatchFit Pro 3 LTE</h3>
                    <div class="product-price">$299.99 <span class="old-price">$399.99</span></div>
                    <div class="product-actions">
                        <a href="#" class="product-button buy">Buy Now</a>
                        <a href="#" class="product-button cart">Add to Cart</a>
                    </div>
                </div>
            </div>

            <!-- Product 4 -->
            <div class="product-card">
                <div class="product-img" style="background-image: url('https://images.unsplash.com/photo-1603302576837-37561b2e2302?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80');"></div>
                <div class="product-content">
                    <span class="product-category">Lakehouse Bundle</span>
                    <h3 class="product-title">Lakeside Tech Package</h3>
                    <div class="product-price">$2,499.99 <span class="old-price">$3,199.99</span></div>
                    <div class="product-actions">
                        <a href="#" class="product-button buy">Buy Now</a>
                        <a href="#" class="product-button cart">Add to Cart</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-column">
                    <h3>LakeFlip Mart</h3>
                    <p>Your one-stop shop for tech products and lakeside living. Combining convenience with tranquility.</p>
                    <div style="margin-top: 1rem;">
                        <a href="#" style="color: white; margin-right: 1rem; font-size: 1.2rem;"><i class="fab fa-facebook"></i></a>
                        <a href="#" style="color: white; margin-right: 1rem; font-size: 1.2rem;"><i class="fab fa-twitter"></i></a>
                        <a href="#" style="color: white; margin-right: 1rem; font-size: 1.2rem;"><i class="fab fa-instagram"></i></a>
                        <a href="#" style="color: white; margin-right: 1rem; font-size: 1.2rem;"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-column">
                    <h3>Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="#">Home</a></li>
                        <li><a href="#categories">Categories</a></li>
                        <li><a href="#lakehouse">Lakehouse</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Customer Service</h3>
                    <ul class="footer-links">
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Shipping Policy</a></li>
                        <li><a href="#">Returns & Refunds</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h3>Contact Info</h3>
                    <ul class="footer-links">
                        <li><i class="fas fa-map-marker-alt"></i> Lakeside Plaza, Tech Bay</li>
                        <li><i class="fas fa-phone"></i> +1 (555) 123-LAKE</li>
                        <li><i class="fas fa-envelope"></i> info@lakeflipmart.com</li>
                        <li><i class="fas fa-clock"></i> Mon-Sun: 7AM-11PM</li>
                    </ul>
                </div>
            </div>
            <div class="copyright">
                <p>&copy; 2023 LakeFlip Mart. All rights reserved. | Designed with <i class="fas fa-heart" style="color:#ffe11b;"></i> by the Lake</p>
                <p style="margin-top: 0.5rem; font-size: 0.8rem;">A unique blend of technology and tranquility</p>
            </div>
        </div>
    </footer>

    <script>
        // Cart functionality
        document.querySelectorAll('.product-button.cart').forEach(button => {
            button.addEventListener('click', function(e) {
                e.preventDefault();
                const cartCount = document.querySelector('.cart-count');
                let count = parseInt(cartCount.textContent);
                cartCount.textContent = count + 1;
                
                // Animation
                cartCount.style.transform = 'scale(1.3)';
                setTimeout(() => {
                    cartCount.style.transform = 'scale(1)';
                }, 300);
                
                // Show notification
                const productTitle = this.closest('.product-card').querySelector('.product-title').textContent;
                showNotification(`Added "${productTitle}" to cart!`);
            });
        });

        // Buy now functionality
        document.querySelectorAll('.product-button.buy').forEach(button => {
            button.addEventListener('click', function(e) {
                e.preventDefault();
                const productTitle = this.closest('.product-card').querySelector('.product-title').textContent;
                showNotification(`Proceeding to checkout for "${productTitle}"`);
            });
        });

        // Search functionality
        document.querySelector('.search-bar button').addEventListener('click', function() {
            const searchTerm = document.querySelector('.search-bar input').value;
            if(searchTerm.trim()) {
                showNotification(`Searching for: "${searchTerm}"`);
            }
        });

        // Navigation active state
        document.querySelectorAll('.nav-link').forEach(link => {
            link.addEventListener('click', function() {
                document.querySelectorAll('.nav-link').forEach(item => {
                    item.classList.remove('active');
                });
                this.classList.add('active');
            });
        });

        // Notification function
        function showNotification(message) {
            // Create notification element
            const notification = document.createElement('div');
            notification.style.cssText = `
                position: fixed;
                top: 100px;
                right: 20px;
                background: #2874f0;
                color: white;
                padding: 1rem 1.5rem;
                border-radius: 5px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.2);
                z-index: 1000;
                animation: slideIn 0.3s ease;
                max-width: 300px;
            `;
            
            // Create keyframes for animation
            const style = document.createElement('style');
            style.textContent = `
                @keyframes slideIn {
                    from { transform: translateX(100%); opacity: 0; }
                    to { transform: translateX(0); opacity: 1; }
                }
            `;
            document.head.appendChild(style);
            
            notification.textContent = message;
            document.body.appendChild(notification);
            
            // Remove after 3 seconds
            setTimeout(() => {
                notification.style.animation = 'slideIn 0.3s ease reverse';
                setTimeout(() => {
                    document.body.removeChild(notification);
                }, 300);
            }, 3000);
        }

        // Lakehouse water animation
        const water = document.querySelector('.water-animation');
        setInterval(() => {
            water.style.animationDuration = `${Math.random() * 10 + 15}s`;
        }, 5000);
    </script>
</body>
</html>
