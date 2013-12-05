{literal}
<style type="text/css">
.avatar_companion{float: left; margin-right: 5px;}
.label_companion{float: left;}
.label_companion p{ font-size: 12px; color: #4c4c4c; font-family: verdana;}
.label_companion p a{text-decoration: none; color: #4c759f;}
.flag{margin: 0 3px;}
.read_more_companion{text-align: right;}
.read_more_companion a{ color: #4c759f;  font-size: 12px;}
.details{margin: 0 3px 0 0; position: relative; top: 2px;}
.menu_companion{width: 100%; height: 25px; margin-top: 10px;}
.menu_companion .blue{float: left; width: 40%; height: 100%; background-color: #0090ff; text-align: center; padding-top: 5px; color: #fff;}
.menu_companion .green{float: left; width: 60%; height: 100%; background-color: #15b74e; text-align: center; padding-top: 5px; color: #fff;}
.menu_companion .blue a{color: #fff; text-decoration: none;}
.menu_companion .green a{color: #fff; text-decoration: none;}

.my_maps{width: 100%; height: 110px; background: #0090ff; margin: 20px 0; }
.left_header{float: left; margin: 5px 0 0 0px;}
.center_header{float: left; text-align: center;}
.right_header{float: right; margin: 5px 0 0 0px;}
.center_header h2 {margin: 0 0 0 20px; font-size: 20px; color: #fff;}

.left_foter{float: left; margin-left: 10px;}
.center_foter{float: left; margin: 5px 5px;}
.center_foter p{color: #fff; font-size: 10px; line-height: 1.3;}
.right_foter{float: left; }
.right_foter img{margin: 50px 0 0 10px; }


.reserv{width: 100%; height: 102px;}
.header_reserv{width: 100%; height: 40px; background-color: #15b74e; text-align: center;}
.header_reserv h2{color: #fff; font-size: 20px;}

.footer_reserv{width: 100%; height: 62px;}
.icon1{float: left; width: 73px; height: 60px; background-color: #15b74e; margin: 2px 2px 0 0; text-align: center;}
.icon2{float: left; width: 73px; height: 60px; background-color: #15b74e; margin: 2px 2px 0 0; text-align: center;}
.icon3{float: left; width: 74px; height: 60px; background-color: #15b74e; margin: 2px 2px 0 0; text-align: center;}
.icon4{float: left; width: 74px; height: 60px; background-color: #15b74e; margin: 2px 0 0 0; text-align: center;}
.footer_reserv div img{margin-top: 15px;}
</style>

{/literal}

<div class="block">
    <header class="block-header sep">
        <h3>{$sBlockTitle}</h3>
    </header>
    <div class="block-content">
        <div class="item_companion">
            <div class="avatar_companion">
                <a href="#"><img src="{cfg name='path.static.skin'}/images/avatar_sidebar.png"></a>
            </div>
            <div class="label_companion">
                <p><a href="#">Иван Иванов </a> ищет попутчика в:</p>
                <p><img src="{cfg name='path.static.skin'}/images/tay.png" class="flag">Тайланд  <img src="{cfg name='path.static.skin'}/images/viet.png"  class="flag">Вьетнам  <img src="{cfg name='path.static.skin'}/images/lao.png"  class="flag">Лаос ...</p>
                <p>путешествие, автостоп</p>
            </div>
        </div>
        <div style="clear: left"></div>
        <div class="read_more_companion">
            <a href="#"><img src="{cfg name='path.static.skin'}/images/details.png" class="details">узнать подробности</a>
        </div>
        <div class="item_companion">
            <div class="avatar_companion">
                <a href="#"><img src="{cfg name='path.static.skin'}/images/user-p.png"></a>
            </div>
            <div class="label_companion">
                <p><a href="#">Inga </a> ищет попутчика в:</p>
                <p><img src="{cfg name='path.static.skin'}/images/tur.png" class="flag">Турция</p>  
                <p>тур - до 14 дней</p>
            </div>
        </div>
        <div style="clear: left"></div>
        <div class="read_more_companion">
            <a href="#"><img src="{cfg name='path.static.skin'}/images/details.png" class="details">узнать подробности</a>
        </div>
        <div class="item_companion">
            <div class="avatar_companion">
                <a href="#"><img src="{cfg name='path.static.skin'}/images/user-p.png"></a>
            </div>
            <div class="label_companion">
                <p><a href="#">Nord Strim </a> ищет попутчика в:</p>
                <p><img src="{cfg name='path.static.skin'}/images/usa.png" class="flag">США  <img src="{cfg name='path.static.skin'}/images/can.png"  class="flag">Канада  </p>
                <p>путешествие, автостоп</p>
            </div>
        </div>
        <div style="clear: left"></div>
        <div class="read_more_companion">
            <a href="#"><img src="{cfg name='path.static.skin'}/images/details.png" class="details">узнать подробности</a>
        </div>
    </div>
        <div class="menu_companion">
            <div class="blue">
                <a href="#">искать попутчика</a>
            </div>
            <div class="green">
                <a href="#">разместить предложение</a>
            </div>
            <div style="clear: left"></div>
        </div>
        {*     Ваша карта    *}
        <div class="my_maps">
            <div class="header_maps">
                <div class="left_header">
                    <img src="{cfg name='path.static.skin'}/images/your-bach2.png">
                </div>
                <div class="center_header">
                    <h2>Ваша карта</h2>
                </div>
                <div class="right_header">
                    <img src="{cfg name='path.static.skin'}/images/your-bach2.png">
                </div>
                <div style="clear: left"></div>
            </div>
            <div class="foter_maps">
                <div class="left_foter">
                    <img src="{cfg name='path.static.skin'}/images/your-map.png">
                </div>
                <div class="center_foter">
                    <p> - Отмечайте места где вы были</p>
                    <p> - Планируйте новые маршруты</p>
                    <p> - Делитесь с друзьями</p>
                </div>
                <div class="right_foter">
                    <a href="#"><img src="{cfg name='path.static.skin'}/images/your-a.png" class="img_footer"></a>
                </div>
            </div>
        </div>
        {*     Бронирование    *}
                <div class="reserv">
                    <div class="header_reserv">
                        <h2>Бронирование</h2>
                    </div>
                    <div class="footer_reserv">
                        <div class="icon1">
                            <a href="#"><img src="{cfg name='path.static.skin'}/images/book1.png" class="img_footer"></a>
                        </div>
                        <div class="icon2">
                            <a href="#"><img src="{cfg name='path.static.skin'}/images/book2.png" class="img_footer"></a>
                        </div>
                        <div class="icon3">
                            <a href="#"><img src="{cfg name='path.static.skin'}/images/book3.png" class="img_footer"></a>
                        </div>
                        <div class="icon4">
                            <a href="#"><img src="{cfg name='path.static.skin'}/images/book4.png" class="img_footer"></a>
                        </div>
                        <div style="clear: left"></div>
                    </div>
                </div>
</div>