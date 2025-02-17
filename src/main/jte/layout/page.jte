@import gg.jte.Content
@param Content content

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Простой сайт</title>
    <!-- Подключение CSS-файла -->
    <style>
        /* Общие стили */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    color: #333;
}

/* Шапка */
header {
    background-color: #4CAF50;
    color: white;
    padding: 20px;
    text-align: center;
}

/* Навигационное меню */
nav {
    background-color: #333;
    color: white;
    padding: 10px;
}

nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
}

nav ul li {
    margin: 0 15px;
}

nav ul li a {
    color: white;
    text-decoration: none;
    font-weight: bold;
}

nav ul li a:hover {
    text-decoration: underline;
}

/* Контейнер для основного контента и боковой панели */
.container {
    display: flex;
    margin: 20px;
}

/* Основной контент */
main {
    flex: 3;
    background-color: white;
    padding: 20px;
    margin-right: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Боковая панель */
aside {
    flex: 1;
    background-color: white;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Подвал */
footer {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px;
    position: fixed;
    bottom: 0;
    width: 100%;
}
    </style>
</head>
<body>
<!-- Шапка -->
<header>
    <h1>My first site</h1>
</header>

<!-- Навигационное меню -->
<nav>
    <ul>
        <li><a href="/">Main</a></li>
        <li><a href="/users">Users</a></li>
        <li><a href="/contacts">Contacts</a></li>
    </ul>
</nav>

<!-- Основной контент и боковая панель -->
<div class="container">
    <!-- Основной контент -->
    <main>
        <h2>Welcome</h2>
        <div>${content}</div>
    </main>

    <!-- Боковая панель -->
    <aside>
        <h3>Новости</h3>
        <p>Сегодня солнечная погода!</p>
    </aside>
</div>

<!-- Подвал -->
<footer>
    <p>&copy; 2023 Мой простой сайт. Все права защищены.</p>
</footer>
</body>
</html>