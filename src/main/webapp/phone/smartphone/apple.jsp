<%--
  Created by IntelliJ IDEA.
  User: m.ulvi
  Date: 25-Jul-21
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:include page="${pageContext.request.contextPath}/home.jsp"/>--%>
<html>
<head>
    <title>Apple</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous">
    </script>
</head>
<body>

<div class="navbar">
    <button type="submit">Buttonn</button>
    <div class="homek">
        <a href="/home.jsp"><img src="${pageContext.request.contextPath}/images/logo.png"></a>
    </div>
    <nav>
        <ul>
            <li>
                <a href="/home.jsp">Home</a>
            </li>
            <li>
                <a href="/about">About</a>
            </li>
            <li>
                <a href="/basket.jsp">Basket </a>
            </li>
            <li>
                <a href="/login.jsp">Log in</a>
            </li>
            <li>
                <a href="/contact">Contact</a>
            </li>
        </ul>
    </nav>
</div>
<hr>
<br>

<div class="container-md">
    <div class="row">
        <div class="col">
            <ul class="dropdown">
                <li class="telefon">
                    <!-- <svg xmlns="http://www.w3.org/2000/svg " width="16 " height="16 " fill="currentColor " class="bi bi-bag-dash " viewBox="0 0 16 16 ">
                    <path fill-rule="evenodd " d="M5.5 10a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1H6a.5.5 0 0 1-.5-.5z "/>
                    <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z "/>
                  </svg> -->
                    <a href="#">
                        <img style="width:22px;max-height:30px" class="lazy loaded"
                             data-src="https://kontakt.az/wp-content/uploads/2021/03/telefon_planshet.png"
                             src="https://kontakt.az/wp-content/uploads/2021/03/telefon_planshet.png"
                             data-was-processed="true">
                        <img class="active lazy" style="display:none;width:22px;max-height:30px"
                             data-src="https://kontakt.az/wp-content/uploads/2021/03/telefon_planshet.png">
                        <span>Telefonlar</span>
                    </a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="#">Smartfonlar</a>
                            <ul class="dropdown-content-1">
                                <li><a href="phone/smartphone/apple.jsp">Apple</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Xiaomi</a></li>
                                <li><a href="#">Oneplus</a></li>
                                <li><a href="#">Nokia</a></li>
                                <li><a href="#">BenQ</a></li>
                                <li><a href="#">Oppo</a></li>
                            </ul>
                            <a href="#">Planşetlər</a>
                            <ul class="dropdown-content-1">
                                <li><a href="#">Gedebey</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Xiaomi</a></li>
                                <li><a href="#">Oneplus</a></li>
                                <li><a href="#">Nokia</a></li>
                                <li><a href="#">BenQ</a></li>
                                <li><a href="#">Oppo</a></li>
                            </ul>
                            <a href="#">Düyməli telefonlar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Nokia</a>
                                </li>
                                <li>
                                    <a href="#">BQ</a>
                                </li>
                            </ul>
                            <a href="#">Ev və ofis telefonları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Panasonic</a>
                                </li>
                                <li>
                                    <a href="#">Gigaset</a>
                                </li>
                            </ul>
                            <a href="#">Rəsm üçün planşet</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Xiaomi</a>
                                </li>
                                <li>
                                    <a href="#">Wacom</a>
                                </li>
                            </ul>
                            <a href="#">Aksessuar</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown">
                <li class="telefon">
                    <a href="#">Saat və qolbaqlar</a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="#">Smart saatlar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Apple</a>
                                </li>
                                <li>
                                    <a href="#">Huawei</a>
                                </li>
                                <li>
                                    <a href="#">MyKoronoz</a>
                                </li>
                                <li>
                                    <a href="#">Samsung</a>
                                </li>
                                <li>
                                    <a href="#">Xiaomi</a>
                                </li>
                            </ul>
                            <a href="#">Smart qolbaqlar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Samsung</a>
                                </li>
                                <li>
                                    <a href="#">Huawei</a>
                                </li>
                                <li>
                                    <a href="#">Xiaomi</a>
                                </li>
                                <li>
                                    <a href="#">MyKoronoz</a>
                                </li>
                            </ul>
                            <a href="#">Saatlar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Casio</a>
                                </li>
                                <li>
                                    <a href="#">Edifice</a>
                                </li>
                                <li>
                                    <a href="#">G-shock</a>
                                </li>
                                <li>
                                    <a href="#">Baby-G</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown">
                <li class="telefon">
                    <a href="#"> TV, audio video</a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="#">Televizorlar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Curved</a>
                                </li>
                                <li>
                                    <a href="#">Android TV</a>
                                </li>
                                <li>
                                    <a href="#">Neo QLED</a>
                                </li>
                                <li>
                                    <a href="#">Smart TV</a>
                                </li>
                                <li>
                                    <a href="#">4K</a>
                                </li>
                                <li>
                                    <a href="#">QLED</a>
                                </li>
                                <li>
                                    <a href="#">OLED</a>
                                </li>
                            </ul>
                            <a href="#">Proyektor və ekran</a>
                            <a href="#">Audio və video</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Kinoteatr</a>
                                </li>
                                <li>
                                    <a href="#">Smart TV box</a>
                                </li>
                                <li>
                                    <a href="#">Soudnbar</a>
                                </li>
                                <li>
                                    <a href="#">Portativ akustika</a>
                                </li>
                                <li>
                                    <a href="#">Mikrofon</a>
                                </li>
                                <li>
                                    <a href="#">Musiqi mərkəzi</a>
                                </li>
                            </ul>
                            <a href="#">Aksessuarlar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Çərçivə</a>
                                </li>
                                <li>
                                    <a href="#">HDMI naqil</a>
                                </li>
                                <li>
                                    <a href="#">Asqı aparatları</a>
                                </li>
                                <li>
                                    <a href="#">Stabilizator</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown">
                <!-- <button class="dropbtn">Kompüter və aksessuarlar</button> -->
                <li class="telefon">
                    <button class="dropbtn"><a href="#">Kompüter və aksessuarlar</a></button>
                    <ul class="dropdown-content">
                        <li>
                            <a href="#">Apple</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Macbook</a>
                                </li>
                                <li>
                                    <a href="#">iMac</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Noutbuklar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Apple noutbukları</a>
                                </li>
                                <li>
                                    <a href="#">Premium noutbuklar</a>
                                </li>
                                <li>
                                    <a href="#">Oyun noutbukları</a>
                                </li>
                                <li>
                                    <a href="#">Ev və iş üçün noutbuklar</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Monitorlar</a>
                        </li>
                        <li>
                            <a href="#">Sistem blokları</a>
                        </li>
                        <li>
                            <a href="#">Monoblok</a>
                        </li>
                        <li>
                            <a href="#">Printerler</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Lazer və şırnaqlı printerlər</a>
                                </li>
                                <li>
                                    <a href="#">İri formatlı printerlər</a>
                                </li>
                                <li>
                                    <a href="#">Çek aparatları</a>
                                </li>
                                <li>
                                    <a href="#">Skanerlər</a>
                                </li>
                                <li>
                                    <a href="#">Etiket printerləri</a>
                                </li>
                                <li>
                                    <a href="#">Matris printerləri</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Wifi və şəbəkə avadanlıqları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Router</a>
                                </li>
                                <li>
                                    <a href="#">Modem</a>
                                </li>
                                <li>
                                    <a href="#">Gücləndirici</a>
                                </li>
                                <li>
                                    <a href="#">USB Wi-Fi adapter</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Yaddaş</a>
                            <ul class="#">
                                <li>
                                    <a href="#">Xarici toplayıcılar (HDD/SSD)</a>
                                </li>
                                <li>
                                    <a href="#">USB toplayıcı</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">Aksessuarlar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Ötürücülər</a>
                                </li>
                                <li>
                                    <a href="#">USB Hub</a>
                                </li>
                                <li>
                                    <a href="#">Mouse</a>
                                </li>
                                <li>
                                    <a href="#">Klaviatura</a>
                                </li>
                                <li>
                                    <a href="#">Noutbuk üçün çantalar</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown">
                <li class="telefon">
                    <a href="#">Foto və video</a>
                    <ul class="dropdown-content">
                        <li>
                            <a href="#">Ani çap aparatları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#"></a>
                                </li>
                            </ul>
                            <a href="#">Peşəkar fotoaparatlar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#"></a>
                                </li>
                            </ul>
                            <a href="#">Foto Aksessuar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#">Fotoaparatlar üçün çantalar</a>
                                </li>
                                <li>
                                    <a href="#">Batareyalar</a>
                                </li>
                                <li>
                                    <a href="#">Ştativlər</a>
                                </li>
                            </ul>
                            <a href="#">Videokameralar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#"></a>
                                </li>
                            </ul>
                            <a href="#">Təhlükəsizlik Kameraları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="№"></a>
                                </li>
                            </ul>
                            <a href="#">Obyektiv</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="#"></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown ">
                <li class="telefon">
                    <a href="#">Hobbi və əyləncə</a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="№">Musiqi alətləri və avadanlıqları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">Studiya monitorları</a>
                                </li>
                                <li>
                                    <a href="">Midi klaviaturaları</a>
                                </li>
                                <li>
                                    <a href="">Səs interfeysi</a>
                                </li>
                                <li>
                                    <a href="">DJ-kontroller</a>
                                </li>
                            </ul>
                            <a href="">İdman alətləri</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">Universal trenajorlar</a>
                                </li>
                                <li>
                                    <a href="">Qaçış trenajorları</a>
                                </li>
                                <li>
                                    <a href="">Velotrenajorlar</a>
                                </li>
                            </ul>
                            <a href="">Nəqliyyat</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">Elektrosamokat</a>
                                </li>
                                <li>
                                    <a href="">Velosipedlər</a>
                                </li>
                                <li>
                                    <a href="">Samokatlar</a>
                                </li>
                            </ul>
                            <a href="">Playstation</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">PlayStation</a>
                                </li>
                                <li>
                                    <a href="">Joystick və aksesuarlar</a>
                                </li>
                                <li>
                                    <a href="">Oyunlar</a>
                                </li>
                            </ul>
                            <a href="">Oyun konsolları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                            <a href="">Aksessuarlar</a>
                            <ul>
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown">
                <li class="telefon">
                    <a href="">Məişət texnikası</a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="№">Kondisioner</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                            <a href="">Böyük məişət texnikası</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                            <a href="">İqlim texnikası</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">Kondisioner</a>
                                </li>
                            </ul>
                            <a href="">Ev üçün kiçik məişət texnikası</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">təmizlik</a>
                                </li>
                            </ul>
                            <a href="">Peşəkar təmizlik</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown ">
                <li class="telefon">
                    <a href="">Gözəllik və sağlamlıq</a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="">Fen</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">Sac feni</a>
                                </li>
                            </ul>
                            <a href="">Multistayler</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                            <a href="">Epilyator</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown ">
                <li class="telefon">
                    <a href="">Alətlər və avtomobil məhsulları</a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="">Avtomobil məhsulları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">Motor yağı</a>
                                </li>
                            </ul>
                            <a href="">Elektrik alətlər</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                            <a href="">Generatorlar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown ">
                <li class="telefon">
                    <a href="">Ev və bağ</a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="">Bağ texnikası</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">Ot biçən</a>
                                </li>
                            </ul>
                            <a href="">Nərdivanlar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                            <a href="">Lampalar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                            <a href="">Fənərlər</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">Əl fənəri</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown ">
                <li class="telefon">
                    <a href="">Mebel və tekstil</a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="">Mebel</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">Bağ mebeli</a>
                                </li>
                            </ul>
                            <a href="">Ev tekstili</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                            <a href="">Xalçalar</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">İran Xalçaları</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown ">
                <li class="telefon">
                    <a href="">Ofis avadanlıqları</a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="">Məktəb ləvazimatları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">Çanatalar</a>
                                </li>
                            </ul>
                            <a href="">Seyflər</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                            <a href="">Şrederlər</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="dropdown ">
                <li class="telefon">
                    <a href="">Uşaq aləmi</a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="">Uşaq çantaları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                            <a href="">Uşaq arabaları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">Arabalar</a>
                                </li>
                            </ul>
                            <a href="">Avtomobil oturacaqları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href=""></a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                </li>
            </ul>
            <ul class="dropdown ">
                <li class="telefon">
                    <a href="">Hədiyyə və bonus kartları</a>
                    <ul>
                        <li class="dropdown-content">
                            <a href="">Hədiyyə kartları</a>
                            <ul class="dropdown-content-1">
                                <li>
                                    <a href="">250 AZN-lik</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="col">
            <div class="card">
                <form action="/add-to-basket">
                    <img src="/images/buy-1.jpg">
                    <h1>Apple 12</h1>
                    <p class="price">$849.99</p>
                    <p>It is a leap year</p>
                    <input type="hidden" name="categoryID" value="1">
                    <input type="hidden" name="subcategoryID" value="1">
                    <input type="hidden" name="brandID" value="2">
                    <input type="hidden" name="desc" value="Apple 12">
                    <input type="submit" value="Add to cart" class="input">
                </form>

                <form action="/add-to-basket">
                    <img src="/images/buy-2.jpg"
                         alt="Apple 12">
                    <h1>Apple 12</h1>
                    <p class="price">$849.99</p>
                    <p>It is a leap year</p>
                    <input type="hidden" name="categoryID" value="1">
                    <input type="hidden" name="subcategoryID" value="1">
                    <input type="hidden" name="brandID" value="2">
                    <input type="hidden" name="desc" value="Apple 12">
                    <input type="submit" value="Add to cart" class="input">
                </form>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <form action="/add-to-basket">
                    <img src="/images/buy-3.jpg"
                         alt="Apple 12">
                    <h1>Apple 12</h1>
                    <p class="price">$849.99</p>
                    <p>It is a leap year</p>
                    <input type="hidden" name="categoryID" value="1">
                    <input type="hidden" name="subcategoryID" value="1">
                    <input type="hidden" name="brandID" value="2">
                    <input type="hidden" name="desc" value="Apple 12">
                    <input type="submit" value="Add to cart" class="input">
                </form>
                <form action="/add-to-basket">
                    <img src="/images/buy-1.jpg"
                         alt="Apple 12">
                    <h1>Apple 12</h1>
                    <p class="price">$849.99</p>
                    <p>It is a leap year</p>
                    <input type="hidden" name="categoryID" value="1">
                    <input type="hidden" name="subcategoryID" value="1">
                    <input type="hidden" name="brandID" value="2">
                    <input type="hidden" name="desc" value="Apple 12">
                    <input type="submit" value="Add to cart" class="input">
                </form>
                <form action="/add-to-basket">
                    <img src="/images/buy-1.jpg"
                         alt="Apple 12">
                    <h1>Apple 12</h1>
                    <p class="price">$849.99</p>
                    <p>It is a leap year</p>
                    <input type="hidden" name="categoryID" value="1">
                    <input type="hidden" name="subcategoryID" value="1">
                    <input type="hidden" name="brandID" value="2">
                    <input type="hidden" name="desc" value="Apple 12">
                    <input type="submit" value="Add to cart" class="input">
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>
