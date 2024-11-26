<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>中国传统文化遗产</title>
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css">
    <style>
        body {
            font-family: 'Microsoft YaHei', Arial, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            background-color: #f9f9f9;
        }
        header {
            background: #9B2A2D;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 2px 10px rgba(0,0,0,0.2);
            position: relative; /* 允许绝对定位的子元素 */
        }
        nav {
            margin: 15px 0;
        }
        nav a {
            color: #fff;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }
        nav a:hover {
            color: #f2b600;
        }
        /* 登录按钮样式 */
        .login-icon {
            position: absolute;
            top: 20px;
            right: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            cursor: pointer; /* 鼠标悬停指针样式 */
            color: #fff;
        }
        .login-icon img {
            width: 40px; /* 图标大小 */
            height: 40px; /* 图标大小 */
            border-radius: 50%; /* 圆形图标 */
            background-color: #f2b600; /* 图标背景色 */
            padding: 3px; /* 内边距 */
        }
        .login-text {
            margin-top: 5px; /* 图标与文本之间的间距 */
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        .hero-image {
            height: 450px;
            background-size: cover;
            background-position: center;
            position: relative;
            color: white;
            margin-top: 30px; /* 图片下移 */
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.7);
        }
        .hero-image h1 {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.7);
            font-size: 2.5em;
            z-index: 10; /* 确保文字在轮播图上 */
        }
        .swiper {
          width: 90%;
          height: 450px;
        }

        .swiper-slide {
          text-align: center;
          font-size: 18px;
          background: #fff;
          display: flex;
          justify-content: center;
          align-items: center;
        }

        .swiper-slide img {
          display: flex;
          width: 90%;
          height: 450px;
          object-fit: cover;
        }
        section {
            margin: 40px 0;
            padding: 20px;
            background: #fff;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        h2 {
            border-bottom: 2px solid #9B2A2D;
            padding-bottom: 10px;
            color: #9B2A2D;
        }
        .heritage-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            margin: 20px 0;
        }
        .heritage-item {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .heritage-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
        .heritage-item img {
            max-width: 100%;
            height: 200px;
            border-radius: 5px;
        }
        footer {
            background: #9B2A2D;
            color: #fff;
            text-align: center;
            padding: 15px 0;
            margin-top: 20px;
        }
        .footer-icons img {
            width: 24px;
            height: 24px;
            margin: 0 10px;
        }
    </style>
</head>
<body>

<header>
    <h1>中国传统文化遗产</h1>
    <nav>
        <a href="#about">关于我们</a>
        <a href="#heritages">文化遗产</a>
        <a href="#contact">联系我们</a>
    </nav>
    <!-- 登录按钮 -->
    <div class="login-icon" id="loginIcon" onclick="redirectToLogin()">
        <img src="images/user_icon.png" alt="登录图标"> <!-- 这里需要将图标路径更改为实际路径 -->
        <div class="login-text" id="loginText">登录</div>
    </div>
</header>

<div class="hero-image">
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="images/background_1.png" alt="slide1"></div>
            <div class="swiper-slide"><img src="images/background_2.jpg" alt="slide2"></div>
            <div class="swiper-slide"><img src="images/background_3.jpg" alt="slide3"></div>
            <div class="swiper-slide"><img src="images/background_4.jpg" alt="slide4"></div>
            <div class="swiper-slide"><img src="images/background_5.jpg" alt="slide5"></div>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
    </div>
    <h1>传承中华文明，探索文化遗产</h1>
</div>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        loop: true,
        autoplay: {
          delay: 1800,
          disableOnInteraction: false,
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
    });
</script>

<div class="container">
    <section id="about">
        <h2>关于我们</h2>
        <p>我们致力于保护和推广中国传统文化遗产，让更多的人了解和珍惜这些珍贵的文化。我们的使命是通过教育与推广，提升公众的历史意识，传承中华文明。</p>
    </section>

    <section id="heritages">
        <h2>文化遗产展示</h2>
        <div class="heritage-list">
            <div class="heritage-item">
                <h3>长城</h3>
                <p>长城是中国古代的军事防御工程，象征着中华民族的伟大精神。</p>
                <img src="images/great-wall.jpg" alt="长城">
            </div>
            <div class="heritage-item">
                <h3>故宫</h3>
                <p>故宫是中国明清两代的皇宫，拥有丰富的历史和文化。</p>
                <img src="images/forbidden-city.jpg" alt="故宫">
            </div>
            <div class="heritage-item">
                <h3>兵马俑</h3>
                <p>兵马俑是秦始皇陵的陪葬品，体现了古代中国的高超艺术水平。</p>
                <img src="images/terracotta-warriors.jpg" alt="兵马俑">
            </div>
            <div class="heritage-item">
                <h3>苏州园林</h3>
                <p>苏州园林是中国古典园林的代表，以其精致的布局和独特的景观而闻名。</p>
                <img src="images/suzhou-garden.jpg" alt="苏州园林">
            </div>
            <div class="heritage-item">
                <h3>京剧</h3>
                <p>京剧是中国的传统戏剧，融合了唱、念、做、打的艺术形式，深受喜爱。</p>
                <img src="images/beijing-opera.jpg" alt="京剧">
            </div>
            <div class="heritage-item">
                <h3>古琴</h3>
                <p>古琴是中国传统的乐器之一，体现了深厚的文化底蕴和艺术价值。</p>
                <img src="images/guqin.jpg" alt="古琴">
            </div>
            <div class="heritage-item">
                <h3>茶文化</h3>
                <p>茶文化是中国的传统文化之一，涵盖了茶的种植、制作与品饮等丰富内容。</p>
                <img src="images/tea-culture.jpg" alt="茶文化">
            </div>
            <div class="heritage-item">
                <h3>打铁花</h3>
                <p>打铁花是中国传统民间艺术，通过锻造铁器发出火花，形成美丽的火花艺术。</p>
                <img src="images/datiehua.jpg" alt="打铁花">
            </div>

        </div>

    </section>

    <section id="contact">
        <h2>联系我们</h2>
        <p>如有任何疑问，请通过以下方式与我们联系：</p>
        <p>Email: example@example.com</p>
        <p>电话: 123-456-7890</p>
    </section>
</div>

<footer>
    <p>&copy; 2024 中国传统文化遗产. 保留所有权利.</p>
    <div class="footer-icons">
        <img src="images/facebook-icon.png" alt="Facebook">
        <img src="images/twitter-icon.png" alt="Twitter">
        <img src="images/instagram-icon.png" alt="Instagram">
    </div>
</footer>

<script>
    // 这个函数用于重定向到登录页面
    function redirectToLogin() {
        window.location.href = 'login.jsp'; // 登录页面
    }

    // 登录后调用此函数进行更新
    function updateToUserProfile() {
        const loginIcon = document.getElementById('loginIcon');
        const loginText = document.getElementById('loginText');

        // 更新图标点击事件和文本
        loginIcon.setAttribute('onclick', 'redirectToProfile()');
        loginText.innerText = '个人中心';
    }

    // 个人中心重定向
    function redirectToProfile() {
        window.location.href = 'profile.jsp'; // 个人中心页面
    }
</script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        // 检查用户是否已登录
        const user = <%= request.getSession().getAttribute("user") != null ? "'"+ request.getSession().getAttribute("user") +"'" : "null" %>;
        if (user) {
            updateToUserProfile(); // 更新图标和文本
        }
    });
</script>


</body>
</html>
