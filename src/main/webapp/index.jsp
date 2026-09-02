<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Modern Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>
        :root {
            --primary: #111827;
            --secondary: #6b7280;
            --accent: #2563eb;
            --accent-light: #eff6ff;
            --success: #16a34a;
            --danger: #ef4444;
            --warning: #f59e0b;

            --bg: #f8fafc;
            --white: #ffffff;
            --border: #e5e7eb;

            --radius: 16px;
            --shadow: 0 10px 30px rgba(15, 23, 42, .07);
            --container: 1240px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, sans-serif;
            background: var(--bg);
            color: var(--primary);
            line-height: 1.5;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        img {
            max-width: 100%;
            display: block;
        }

        .container {
            width: min(var(--container), calc(100% - 40px));
            margin: auto;
        }

        /* =========================
           HEADER
        ========================= */

        .topbar {
            background: var(--primary);
            color: white;
            font-size: 13px;
        }

        .topbar-inner {
            min-height: 36px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
        }

        .topbar-right {
            display: flex;
            gap: 20px;
            color: #d1d5db;
        }

        header {
            background: rgba(255,255,255,.96);
            position: sticky;
            top: 0;
            z-index: 100;
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(12px);
        }

        .header-main {
            min-height: 76px;
            display: grid;
            grid-template-columns: auto 1fr auto;
            align-items: center;
            gap: 30px;
        }

        .logo {
            font-family: Poppins, sans-serif;
            font-size: 24px;
            font-weight: 800;
            white-space: nowrap;
        }

        .logo span {
            color: var(--accent);
        }

        .search-box {
            height: 46px;
            background: #f3f4f6;
            border: 1px solid transparent;
            border-radius: 12px;
            display: flex;
            align-items: center;
            padding: 0 14px;
            transition: .2s;
        }

        .search-box:focus-within {
            background: white;
            border-color: #bfdbfe;
            box-shadow: 0 0 0 4px #eff6ff;
        }

        .search-box i {
            color: var(--secondary);
        }

        .search-box input {
            flex: 1;
            border: none;
            outline: none;
            background: transparent;
            padding: 0 12px;
            font-size: 14px;
        }

        .search-box button {
            border: none;
            background: var(--accent);
            color: white;
            width: 34px;
            height: 34px;
            border-radius: 8px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .action-btn {
            width: 42px;
            height: 42px;
            border: none;
            background: transparent;
            border-radius: 10px;
            color: var(--primary);
            position: relative;
            transition: .2s;
        }

        .action-btn:hover {
            background: var(--accent-light);
            color: var(--accent);
        }

        .badge-count {
            position: absolute;
            top: 0;
            right: 0;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            background: var(--danger);
            color: white;
            font-size: 10px;
            display: grid;
            place-items: center;
            font-weight: 700;
        }

        .desktop-nav {
            border-top: 1px solid #f1f5f9;
        }

        .nav-inner {
            min-height: 48px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 28px;
        }

        .nav-links a {
            display: flex;
            align-items: center;
            gap: 7px;
            font-size: 14px;
            font-weight: 600;
            color: #4b5563;
            transition: .2s;
        }

        .nav-links a:hover,
        .nav-links a.active {
            color: var(--accent);
        }

        .nav-offer {
            color: var(--danger);
            font-size: 13px;
            font-weight: 700;
        }

        .mobile-menu-btn {
            display: none;
            border: none;
            background: transparent;
            font-size: 20px;
        }

        /* =========================
           HERO
        ========================= */

        .hero {
            padding: 28px 0 10px;
        }

        .hero-card {
            min-height: 460px;
            border-radius: 24px;
            overflow: hidden;
            position: relative;
            display: flex;
            align-items: center;
            background:
                linear-gradient(90deg,
                rgba(15,23,42,.92) 0%,
                rgba(15,23,42,.70) 45%,
                rgba(15,23,42,.10) 100%),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
                center/cover;
        }

        .hero-content {
            width: 600px;
            padding: 55px;
            color: white;
        }

        .hero-label {
            display: inline-flex;
            padding: 7px 12px;
            background: rgba(255,255,255,.14);
            border: 1px solid rgba(255,255,255,.2);
            border-radius: 30px;
            font-size: 12px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: clamp(34px, 5vw, 58px);
            line-height: 1.08;
            margin-bottom: 18px;
        }

        .hero h1 span {
            color: #60a5fa;
        }

        .hero p {
            color: #dbeafe;
            max-width: 500px;
            margin-bottom: 28px;
            font-size: 16px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            border: none;
            min-height: 46px;
            padding: 0 20px;
            border-radius: 10px;
            font-weight: 700;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 9px;
            transition: .2s;
        }

        .btn-primary {
            background: var(--accent);
            color: white;
        }

        .btn-primary:hover {
            background: #1d4ed8;
            transform: translateY(-2px);
        }

        .btn-light {
            background: white;
            color: var(--primary);
        }

        .btn-light:hover {
            transform: translateY(-2px);
        }

        /* =========================
           QUICK FEATURES
        ========================= */

        .features {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 14px;
            margin: 20px 0 55px;
        }

        .feature {
            background: white;
            border: 1px solid var(--border);
            padding: 18px;
            border-radius: 14px;
            display: flex;
            align-items: center;
            gap: 13px;
        }

        .feature-icon {
            width: 42px;
            height: 42px;
            border-radius: 10px;
            display: grid;
            place-items: center;
            background: var(--accent-light);
            color: var(--accent);
        }

        .feature strong {
            display: block;
            font-size: 14px;
        }

        .feature span {
            display: block;
            color: var(--secondary);
            font-size: 12px;
            margin-top: 2px;
        }

        /* =========================
           SECTION
        ========================= */

        .section {
            padding: 35px 0;
        }

        .section-header {
            display: flex;
            align-items: end;
            justify-content: space-between;
            margin-bottom: 22px;
            gap: 20px;
        }

        .section-title h2 {
            font-family: Poppins, sans-serif;
            font-size: 25px;
            margin-bottom: 5px;
        }

        .section-title p {
            color: var(--secondary);
            font-size: 14px;
        }

        .view-all {
            color: var(--accent);
            font-weight: 700;
            font-size: 14px;
        }

        /* =========================
           CATEGORIES
        ========================= */

        .category-list {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 14px;
        }

        .category {
            background: white;
            border: 1px solid var(--border);
            border-radius: 16px;
            padding: 20px 10px;
            text-align: center;
            transition: .2s;
            cursor: pointer;
        }

        .category:hover {
            border-color: #bfdbfe;
            box-shadow: var(--shadow);
            transform: translateY(-4px);
        }

        .category-icon {
            width: 55px;
            height: 55px;
            border-radius: 50%;
            margin: auto;
            display: grid;
            place-items: center;
            background: #eff6ff;
            color: var(--accent);
            font-size: 20px;
        }

        .category h4 {
            margin-top: 12px;
            font-size: 14px;
        }

        .category p {
            color: var(--secondary);
            font-size: 11px;
            margin-top: 3px;
        }

        /* =========================
           PRODUCTS
        ========================= */

        .products-toolbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 18px;
            gap: 15px;
        }

        .result-count {
            color: var(--secondary);
            font-size: 13px;
        }

        .sort-select {
            border: 1px solid var(--border);
            background: white;
            padding: 9px 12px;
            border-radius: 9px;
            outline: none;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 18px;
        }

        .product-card {
            background: white;
            border: 1px solid var(--border);
            border-radius: 16px;
            overflow: hidden;
            transition: .25s;
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
            border-color: #dbeafe;
        }

        .product-image {
            height: 235px;
            background: #f8fafc;
            position: relative;
            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .4s;
        }

        .product-card:hover .product-image img {
            transform: scale(1.05);
        }

        .product-badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--danger);
            color: white;
            padding: 5px 9px;
            border-radius: 7px;
            font-size: 11px;
            font-weight: 700;
        }

        .product-badge.new {
            background: var(--success);
        }

        .wishlist {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 36px;
            height: 36px;
            border: none;
            background: white;
            border-radius: 50%;
            box-shadow: 0 4px 15px rgba(0,0,0,.08);
            color: #6b7280;
        }

        .wishlist.active {
            color: var(--danger);
        }

        .product-body {
            padding: 16px;
        }

        .product-category {
            color: var(--secondary);
            font-size: 11px;
            text-transform: uppercase;
            font-weight: 600;
            letter-spacing: .04em;
        }

        .product-title {
            font-size: 15px;
            margin: 6px 0 10px;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .rating {
            color: var(--warning);
            font-size: 12px;
            margin-bottom: 12px;
        }

        .rating span {
            color: var(--secondary);
            margin-left: 4px;
        }

        .product-bottom {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 10px;
        }

        .price {
            font-size: 18px;
            font-weight: 800;
        }

        .old-price {
            display: block;
            color: var(--secondary);
            text-decoration: line-through;
            font-size: 11px;
            font-weight: 500;
        }

        .add-cart {
            border: none;
            width: 40px;
            height: 40px;
            border-radius: 10px;
            background: var(--primary);
            color: white;
            transition: .2s;
        }

        .add-cart:hover {
            background: var(--accent);
        }

        .empty-products {
            grid-column: 1/-1;
            padding: 60px;
            text-align: center;
            background: white;
            border-radius: 16px;
            border: 1px solid var(--border);
            color: var(--secondary);
        }

        /* =========================
           PROMO
        ========================= */

        .promo {
            margin: 50px 0;
            background: #111827;
            color: white;
            border-radius: 20px;
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
        }

        .promo-content {
            padding: 45px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .promo-tag {
            color: #60a5fa;
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            margin-bottom: 10px;
        }

        .promo h2 {
            font-family: Poppins, sans-serif;
            font-size: 32px;
            margin-bottom: 10px;
        }

        .promo p {
            color: #cbd5e1;
            margin-bottom: 20px;
        }

        .promo-image {
            min-height: 330px;
            background: url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85") center/cover;
        }

        /* =========================
           DEALS
        ========================= */

        .deal-section {
            background: white;
            border: 1px solid var(--border);
            border-radius: 20px;
            padding: 28px;
        }

        .deal-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .deal-title h2 {
            font-family: Poppins, sans-serif;
        }

        .deal-title p {
            color: var(--secondary);
            font-size: 13px;
        }

        .countdown {
            display: flex;
            gap: 7px;
        }

        .time {
            background: var(--primary);
            color: white;
            border-radius: 8px;
            min-width: 50px;
            text-align: center;
            padding: 7px;
        }

        .time strong {
            display: block;
            font-size: 17px;
        }

        .time span {
            font-size: 9px;
            color: #d1d5db;
        }

        /* =========================
           TESTIMONIALS
        ========================= */

        .review-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .review {
            background: white;
            border: 1px solid var(--border);
            border-radius: 16px;
            padding: 22px;
        }

        .review-stars {
            color: var(--warning);
            font-size: 13px;
            margin-bottom: 12px;
        }

        .review p {
            color: #4b5563;
            font-size: 14px;
            min-height: 65px;
        }

        .review-user {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 18px;
        }

        .review-user img {
            width: 40px;
            height: 40px;
            object-fit: cover;
            border-radius: 50%;
        }

        .review-user strong {
            font-size: 13px;
        }

        .review-user span {
            display: block;
            color: var(--secondary);
            font-size: 11px;
        }

        /* =========================
           NEWSLETTER
        ========================= */

        .newsletter {
            background: linear-gradient(135deg, #2563eb, #1e40af);
            border-radius: 20px;
            color: white;
            padding: 45px;
            text-align: center;
            margin: 60px 0;
        }

        .newsletter h2 {
            font-family: Poppins, sans-serif;
            font-size: 28px;
            margin-bottom: 8px;
        }

        .newsletter p {
            color: #dbeafe;
            margin-bottom: 22px;
        }

        .newsletter-form {
            max-width: 500px;
            margin: auto;
            display: flex;
            background: white;
            border-radius: 10px;
            padding: 5px;
        }

        .newsletter-form input {
            flex: 1;
            border: none;
            outline: none;
            padding: 0 12px;
            min-width: 0;
        }

        .newsletter-form button {
            border: none;
            background: var(--primary);
            color: white;
            padding: 10px 18px;
            border-radius: 7px;
            font-weight: 700;
        }

        #newsletterMsg {
            margin-top: 12px;
            font-size: 13px;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            background: #111827;
            color: #9ca3af;
            padding: 50px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
        }

        .footer-logo {
            color: white;
            font-family: Poppins, sans-serif;
            font-size: 22px;
            font-weight: 800;
        }

        .footer-logo span {
            color: #60a5fa;
        }

        .footer-about {
            margin-top: 12px;
            max-width: 330px;
            font-size: 13px;
        }

        .footer-column h4 {
            color: white;
            font-size: 14px;
            margin-bottom: 14px;
        }

        .footer-column a {
            display: block;
            font-size: 13px;
            margin-bottom: 9px;
        }

        .footer-column a:hover {
            color: white;
        }

        .socials {
            display: flex;
            gap: 8px;
            margin-top: 18px;
        }

        .socials a {
            width: 34px;
            height: 34px;
            border-radius: 8px;
            background: #1f2937;
            display: grid;
            place-items: center;
            color: white;
        }

        .copyright {
            text-align: center;
            border-top: 1px solid #1f2937;
            padding-top: 22px;
            margin-top: 40px;
            font-size: 12px;
        }

        /* =========================
           CART DRAWER
        ========================= */

        .cart-overlay {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.45);
            z-index: 200;
            opacity: 0;
            visibility: hidden;
            transition: .25s;
        }

        .cart-overlay.open {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: absolute;
            right: 0;
            top: 0;
            height: 100%;
            width: min(420px, 100%);
            background: white;
            transform: translateX(100%);
            transition: .3s;
            display: flex;
            flex-direction: column;
        }

        .cart-overlay.open .cart-drawer {
            transform: translateX(0);
        }

        .cart-header {
            padding: 20px;
            border-bottom: 1px solid var(--border);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .cart-header button {
            border: none;
            background: transparent;
            font-size: 20px;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 15px;
        }

        .cart-item {
            display: flex;
            gap: 12px;
            padding: 12px 0;
            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 65px;
            height: 65px;
            object-fit: cover;
            border-radius: 9px;
            background: #f3f4f6;
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-info h4 {
            font-size: 13px;
        }

        .cart-item-info p {
            font-size: 13px;
            font-weight: 700;
            margin-top: 5px;
        }

        .remove-item {
            border: none;
            background: transparent;
            color: var(--danger);
        }

        .empty-cart {
            text-align: center;
            padding: 70px 20px;
            color: var(--secondary);
        }

        .cart-footer {
            border-top: 1px solid var(--border);
            padding: 20px;
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            font-size: 18px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .checkout {
            width: 100%;
        }

        /* =========================
           TOAST
        ========================= */

        .toast {
            position: fixed;
            right: 20px;
            bottom: 20px;
            background: #111827;
            color: white;
            padding: 13px 17px;
            border-radius: 10px;
            z-index: 500;
            transform: translateY(100px);
            opacity: 0;
            transition: .3s;
            font-size: 13px;
            box-shadow: var(--shadow);
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* =========================
           MOBILE
        ========================= */

        @media (max-width: 1000px) {
            .header-main {
                grid-template-columns: auto 1fr auto;
                gap: 15px;
            }

            .category-list {
                grid-template-columns: repeat(3, 1fr);
            }

            .product-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .features {
                grid-template-columns: repeat(2, 1fr);
            }

            .review-grid {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 2fr 1fr 1fr;
            }
        }

        @media (max-width: 760px) {
            .topbar {
                display: none;
            }

            .header-main {
                min-height: 65px;
            }

            .desktop-nav {
                display: none;
            }

            .mobile-menu-btn {
                display: block;
            }

            .logo {
                font-size: 20px;
            }

            .header-actions .account-btn,
            .header-actions .wishlist-btn {
                display: none;
            }

            .search-box {
                height: 40px;
            }

            .hero {
                padding-top: 15px;
            }

            .hero-card {
                min-height: 480px;
                border-radius: 18px;
            }

            .hero-content {
                padding: 28px;
            }

            .hero h1 {
                font-size: 35px;
            }

            .features {
                grid-template-columns: 1fr 1fr;
            }

            .category-list {
                grid-template-columns: repeat(2, 1fr);
            }

            .product-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .product-image {
                height: 190px;
            }

            .promo {
                grid-template-columns: 1fr;
            }

            .promo-image {
                min-height: 230px;
                order: -1;
            }

            .promo-content {
                padding: 30px;
            }

            .deal-top {
                align-items: flex-start;
                flex-direction: column;
                gap: 15px;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media (max-width: 500px) {
            .container {
                width: min(100% - 24px, var(--container));
            }

            .header-main {
                grid-template-columns: auto 1fr auto;
            }

            .search-box {
                min-width: 0;
            }

            .search-box input {
                width: 50px;
            }

            .hero-content {
                padding: 25px 20px;
            }

            .hero h1 {
                font-size: 31px;
            }

            .hero p {
                font-size: 14px;
            }

            .features {
                grid-template-columns: 1fr;
            }

            .section {
                padding: 25px 0;
            }

            .section-header {
                align-items: flex-start;
            }

            .product-grid {
                grid-template-columns: 1fr 1fr;
                gap: 10px;
            }

            .product-image {
                height: 160px;
            }

            .product-body {
                padding: 11px;
            }

            .product-title {
                font-size: 13px;
            }

            .price {
                font-size: 15px;
            }

            .add-cart {
                width: 35px;
                height: 35px;
            }

            .newsletter {
                padding: 30px 18px;
            }

            .newsletter-form {
                flex-direction: column;
                gap: 6px;
                background: transparent;
            }

            .newsletter-form input {
                height: 44px;
                border-radius: 8px;
            }

            .newsletter-form button {
                height: 44px;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
                gap: 25px;
            }

            .footer-grid > div:first-child {
                grid-column: 1/-1;
            }

            .countdown {
                width: 100%;
            }

            .time {
                flex: 1;
            }
        }
    </style>
</head>

<body>

<!-- =========================
     TOP BAR
========================= -->

<div class="topbar">
    <div class="container topbar-inner">
        <div>
            Free shipping on orders over $50
        </div>

        <div class="topbar-right">
            <span>Help Center</span>
            <span>Track Order</span>
            <span>USD ▾</span>
        </div>
    </div>
</div>

<!-- =========================
     HEADER
========================= -->

<header>

    <div class="container header-main">

        <button class="mobile-menu-btn" id="mobileMenuBtn">
            <i class="fas fa-bars"></i>
        </button>

        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>

        <div class="search-box">
            <i class="fas fa-search"></i>

            <input
                type="search"
                id="searchInput"
                placeholder="Search products..."
                aria-label="Search products"
            >

            <button id="searchBtn">
                <i class="fas fa-arrow-right"></i>
            </button>
        </div>

        <div class="header-actions">

            <button class="action-btn account-btn" title="Account">
                <i class="far fa-user"></i>
            </button>

            <button class="action-btn wishlist-btn" title="Wishlist">
                <i class="far fa-heart"></i>
            </button>

            <button class="action-btn" id="cartBtn" title="Shopping cart">
                <i class="fas fa-shopping-bag"></i>
                <span class="badge-count" id="cartCount">0</span>
            </button>

        </div>

    </div>

    <div class="desktop-nav">

        <div class="container nav-inner">

            <ul class="nav-links">

                <li>
                    <a href="#" class="active">
                        <i class="fas fa-house"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#categories">
                        Categories
                    </a>
                </li>

                <li>
                    <a href="#products">
                        New Arrivals
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        Deals
                    </a>
                </li>

                <li>
                    <a href="#reviews">
                        Reviews
                    </a>
                </li>

            </ul>

            <div class="nav-offer">
                <i class="fas fa-bolt"></i>
                Today's Special Offers
            </div>

        </div>

    </div>

</header>

<!-- =========================
     MOBILE MENU
========================= -->

<div id="mobileMenu"
     style="display:none;background:white;border-bottom:1px solid var(--border);">

    <div class="container" style="padding:15px 0;">

        <div style="display:flex;flex-direction:column;gap:15px;">

            <a href="#">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">New Arrivals</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>

        </div>

    </div>

</div>

<main>

<!-- =========================
     HERO
========================= -->

<section class="hero">

    <div class="container">

        <div class="hero-card">

            <div class="hero-content">

                <div class="hero-label">
                    <i class="fas fa-sparkles"></i>
                    NEW SEASON COLLECTION
                </div>

                <h1>
                    Upgrade Your
                    <span>Everyday.</span>
                </h1>

                <p>
                    Discover carefully selected fashion, electronics,
                    accessories and lifestyle products made for modern living.
                </p>

                <div class="hero-buttons">

                    <button class="btn btn-primary" id="shopNow">
                        Shop Collection
                        <i class="fas fa-arrow-right"></i>
                    </button>

                    <button class="btn btn-light" id="exploreDeals">
                        View Deals
                    </button>

                </div>

            </div>

        </div>

    </div>

</section>

<!-- =========================
     FEATURES
========================= -->

<section class="container">

    <div class="features">

        <div class="feature">
            <div class="feature-icon">
                <i class="fas fa-truck-fast"></i>
            </div>

            <div>
                <strong>Free Shipping</strong>
                <span>On orders over $50</span>
            </div>
        </div>

        <div class="feature">
            <div class="feature-icon">
                <i class="fas fa-shield-halved"></i>
            </div>

            <div>
                <strong>Secure Payment</strong>
                <span>100% protected checkout</span>
            </div>
        </div>

        <div class="feature">
            <div class="feature-icon">
                <i class="fas fa-rotate-left"></i>
            </div>

            <div>
                <strong>Easy Returns</strong>
                <span>30-day return policy</span>
            </div>
        </div>

        <div class="feature">
            <div class="feature-icon">
                <i class="fas fa-headset"></i>
            </div>

            <div>
                <strong>24/7 Support</strong>
                <span>We're here to help</span>
            </div>
        </div>

    </div>

</section>

<!-- =========================
     CATEGORIES
========================= -->

<section class="section container" id="categories">

    <div class="section-header">

        <div class="section-title">
            <h2>Explore Categories</h2>
            <p>Find exactly what you're looking for.</p>
        </div>

        <a href="#products" class="view-all">
            View all →
        </a>

    </div>

    <div class="category-list" id="categoryList"></div>

</section>

<!-- =========================
     PRODUCTS
========================= -->

<section class="section container" id="products">

    <div class="section-header">

        <div class="section-title">
            <h2>Popular Products</h2>
            <p>Our most loved products this week.</p>
        </div>

    </div>

    <div class="products-toolbar">

        <div class="result-count" id="resultCount">
            Showing products
        </div>

        <select class="sort-select" id="sortSelect">
            <option value="default">Sort by: Featured</option>
            <option value="low">Price: Low to High</option>
            <option value="high">Price: High to Low</option>
            <option value="rating">Top Rated</option>
        </select>

    </div>

    <div class="product-grid" id="productGrid"></div>

</section>

<!-- =========================
     PROMO
========================= -->

<section class="container">

    <div class="promo">

        <div class="promo-content">

            <div class="promo-tag">
                Limited Time Offer
            </div>

            <h2>
                Work smarter.
                <br>
                Travel lighter.
            </h2>

            <p>
                Get premium tech essentials at special prices
                while supplies last.
            </p>

            <div>
                <button class="btn btn-primary" id="promoButton">
                    Shop Tech Deals
                    <i class="fas fa-arrow-right"></i>
                </button>
            </div>

        </div>

        <div class="promo-image"></div>

    </div>

</section>

<!-- =========================
     FLASH SALE
========================= -->

<section class="section container" id="deals">

    <div class="deal-section">

        <div class="deal-top">

            <div class="deal-title">
                <h2>
                    <i class="fas fa-bolt" style="color:#f59e0b;"></i>
                    Flash Sale
                </h2>

                <p>
                    Grab today's deal before time runs out.
                </p>
            </div>

            <div class="countdown">

                <div class="time">
                    <strong id="days">00</strong>
                    <span>DAYS</span>
                </div>

                <div class="time">
                    <strong id="hours">00</strong>
                    <span>HOURS</span>
                </div>

                <div class="time">
                    <strong id="minutes">00</strong>
                    <span>MIN</span>
                </div>

                <div class="time">
                    <strong id="seconds">00</strong>
                    <span>SEC</span>
                </div>

            </div>

        </div>

        <div class="product-card">

            <div class="product-image">

                <span class="product-badge">
                    -17%
                </span>

                <button class="wishlist">
                    <i class="far fa-heart"></i>
                </button>

                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=85"
                    alt="MacBook Air"
                >

            </div>

            <div class="product-body">

                <div class="product-category">
                    Laptop
                </div>

                <h3 class="product-title">
                    MacBook Air M2
                </h3>

                <div class="rating">
                    ★★★★★
                    <span>(128 reviews)</span>
                </div>

                <div class="product-bottom">

                    <div>
                        <div class="price">
                            $999
                        </div>

                        <div class="old-price">
                            $1,199
                        </div>
                    </div>

                    <button
                        class="add-cart"
                        id="buyDeal"
                        title="Add deal to cart"
                    >
                        <i class="fas fa-cart-plus"></i>
                    </button>

                </div>

            </div>

        </div>

    </div>

</section>

<!-- =========================
     REVIEWS
========================= -->

<section class="section container" id="reviews">

    <div class="section-header">

        <div class="section-title">
            <h2>What Customers Say</h2>
            <p>Real feedback from our customers.</p>
        </div>

    </div>

    <div class="review-grid">

        <div class="review">

            <div class="review-stars">
                ★★★★★
            </div>

            <p>
                "The whole shopping experience was incredibly smooth.
                My order arrived earlier than expected."
            </p>

            <div class="review-user">

                <img
                    src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                    alt="Ava Martin"
                >

                <div>
                    <strong>Ava Martin</strong>
                    <span>Verified Customer</span>
                </div>

            </div>

        </div>

        <div class="review">

            <div class="review-stars">
                ★★★★★
            </div>

            <p>
                "Excellent product quality and very easy checkout.
                I'll definitely be ordering again."
            </p>

            <div class="review-user">

                <img
                    src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                    alt="Michael Lee"
                >

                <div>
                    <strong>Michael Lee</strong>
                    <span>Verified Customer</span>
                </div>

            </div>

        </div>

        <div class="review">

            <div class="review-stars">
                ★★★★☆
            </div>

            <p>
                "Great selection, fair prices and excellent customer
                service. Highly recommended."
            </p>

            <div class="review-user">

                <img
                    src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                    alt="Sophia Wilson"
                >

                <div>
                    <strong>Sophia Wilson</strong>
                    <span>Verified Customer</span>
                </div>

            </div>

        </div>

    </div>

</section>

<!-- =========================
     NEWSLETTER
========================= -->

<section class="container">

    <div class="newsletter">

        <h2>
            Get 10% off your first order
        </h2>

        <p>
            Subscribe for new arrivals, exclusive offers and useful updates.
        </p>

        <form class="newsletter-form" id="newsletterForm">

            <input
                type="email"
                id="email"
                placeholder="Your email address"
                required
            >

            <button type="submit">
                Subscribe
            </button>

        </form>

        <div id="newsletterMsg"></div>

    </div>

</section>

</main>

<!-- =========================
     FOOTER
========================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div>

                <div class="footer-logo">
                    Nexus<span>Shop</span>
                </div>

                <p class="footer-about">
                    A modern online shopping experience bringing
                    quality products, great prices and excellent service
                    together.
                </p>

                <div class="socials">

                    <a href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-x-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fab fa-youtube"></i>
                    </a>

                </div>

            </div>

            <div class="footer-column">

                <h4>Shop</h4>

                <a href="#products">New Arrivals</a>
                <a href="#categories">Categories</a>
                <a href="#deals">Deals</a>
                <a href="#">Best Sellers</a>

            </div>

            <div class="footer-column">

                <h4>Support</h4>

                <a href="#">Help Center</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Contact Us</a>

            </div>

            <div class="footer-column">

                <h4>Company</h4>

                <a href="#">About Us</a>
                <a href="#">Careers</a>
                <a href="#">Privacy</a>
                <a href="#">Terms</a>

            </div>

        </div>

        <div class="copyright">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>

<!-- =========================
     CART DRAWER
========================= -->

<div class="cart-overlay" id="cartOverlay">

    <div class="cart-drawer">

        <div class="cart-header">

            <h3>
                Shopping Cart
            </h3>

            <button id="closeCart">
                <i class="fas fa-xmark"></i>
            </button>

        </div>

        <div class="cart-items" id="cartItems"></div>

        <div class="cart-footer">

            <div class="cart-total">

                <span>Total</span>

                <span id="cartTotal">
                    $0
                </span>

            </div>

            <button class="btn btn-primary checkout" id="checkout">
                Proceed to Checkout
            </button>

        </div>

    </div>

</div>

<!-- TOAST -->

<div class="toast" id="toast"></div>

<script>

    /* =========================
       DATA
    ========================= */

    const CATEGORIES = [
        {
            id: "phones",
            name: "Smartphones",
            icon: "fa-mobile-screen-button"
        },
        {
            id: "laptops",
            name: "Laptops",
            icon: "fa-laptop"
        },
        {
            id: "clothing",
            name: "Clothing",
            icon: "fa-shirt"
        },
        {
            id: "gadgets",
            name: "Gadgets",
            icon: "fa-headphones"
        },
        {
            id: "footwear",
            name: "Footwear",
            icon: "fa-shoe-prints"
        },
        {
            id: "accessories",
            name: "Accessories",
            icon: "fa-watch"
        }
    ];

    const PRODUCTS = [

        {
            id: 1,
            title: "iPhone 14 Pro Max",
            category: "phones",
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: "New",
            image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 2,
            title: 'MacBook Pro 14"',
            category: "laptops",
            price: 1999,
            rating: 4,
            reviews: 86,
            image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 3,
            title: "Apple Watch Series 8",
            category: "accessories",
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 214,
            badge: "-13%",
            image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 4,
            title: "Nike Air Max",
            category: "footwear",
            price: 150,
            rating: 4,
            reviews: 53,
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 5,
            title: "Sony A7 IV Camera",
            category: "gadgets",
            price: 2499,
            rating: 5,
            reviews: 42,
            image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 6,
            title: "Premium Perfume",
            category: "accessories",
            price: 120,
            rating: 5,
            reviews: 189,
            image: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 7,
            title: "Travel Backpack",
            category: "accessories",
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 67,
            badge: "-20%",
            image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 8,
            title: "Sony WH-1000XM5",
            category: "gadgets",
            price: 399,
            rating: 5,
            reviews: 156,
            badge: "New",
            image: "https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=700&q=85"
        }

    ];

    let cart = [];

    /* =========================
       ELEMENTS
    ========================= */

    const categoryList =
        document.getElementById("categoryList");

    const productGrid =
        document.getElementById("productGrid");

    const searchInput =
        document.getElementById("searchInput");

    const resultCount =
        document.getElementById("resultCount");

    const cartCount =
        document.getElementById("cartCount");

    const cartOverlay =
        document.getElementById("cartOverlay");

    const cartItems =
        document.getElementById("cartItems");

    const cartTotal =
        document.getElementById("cartTotal");

    const toast =
        document.getElementById("toast");

    /* =========================
       CATEGORY RENDER
    ========================= */

    function renderCategories() {

        categoryList.innerHTML = "";

        CATEGORIES.forEach(category => {

            const item = document.createElement("div");

            item.className = "category";

            item.innerHTML = `
                <div class="category-icon">
                    <i class="fas ${category.icon}"></i>
                </div>

                <h4>${category.name}</h4>

                <p>Explore products</p>
            `;

            item.addEventListener("click", () => {

                searchInput.value = category.name;

                filterProducts(category.name);

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });

            categoryList.appendChild(item);

        });

    }

    /* =========================
       PRODUCT RENDER
    ========================= */

    function renderProducts(products) {

        productGrid.innerHTML = "";

        resultCount.textContent =
            `${products.length} product${products.length !== 1 ? "s" : ""} found`;

        if (!products.length) {

            productGrid.innerHTML = `
                <div class="empty-products">

                    <i class="fas fa-box-open"
                       style="font-size:35px;margin-bottom:12px;">
                    </i>

                    <h3>No products found</h3>

                    <p style="margin-top:5px;">
                        Try another search term or category.
                    </p>

                </div>
            `;

            return;
        }

        products.forEach(product => {

            const card =
                document.createElement("article");

            card.className = "product-card";

            const badge =
                product.badge
                    ? `
                        <span class="product-badge
                            ${product.badge === "New" ? "new" : ""}">
                            ${product.badge}
                        </span>
                    `
                    : "";

            card.innerHTML = `

                <div class="product-image">

                    ${badge}

                    <button
                        class="wishlist"
                        data-wishlist="${product.id}"
                        aria-label="Add to wishlist"
                    >
                        <i class="far fa-heart"></i>
                    </button>

                    <img
                        src="${product.image}"
                        alt="${escapeHTML(product.title)}"
                    >

                </div>

                <div class="product-body">

                    <div class="product-category">
                        ${product.category}
                    </div>

                    <h3 class="product-title">
                        ${escapeHTML(product.title)}
                    </h3>

                    <div class="rating">
                        ${"★".repeat(product.rating)}
                        ${"☆".repeat(5 - product.rating)}
                        <span>(${product.reviews})</span>
                    </div>

                    <div class="product-bottom">

                        <div>

                            <div class="price">
                                $${product.price.toLocaleString()}
                            </div>

                            ${
                                product.oldPrice
                                ? `
                                    <div class="old-price">
                                        $${product.oldPrice.toLocaleString()}
                                    </div>
                                  `
                                : ""
                            }

                        </div>

                        <button
                            class="add-cart"
                            data-id="${product.id}"
                            aria-label="Add to cart"
                        >
                            <i class="fas fa-cart-plus"></i>
                        </button>

                    </div>

                </div>
            `;

            productGrid.appendChild(card);

        });

        attachProductEvents();

    }

    /* =========================
       PRODUCT EVENTS
    ========================= */

    function attachProductEvents() {

        document
            .querySelectorAll(".add-cart")
            .forEach(button => {

                button.addEventListener("click", () => {

                    const id =
                        Number(button.dataset.id);

                    addToCart(id);

                });

            });

        document
            .querySelectorAll("[data-wishlist]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    button.classList.toggle("active");

                    const icon =
                        button.querySelector("i");

                    icon.classList.toggle("far");
                    icon.classList.toggle("fas");

                    showToast(
                        button.classList.contains("active")
                        ? "Added to wishlist"
                        : "Removed from wishlist"
                    );

                });

            });

    }

    /* =========================
       SEARCH
    ========================= */

    function filterProducts(query) {

        const q =
            String(query)
                .trim()
                .toLowerCase();

        if (!q) {

            renderProducts(PRODUCTS);

            return;

        }

        const filtered =
            PRODUCTS.filter(product => {

                const category =
                    CATEGORIES.find(
                        c => c.id === product.category
                    );

                return (
                    product.title
                        .toLowerCase()
                        .includes(q)
                    ||
                    product.category
                        .toLowerCase()
                        .includes(q)
                    ||
                    category?.name
                        .toLowerCase()
                        .includes(q)
                );

            });

        renderProducts(filtered);

    }

    document
        .getElementById("searchBtn")
        .addEventListener("click", () => {

            filterProducts(searchInput.value);

        });

    searchInput
        .addEventListener("keydown", event => {

            if (event.key === "Enter") {

                filterProducts(searchInput.value);

            }

        });

    /
